using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class Monkey : MonoBehaviour
{
    public GameObject bananaPrefab; // �ٳ��� ������
    public Transform throwPoint; // �ٳ����� ������ ��ġ
    public float throwCooldown = 1.4f; // ������ ��Ÿ��
    public float throwRange = 5f; // �ٳ��� ���� �� �ִ� �ִ� ��Ÿ�
    private float lastThrowTime = 0; // ���������� �ٳ����� ���� �ð� ���
    public float bananaSpeed = 15f; // �ٳ����� ���ư��� �ӵ�
    public float bananaSpinSpeed = 500f; // �ٳ����� ȸ�� �ӵ�

    public int maxHP = 100; // �������� �ִ� HP
    private int currentHP; // ���� HP
    public HealthBar healthBar; // ü�� ��
    private NavMeshAgent Agent; // NavMeshAgent ������Ʈ ���� (�̵��� ���� ������Ʈ)

    private Animator animator; // Animator ������Ʈ ����
    private Transform target; // ������ ��ǥ

    public AudioSource AudioSource;

    void Start()
    {
        animator = GetComponent<Animator>();
        currentHP = maxHP;
        healthBar.SetMaxHealth(maxHP);
        Agent = GetComponent<NavMeshAgent>();

        
    }

    void Update()
    {
        FindClosestTarget(); // ���� ����� ���� ã��
        LookAtTarget();
        // ��ǥ�� �����ϰ� ��Ÿ� �ۿ� ������ ��ǥ ������ �̵�
        if (target != null && !IsTargetInRange())
        {
            MoveTowardsTarget();
        }

        // ��Ÿ���� ���� ��, ��ǥ�� ��Ÿ� ���� ������ �ٳ��� ������
        else if (Time.time > lastThrowTime + throwCooldown)
        {
            if (IsTargetInRange())
            {
                ThrowBanana();
                lastThrowTime = Time.time; // ������ ���� �ð� ������Ʈ
            }
        }
    }

    // ��ǥ ������ �̵��ϴ� �Լ�
    void MoveTowardsTarget()
    {
        if (target != null)
        {
            Agent.SetDestination(target.position); // ��ǥ ��ġ�� NavMeshAgent ����
            animator.SetBool("Walk", true); // �ȱ� �ִϸ��̼� ����
        }
    }

    // �ٳ����� ������ �Լ�
    void ThrowBanana()
    {
        // �ٳ��� ���� �� ������
        GameObject banana = Instantiate(bananaPrefab, throwPoint.position, throwPoint.rotation);
        Rigidbody rb = banana.GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.velocity = throwPoint.forward * bananaSpeed; // �ٳ����� ������ ����
            rb.AddTorque(transform.right * bananaSpinSpeed); // �ٳ����� ���ۺ��� ���� ��
            AudioSource.Play();
        }
        animator.SetTrigger("Clicked"); // ���� �ִϸ��̼� ����
    }

    // ��ǥ�� ��Ÿ� ���� �ִ��� Ȯ���ϴ� �Լ�
    bool IsTargetInRange()
    {
        if (target == null)
        {
            return false; // ��ǥ�� ������ false ��ȯ
        }

        float distanceToTarget = Vector3.Distance(transform.position, target.position); // ��ǥ���� �Ÿ� ���
        if (distanceToTarget <= throwRange)
        {
            animator.SetBool("Walk", false); // ��Ÿ� ���� ���������� �ȱ� �ִϸ��̼� ����
        }
        return distanceToTarget <= throwRange; // ��Ÿ� ���� �ִ��� ���� ��ȯ
    }
    // ��ǥ�� �ٶ󺸴� �Լ�
    void LookAtTarget()
    {
        if (target == null)
        {
            animator.SetTrigger("Spin");
            return; // Ÿ���� ������ �Լ� ����
        }
        Vector3 direction = (target.position - transform.position).normalized; // ��ǥ�� ���ϴ� ���� ���
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z)); // ��ǥ �������� ȸ�� ���� (y�� ȸ���� ����)
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f); // �ε巴�� ȸ��
    }

        // ���� ����� ���� ã�� �Լ�
        void FindClosestTarget()
    {
        GameObject[] enemies = GameObject.FindGameObjectsWithTag("Enemy"); // 'Enemy' �±׸� ���� ��� �� ã��
        float closestDistance = Mathf.Infinity; // ���� ����� �Ÿ� �ʱ�ȭ (���Ѵ�)
        Transform closestEnemy = null; // ���� ����� �� �ʱ�ȭ

        foreach (GameObject enemy in enemies)
        {
            float distanceToEnemy = Vector3.Distance(transform.position, enemy.transform.position); // �� ������ �Ÿ� ���
            if (distanceToEnemy < closestDistance)
            {
                closestDistance = distanceToEnemy; // ���� ����� �Ÿ� ������Ʈ
                closestEnemy = enemy.transform; // ���� ����� �� ������Ʈ
            }
        }

        target = closestEnemy; // ���� ����� ���� ��ǥ�� ����
    }

    // ���ظ� �Դ� �Լ�
    public void TakeDamage(int damage)
    {
        currentHP -= damage; // ���� HP���� ���ط���ŭ ����
        currentHP = Mathf.Max(currentHP, 0);
        Debug.Log("�����̰� " + damage + "�� ���ظ� �Ծ����ϴ�. ���� HP: " + currentHP);
        animator.SetTrigger("Hit"); // ���ظ� �Ծ��� �� Hit �ִϸ��̼� ����
        healthBar.SetHealth(currentHP);
        if (currentHP <= 0)
        {
            Die(); // HP�� 0 ���ϰ� �Ǹ� ��� ó��
        }
    }
    public void RestoreHealth(int amount)
    {
        currentHP += amount; // ü�� ����
        currentHP = Mathf.Min(currentHP, maxHP); // �ִ� ü���� �ʰ����� �ʵ��� ����
    }
    // ��� ó�� �Լ�
    void Die()
    {
        Debug.Log("�����̰� ���������ϴ�!");
        animator.SetTrigger("Death"); // ��� �ִϸ��̼� ����
        StartCoroutine(RemoveAfterDeathAnimation()); // ��� �ִϸ��̼� �� ������Ʈ ����
        healthBar.gameObject.SetActive(false); // ü�� �� ��Ȱ��ȭ
    }

    IEnumerator RemoveAfterDeathAnimation()
    {
        yield return new WaitForSeconds(animator.GetCurrentAnimatorStateInfo(0).length); // �ִϸ��̼� ���̸�ŭ ���
        Destroy(gameObject); // �ִϸ��̼��� ���� �� ������Ʈ ����
    }
}
