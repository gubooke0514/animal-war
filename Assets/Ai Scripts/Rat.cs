using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.Playables;

public class Rat : MonoBehaviour
{
    public float attackRange = 2f; // 공격 범위
    public int attackDamage = 10; // 공격 시 줄 데미지
    public float attackCooldown = 1f; // 공격 쿨타임
    private float lastAttackTime = 0; // 마지막으로 공격한 시간 기록

    public int maxHP = 50; // 쥐의 최대 HP
    private int currentHP; // 현재 HPp
    public HealthBar healthBar; // 체력 바
    private NavMeshAgent navAgent; // NavMeshAgent 컴포넌트 참조 (이동을 위한 에이전트)
    private Animator animator; // Animator 컴포넌트 참조
    private Transform target; // 공격할 목표

    public GameObject atkCollider; // 공격용 콜라이더 오브젝트

    public PlayableDirector board2;

    bool endGame = false;
    bool loop = true;
    public void EnableAttackCollider()
    {
        atkCollider.SetActive(true); // 공격용 콜라이더 활성화
    }

    // 공격 애니메이션 중 콜라이더 비활성화 (애니메이션 이벤트로 호출)
    public void DisableAttackCollider()
    {
        atkCollider.SetActive(false); // 공격용 콜라이더 비활성화
    }
    void Start()
    {
        navAgent = GetComponent<NavMeshAgent>(); // NavMeshAgent 컴포넌트 가져오기
        animator = GetComponent<Animator>(); // Animator 컴포넌트 가져오기
        healthBar.SetMaxHealth(maxHP);
        currentHP = maxHP; // 시작할 때 현재 HP를 최대 HP로 설정
        atkCollider.SetActive(false); // 공격용 콜라이더는 기본적으로 비활성화
    }

    void Update()
    {
        FindClosestTarget(); // 가장 가까운 적을 찾음
        LookAtTarget();
        // 목표가 존재하고 사거리 밖에 있으면 목표 쪽으로 이동
        if (target != null && !IsTargetInRange())
        {
            MoveTowardsTarget();
        }
        // 사거리 내에 있고 쿨타임이 지난 후 공격 시도
        else if (target != null && Time.time > lastAttackTime + attackCooldown && IsTargetInRange())
        {
            Attack();
            lastAttackTime = Time.time; // 마지막 공격 시간 업데이트
        }

        if (endGame && loop)
        {
            board2.Play();
            endGame = false;
            loop = false;
        }
        }
    void LookAtTarget()
    {
        if (target == null)
        {
            animator.SetTrigger("Spin");
            
            endGame = true;
            
            return; // 타겟이 없으면 함수 종료
        }
        Vector3 direction = (target.position - transform.position).normalized; // 목표를 향하는 방향 계산
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z)); // 목표 방향으로 회전 설정 (y축 회전만 적용)
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f); // 부드럽게 회전
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
        animator.SetTrigger("Attack"); // 공격 애니메이션 실행
        Debug.Log("쥐가 공격을 시도합니다!");
        if (target != null)
        {
            Human human = target.GetComponent<Human>();
            if (human != null)
            {
                human.TakeDamage(attackDamage);
                Debug.Log("쥐가 인간에게 " + attackDamage + "의 데미지를 입혔습니다.");
            }
        }
        if (target != null)
        {
            RangedHuman human = target.GetComponent<RangedHuman>();
            if (human != null)
            {
                human.TakeDamage(attackDamage);
                Debug.Log("쥐가 인간에게 " + attackDamage + "의 데미지를 입혔습니다.");
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
        Debug.Log("쥐가 " + damage + "의 피해를 입었습니다. 현재 HP: " + currentHP);
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
