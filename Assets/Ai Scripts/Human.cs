using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Human : MonoBehaviour
{
    public int maxHP = 100; // �ΰ� ĳ������ �ִ� HP
    private int currentHP; // ���� HP
    public HealthBar healthBar; // ü�� ��
    private NavMeshAgent navAgent; // NavMeshAgent ������Ʈ ���� (�̵��� ���� ������Ʈ)
    private Transform target; // �߰��� ��ǥ

    public GameObject axe; // ���� ������Ʈ
    private Collider axeCollider; // ������ �ݶ��̴�

    private Animator animator; // Animator ������Ʈ ����
    public float attackRange = 2f; // ���� �����Ÿ�
    public float attackCooldown = 1.5f; // ���� ��Ÿ��
    private float lastAttackTime = 0f; // ���������� ������ �ð� ���
    private bool isHit = false; // Hit �ִϸ��̼� ������ ����
    void Start()
    {
        currentHP = maxHP; // ������ �� ���� HP�� �ִ� HP�� ����
        healthBar.SetMaxHealth(maxHP);
        navAgent = GetComponent<NavMeshAgent>(); // NavMeshAgent ������Ʈ ��������
        animator = GetComponent<Animator>(); // Animator ������Ʈ ��������
        axeCollider = axe.GetComponent<Collider>(); // ������ �ݶ��̴� ��������
        axeCollider.enabled = false; // ���� �ݶ��̴� �ʱ⿡�� ��Ȱ��ȭ
    }

    void Update()
    {
        FindClosestAnimal(); // ���� ����� Animal �±׸� ���� ��ǥ�� ã��

        // ��ǥ�� �����ϰ� ��Ÿ� ���� �ִٸ� ���� ����
        if (target != null)
        {
            if (isHit) return; // Hit �ִϸ��̼� ���̶�� ������Ʈ ����
            LookAtTarget();
            float distanceToTarget = Vector3.Distance(transform.position, target.position);
            if (distanceToTarget > attackRange)
            {
                ChaseTarget(); // ��ǥ�� �����Ÿ� �ۿ� ������ �߰�
            }
            else if (Time.time > lastAttackTime + attackCooldown)
            {
                AttackTarget(); // ��ǥ�� �����Ÿ� ���� �ְ� ��Ÿ���� �������� ����
                lastAttackTime = Time.time; // ������ ���� �ð� ������Ʈ
            }
        }
    }
    void LookAtTarget()
    {
        if (target == null) return;
        Vector3 direction = (target.position - transform.position).normalized;
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z));
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f);
    }
    // ��ǥ�� �߰��ϴ� �Լ�
    void ChaseTarget()
    {
        navAgent.SetDestination(target.position); // ��ǥ ��ġ�� NavMeshAgent ����
        animator.SetBool("Walk", true); // �ȱ� �ִϸ��̼� ����
    }

    // ��ǥ�� �����ϴ� �Լ�
    void AttackTarget()
    {
        navAgent.ResetPath(); // ���� �߿��� �̵� ����
        animator.SetBool("Walk", false); // �ȱ� �ִϸ��̼� ����
        animator.SetTrigger("Attack"); // ���� �ִϸ��̼� ����
    }

    // ���� �ִϸ��̼� �� ���� �ݶ��̴� Ȱ��ȭ (�ִϸ��̼� �̺�Ʈ�� ȣ��)
    public void EnableAxeCollider()
    {
        axeCollider.enabled = true; // ������ �ݶ��̴� Ȱ��ȭ
        Debug.Log("���� �ݶ��̴� Ȱ��ȭ��");
    }

    // ���� �ִϸ��̼��� ���� �� ���� �ݶ��̴� ��Ȱ��ȭ (�ִϸ��̼� �̺�Ʈ�� ȣ��)
    public void DisableAxeCollider()
    {
        axeCollider.enabled = false; // ������ �ݶ��̴� ��Ȱ��ȭ
        Debug.Log("���� �ݶ��̴� ��Ȱ��ȭ��");
    }

    // ���� �ݶ��̴��� ���� �浹���� �� ȣ��Ǵ� �Լ�
    private void OnTriggerEnter(Collider other)
    {
        //   if (other == axeCollider && other.CompareTag("Animal"))
        {
            var animal = other.GetComponent<Monkey>(); // ���� Animal ��ũ��Ʈ�� �������� Ȯ��
            if (animal != null)
            {
                animal.TakeDamage(25); // ������ ������ �ֱ�
                Debug.Log("���� ���� ����: ������ 25�� �������� ����!");
            }
        }
        {
            var animal = other.GetComponent<Rat>();
            if (animal != null)
            {
                animal.TakeDamage(25); // ������ ������ �ֱ�
                Debug.Log("���� ���� ����: ������ 25�� �������� ����!");
            }
        }
        {

            var animal = other.GetComponent<Deer>();
            if (animal != null)
            {
                animal.TakeDamage(25); // ������ ������ �ֱ�
                Debug.Log("���� ���� ����: ������ 25�� �������� ����!");
            }
        }
        
    }

    // ���� ����� Animal �±׸� ���� ���� ã�� �Լ�
    void FindClosestAnimal()
    {
        GameObject[] animals = GameObject.FindGameObjectsWithTag("Animal"); // 'Animal' �±׸� ���� ��� �� ã��
        float closestDistance = Mathf.Infinity; // ���� ����� �Ÿ� �ʱ�ȭ (���Ѵ�)
        Transform closestAnimal = null; // ���� ����� �� �ʱ�ȭ

        foreach (GameObject animal in animals)
        {
            float distanceToAnimal = Vector3.Distance(transform.position, animal.transform.position); // �� ������ �Ÿ� ���
            if (distanceToAnimal < closestDistance)
            {
                closestDistance = distanceToAnimal; // ���� ����� �Ÿ� ������Ʈ
                closestAnimal = animal.transform; // ���� ����� �� ������Ʈ
            }
        }

        target = closestAnimal; // ���� ����� Animal �±��� ���� ��ǥ�� ����
    }

    // ���ظ� �Դ� �Լ�
    public void TakeDamage(int damage)
    {
        currentHP -= damage; // ���� HP���� ���ط���ŭ ����
        currentHP = Mathf.Max(currentHP, 0);
        Debug.Log("�޸��� " + damage + "�� ���ظ� �Ծ����ϴ�. ���� HP: " + currentHP);
        healthBar.SetHealth(currentHP);
        if (currentHP <= 0)
        {
            Die(); // HP�� 0 ���ϰ� �Ǹ� ��� ó��
        }
    }
    public void TriggerHitAnimation()
    {
        if (animator != null)
        {
            animator.SetTrigger("Hit"); // Hit �ִϸ��̼� Ʈ���� ����
            Debug.Log("�޸� ĳ���Ͱ� �Թ��� �¾� Hit �ִϸ��̼��� �����մϴ�.");
            StartCoroutine(StunAndStopNav(1.5f));
        }
    }
    // ���� ���¿��� NavMeshAgent�� ���ߴ� �ڷ�ƾ �Լ�
    private IEnumerator StunAndStopNav(float duration)
    {
        isHit = true;
        if (navAgent != null)
        {
            navAgent.isStopped = true; // NavMeshAgent ����
            navAgent.velocity = Vector3.zero; // NavMeshAgent�� �ӵ��� 0���� �����Ͽ� ������ ����
        }
        yield return new WaitForSeconds(duration); // ���� ���� �ð� ���
        if (navAgent != null)
        {
            navAgent.isStopped = false; // NavMeshAgent �簳
        }
        isHit = false;
        Debug.Log("�޸� ĳ���Ͱ� ���Ͽ��� ȸ���Ǿ����ϴ�.");
    }

    // ��� ó�� �Լ�
    void Die()
    {
        Debug.Log("�޸��� ���������ϴ�!");
        // ��� �� ó�� (��: ��Ȱ��ȭ, �ִϸ��̼� ��)
        gameObject.SetActive(false); // ���� ������Ʈ ��Ȱ��ȭ
        healthBar.gameObject.SetActive(false); // ü�� �� ��Ȱ��ȭ
    }
}
