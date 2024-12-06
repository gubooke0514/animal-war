using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Deer : MonoBehaviour
{
    public float attackRange = 2f; // ���� ����
    public int attackDamage = 15; // ���� �� �� ������
    public float attackCooldown = 1.2f; // ���� ��Ÿ��
    private float lastAttackTime = 0; // ���������� ������ �ð� ���

    public int maxHP = 60; // �罿�� �ִ� HP
    private int currentHP; // ���� HP
    public HealthBar healthBar; // ü�� ��
    private NavMeshAgent navAgent; // NavMeshAgent ������Ʈ ���� (�̵��� ���� ������Ʈ)
    private Animator animator; // Animator ������Ʈ ����
    private Transform target; // ������ ��ǥ

    public GameObject atkCollider1; // ���ݿ� �ݶ��̴� ������Ʈ

    // ���� �ִϸ��̼� �� �ݶ��̴� Ȱ��ȭ (�ִϸ��̼� �̺�Ʈ�� ȣ��)
    public void EnableAttackCollider()
    {
        atkCollider1.SetActive(true); // ���ݿ� �ݶ��̴� Ȱ��ȭ
    }

    // ���� �ִϸ��̼� �� �ݶ��̴� ��Ȱ��ȭ (�ִϸ��̼� �̺�Ʈ�� ȣ��)
    public void DisableAttackCollider()
    {
        atkCollider1.SetActive(false); // ���ݿ� �ݶ��̴� ��Ȱ��ȭ
    }

    void Start()
    {
        navAgent = GetComponent<NavMeshAgent>(); // NavMeshAgent ������Ʈ ��������
        animator = GetComponent<Animator>(); // Animator ������Ʈ ��������
        currentHP = maxHP; // ������ �� ���� HP�� �ִ� HP�� ����
        healthBar.SetMaxHealth(maxHP);
        atkCollider1.SetActive(false); // ���ݿ� �ݶ��̴��� �⺻������ ��Ȱ��ȭ
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
        // ��Ÿ� ���� �ְ� ��Ÿ���� ���� �� ���� �õ�
        else if (target != null && Time.time > lastAttackTime + attackCooldown && IsTargetInRange())
        {
            Attack();
            lastAttackTime = Time.time; // ������ ���� �ð� ������Ʈ
        }
    }

    void LookAtTarget()
    {
        if (target == null)
        {
            animator.SetTrigger("Spin");
            return; // Ÿ���� ������ �Լ� ����
        }
        Vector3 direction = (target.position - transform.position).normalized; // ��ǥ�� ���ϴ� ���� ���
        Quaternion lookRotation = Quaternion.LookRotation(direction); // ��ǥ �������� ��Ȯ�� ȸ�� ����
        transform.rotation = Quaternion.RotateTowards(transform.rotation, lookRotation, Time.deltaTime * 200f); // ������ ��Ȯ�ϰ� ȸ��
    }

    // ��ǥ ������ �̵��ϴ� �Լ�
    void MoveTowardsTarget()
    {
        if (target != null)
        {
            navAgent.SetDestination(target.position); // ��ǥ ��ġ�� NavMeshAgent ����
            animator.SetBool("Run", true); // �ȱ� �ִϸ��̼� ����
        }
    }

    // ���� �Լ�
    void Attack()
    {
        LookAtTarget();
        animator.SetTrigger("Attack"); // ���� �ִϸ��̼� ����
        Debug.Log("�罿�� ������ �õ��մϴ�!");
        if (target != null)
        {
            Human human = target.GetComponent<Human>();
            if (human != null)
            {
                human.TakeDamage(attackDamage);
                Debug.Log("�罿�� �ΰ����� " + attackDamage + "�� �������� �������ϴ�.");
            }
        }
        if (target != null)
        {
            RangedHuman human = target.GetComponent<RangedHuman>();
            if (human != null)
            {
                human.TakeDamage(attackDamage);
                Debug.Log("�㰡 �ΰ����� " + attackDamage + "�� �������� �������ϴ�.");
            }
        }
    }

    // ��ǥ�� ��Ÿ� ���� �ִ��� Ȯ���ϴ� �Լ�
    bool IsTargetInRange()
    {
        if (target == null)
        {
            return false; // ��ǥ�� ������ false ��ȯ
        }

        float distanceToTarget = Vector3.Distance(transform.position, target.position); // ��ǥ���� �Ÿ� ���
        if (distanceToTarget <= attackRange)
        {
            animator.SetBool("Run", false); // ��Ÿ� ���� ���������� �ȱ� �ִϸ��̼� ����
        }
        return distanceToTarget <= attackRange; // ��Ÿ� ���� �ִ��� ���� ��ȯ
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
        Debug.Log("�罿�� " + damage + "�� ���ظ� �Ծ����ϴ�. ���� HP: " + currentHP);
        animator.SetTrigger("Hit"); // ���ظ� �Ծ��� �� Hit �ִϸ��̼� ����
        healthBar.SetHealth(currentHP);
        if (currentHP <= 0)
        {
            Die(); // HP�� 0 ���ϰ� �Ǹ� ��� ó��
        }
    }

    // ��� ó�� �Լ�
    void Die()
    {
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
