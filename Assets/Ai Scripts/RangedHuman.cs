using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class RangedHuman : MonoBehaviour
{
    public int maxHP = 100;
    private int currentHP;
    public HealthBar healthBar; // 체력 바
    public GameObject projectilePrefab; // 발사체 프리팹
    public Transform shootPoint; // 발사체가 발사될 위치

    private Transform target;
    private NavMeshAgent navAgent;
    private Animator animator;

    public float attackRange = 10f; // 원거리 공격 사정거리
    public float attackCooldown = 2.0f; // 공격 쿨타임
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
        FindClosestAnimal(); // 가장 가까운 Animal 태그를 가진 목표를 찾음
        LookAtTarget();
        if (target != null)
        {
            float distanceToTarget = Vector3.Distance(transform.position, target.position);
            if (distanceToTarget > attackRange)
            {
                ChaseTarget(); // 목표가 사정거리 밖에 있으면 추격
            }
            else if (Time.time > lastAttackTime + attackCooldown)
            {
                AttackTarget(); // 목표가 사정거리 내에 있고 쿨타임이 지났으면 공격
                lastAttackTime = Time.time;
            }
        }
    }
    void LookAtTarget()
    {
        if (target == null)
        {
            return; // 타겟이 없으면 함수 종료
        }
        Vector3 direction = (target.position - transform.position).normalized; // 목표를 향하는 방향 계산
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z)); // 목표 방향으로 회전 설정 (y축 회전만 적용)
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f); // 부드럽게 회전
    }
    void ChaseTarget()
    {
        navAgent.SetDestination(target.position);
        animator.SetBool("Walk", true);
    }

    void AttackTarget()
    {
        navAgent.ResetPath(); // 공격 중에는 이동 멈춤
        animator.SetBool("Walk", false);
        animator.SetTrigger("Attack"); // 공격 애니메이션 실행
        ShootProjectile(); // 발사체 발사
    }

    void ShootProjectile()
    {
        if (shootPoint != null && projectilePrefab != null)
        {
            GameObject projectile = Instantiate(projectilePrefab, shootPoint.position, shootPoint.rotation);
            projectile.GetComponent<Projectile>().damage = 25; // 발사체의 데미지 설정
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
        Debug.Log("원거리 휴먼이 " + damage + "의 피해를 입었습니다. 현재 HP: " + currentHP);
        healthBar.SetHealth(currentHP);
        if (currentHP <= 0)
        {
            Die();
        }
    }

    void Die()
    {
        Debug.Log("원거리 휴먼이 쓰러졌습니다!");
        animator.SetTrigger("Death");
        gameObject.SetActive(false);
        healthBar.gameObject.SetActive(false); // 체력 바 비활성화
    }
}
