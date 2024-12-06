using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Deer : MonoBehaviour
{
    public float attackRange = 2f; // 공격 범위
    public int attackDamage = 15; // 공격 시 줄 데미지
    public float attackCooldown = 1.2f; // 공격 쿨타임
    private float lastAttackTime = 0; // 마지막으로 공격한 시간 기록

    public int maxHP = 60; // 사슴의 최대 HP
    private int currentHP; // 현재 HP
    public HealthBar healthBar; // 체력 바
    private NavMeshAgent navAgent; // NavMeshAgent 컴포넌트 참조 (이동을 위한 에이전트)
    private Animator animator; // Animator 컴포넌트 참조
    private Transform target; // 공격할 목표

    public GameObject atkCollider1; // 공격용 콜라이더 오브젝트

    // 공격 애니메이션 중 콜라이더 활성화 (애니메이션 이벤트로 호출)
    public void EnableAttackCollider()
    {
        atkCollider1.SetActive(true); // 공격용 콜라이더 활성화
    }

    // 공격 애니메이션 중 콜라이더 비활성화 (애니메이션 이벤트로 호출)
    public void DisableAttackCollider()
    {
        atkCollider1.SetActive(false); // 공격용 콜라이더 비활성화
    }

    void Start()
    {
        navAgent = GetComponent<NavMeshAgent>(); // NavMeshAgent 컴포넌트 가져오기
        animator = GetComponent<Animator>(); // Animator 컴포넌트 가져오기
        currentHP = maxHP; // 시작할 때 현재 HP를 최대 HP로 설정
        healthBar.SetMaxHealth(maxHP);
        atkCollider1.SetActive(false); // 공격용 콜라이더는 기본적으로 비활성화
    }

    void Update()
    {
        FindClosestTarget(); // 가장 가까운 적을 찾음

        // 목표가 존재하고 사거리 밖에 있으면 목표 쪽으로 이동
        if (target != null && !IsTargetInRange())
        {
            MoveTowardsTarget();
            LookAtTarget();
        }
        // 사거리 내에 있고 쿨타임이 지난 후 공격 시도
        else if (target != null && Time.time > lastAttackTime + attackCooldown && IsTargetInRange())
        {
            Attack();
            lastAttackTime = Time.time; // 마지막 공격 시간 업데이트
        }
    }

    void LookAtTarget()
    {
        if (target == null) return;
        Vector3 direction = (target.position - transform.position).normalized; // 목표를 향하는 방향 계산
        Quaternion lookRotation = Quaternion.LookRotation(direction); // 목표 방향으로 정확히 회전 설정
        transform.rotation = Quaternion.RotateTowards(transform.rotation, lookRotation, Time.deltaTime * 200f); // 빠르고 정확하게 회전
    }

    // 목표 쪽으로 이동하는 함수
    void MoveTowardsTarget()
    {
        if (target != null)
        {
            navAgent.SetDestination(target.position); // 목표 위치로 NavMeshAgent 설정
            animator.SetBool("Run", true); // 걷기 애니메이션 실행
        }
    }

    // 공격 함수
    void Attack()
    {
        LookAtTarget();
        animator.SetTrigger("Attack"); // 공격 애니메이션 실행
        Debug.Log("사슴이 공격을 시도합니다!");
        if (target != null)
        {
            Human human = target.GetComponent<Human>();
            if (human != null)
            {
                human.TakeDamage(attackDamage);
                Debug.Log("사슴이 인간에게 " + attackDamage + "의 데미지를 입혔습니다.");
            }
        }
    }

    // 목표가 사거리 내에 있는지 확인하는 함수
    bool IsTargetInRange()
    {
        if (target == null)
        {
            return false; // 목표가 없으면 false 반환
        }

        float distanceToTarget = Vector3.Distance(transform.position, target.position); // 목표와의 거리 계산
        if (distanceToTarget <= attackRange)
        {
            animator.SetBool("Run", false); // 사거리 내에 도달했으면 걷기 애니메이션 중지
        }
        return distanceToTarget <= attackRange; // 사거리 내에 있는지 여부 반환
    }

    // 가장 가까운 적을 찾는 함수
    void FindClosestTarget()
    {
        GameObject[] enemies = GameObject.FindGameObjectsWithTag("Enemy"); // 'Enemy' 태그를 가진 모든 적 찾기
        float closestDistance = Mathf.Infinity; // 가장 가까운 거리 초기화 (무한대)
        Transform closestEnemy = null; // 가장 가까운 적 초기화

        foreach (GameObject enemy in enemies)
        {
            float distanceToEnemy = Vector3.Distance(transform.position, enemy.transform.position); // 각 적과의 거리 계산
            if (distanceToEnemy < closestDistance)
            {
                closestDistance = distanceToEnemy; // 가장 가까운 거리 업데이트
                closestEnemy = enemy.transform; // 가장 가까운 적 업데이트
            }
        }

        target = closestEnemy; // 가장 가까운 적을 목표로 설정
    }

    // 피해를 입는 함수
    public void TakeDamage(int damage)
    {
        currentHP -= damage; // 현재 HP에서 피해량만큼 감소
        currentHP = Mathf.Max(currentHP, 0);
        Debug.Log("사슴이 " + damage + "의 피해를 입었습니다. 현재 HP: " + currentHP);
        animator.SetTrigger("Hit"); // 피해를 입었을 때 Hit 애니메이션 실행
        healthBar.SetHealth(currentHP);
        if (currentHP <= 0)
        {
            Die(); // HP가 0 이하가 되면 사망 처리
        }
    }

    // 사망 처리 함수
    void Die()
    {
        animator.SetTrigger("Death"); // 사망 애니메이션 실행
        StartCoroutine(RemoveAfterDeathAnimation()); // 사망 애니메이션 후 오브젝트 삭제
        healthBar.gameObject.SetActive(false); // 체력 바 비활성화
    }

    IEnumerator RemoveAfterDeathAnimation()
    {
        yield return new WaitForSeconds(animator.GetCurrentAnimatorStateInfo(0).length); // 애니메이션 길이만큼 대기
        Destroy(gameObject); // 애니메이션이 끝난 후 오브젝트 삭제
    }
}
