using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class RangedHuman : MonoBehaviour
{
    public int maxHP = 100;
    private int currentHP;
    public HealthBar healthBar; // ü�� ��
    public GameObject projectilePrefab; // �߻�ü ������
    public Transform shootPoint; // �߻�ü�� �߻�� ��ġ

    private Transform target;
    private NavMeshAgent navAgent;
    private Animator animator;

    public float attackRange = 10f; // ���Ÿ� ���� �����Ÿ�
    public float attackCooldown = 2.0f; // ���� ��Ÿ��
    private float lastAttackTime = 0f;

    void Start()
    {
        currentHP = maxHP;
        healthBar.SetMaxHealth(maxHP);
        navAgent = GetComponent<NavMeshAgent>();
        animator = GetComponent<Animator>();
    }

    void Update()
    {
        FindClosestAnimal(); // ���� ����� Animal �±׸� ���� ��ǥ�� ã��
        LookAtTarget();
        if (target != null)
        {
            float distanceToTarget = Vector3.Distance(transform.position, target.position);
            if (distanceToTarget > attackRange)
            {
                ChaseTarget(); // ��ǥ�� �����Ÿ� �ۿ� ������ �߰�
            }
            else if (Time.time > lastAttackTime + attackCooldown)
            {
                AttackTarget(); // ��ǥ�� �����Ÿ� ���� �ְ� ��Ÿ���� �������� ����
                lastAttackTime = Time.time;
            }
        }
    }
    void LookAtTarget()
    {
        if (target == null)
        {
            return; // Ÿ���� ������ �Լ� ����
        }
        Vector3 direction = (target.position - transform.position).normalized; // ��ǥ�� ���ϴ� ���� ���
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z)); // ��ǥ �������� ȸ�� ���� (y�� ȸ���� ����)
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f); // �ε巴�� ȸ��
    }
    void ChaseTarget()
    {
        navAgent.SetDestination(target.position);
        animator.SetBool("Walk", true);
    }

    void AttackTarget()
    {
        navAgent.ResetPath(); // ���� �߿��� �̵� ����
        animator.SetBool("Walk", false);
        animator.SetTrigger("Attack"); // ���� �ִϸ��̼� ����
        ShootProjectile(); // �߻�ü �߻�
    }

    void ShootProjectile()
    {
        if (shootPoint != null && projectilePrefab != null)
        {
            GameObject projectile = Instantiate(projectilePrefab, shootPoint.position, shootPoint.rotation);
            projectile.GetComponent<Projectile>().damage = 25; // �߻�ü�� ������ ����
        }
    }

    void FindClosestAnimal()
    {
        GameObject[] animals = GameObject.FindGameObjectsWithTag("Animal");
        float closestDistance = Mathf.Infinity;
        Transform closestAnimal = null;

        foreach (GameObject animal in animals)
        {
            float distanceToAnimal = Vector3.Distance(transform.position, animal.transform.position);
            if (distanceToAnimal < closestDistance)
            {
                closestDistance = distanceToAnimal;
                closestAnimal = animal.transform;
            }
        }

        target = closestAnimal;
    }

    public void TakeDamage(int damage)
    {
        currentHP -= damage;
        currentHP = Mathf.Max(currentHP, 0);
        Debug.Log("���Ÿ� �޸��� " + damage + "�� ���ظ� �Ծ����ϴ�. ���� HP: " + currentHP);
        healthBar.SetHealth(currentHP);
        if (currentHP <= 0)
        {
            Die();
        }
    }

    void Die()
    {
        Debug.Log("���Ÿ� �޸��� ���������ϴ�!");
        animator.SetTrigger("Death");
        gameObject.SetActive(false);
        healthBar.gameObject.SetActive(false); // ü�� �� ��Ȱ��ȭ
    }
}
