using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class Human : MonoBehaviour
{
    public int maxHP = 100; // 인간 캐릭터의 최대 HP
    private int currentHP; // 현재 HP
    public HealthBar healthBar; // 체력 바
    private NavMeshAgent navAgent; // NavMeshAgent 컴포넌트 참조 (이동을 위한 에이전트)
    private Transform target; // 추격할 목표

    public GameObject axe; // 도끼 오브젝트
    private Collider axeCollider; // 도끼의 콜라이더

    private Animator animator; // Animator 컴포넌트 참조
    public float attackRange = 2f; // 공격 사정거리
    public float attackCooldown = 1.5f; // 공격 쿨타임
    private float lastAttackTime = 0f; // 마지막으로 공격한 시간 기록
    private bool isHit = false; // Hit 애니메이션 중인지 여부
    void Start()
    {
        currentHP = maxHP; // 시작할 때 현재 HP를 최대 HP로 설정
        healthBar.SetMaxHealth(maxHP);
        navAgent = GetComponent<NavMeshAgent>(); // NavMeshAgent 컴포넌트 가져오기
        animator = GetComponent<Animator>(); // Animator 컴포넌트 가져오기
        axeCollider = axe.GetComponent<Collider>(); // 도끼의 콜라이더 가져오기
        axeCollider.enabled = false; // 도끼 콜라이더 초기에는 비활성화
    }

    void Update()
    {
        FindClosestAnimal(); // 가장 가까운 Animal 태그를 가진 목표를 찾음

        // 목표가 존재하고 사거리 내에 있다면 공격 실행
        if (target != null)
        {
            if (isHit) return; // Hit 애니메이션 중이라면 업데이트 중지
            LookAtTarget();
            float distanceToTarget = Vector3.Distance(transform.position, target.position);
            if (distanceToTarget > attackRange)
            {
                ChaseTarget(); // 목표가 사정거리 밖에 있으면 추격
            }
            else if (Time.time > lastAttackTime + attackCooldown)
            {
                AttackTarget(); // 목표가 사정거리 내에 있고 쿨타임이 지났으면 공격
                lastAttackTime = Time.time; // 마지막 공격 시간 업데이트
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
    // 목표를 추격하는 함수
    void ChaseTarget()
    {
        navAgent.SetDestination(target.position); // 목표 위치로 NavMeshAgent 설정
        animator.SetBool("Walk", true); // 걷기 애니메이션 실행
    }

    // 목표를 공격하는 함수
    void AttackTarget()
    {
        navAgent.ResetPath(); // 공격 중에는 이동 멈춤
        animator.SetBool("Walk", false); // 걷기 애니메이션 중지
        animator.SetTrigger("Attack"); // 공격 애니메이션 실행
    }

    // 공격 애니메이션 중 도끼 콜라이더 활성화 (애니메이션 이벤트로 호출)
    public void EnableAxeCollider()
    {
        axeCollider.enabled = true; // 도끼의 콜라이더 활성화
        Debug.Log("도끼 콜라이더 활성화됨");
    }

    // 공격 애니메이션이 끝날 때 도끼 콜라이더 비활성화 (애니메이션 이벤트로 호출)
    public void DisableAxeCollider()
    {
        axeCollider.enabled = false; // 도끼의 콜라이더 비활성화
        Debug.Log("도끼 콜라이더 비활성화됨");
    }

    // 도끼 콜라이더가 적과 충돌했을 때 호출되는 함수
    private void OnTriggerEnter(Collider other)
    {
        //   if (other == axeCollider && other.CompareTag("Animal"))
        {
            var animal = other.GetComponent<Monkey>(); // 적이 Animal 스크립트를 가졌는지 확인
            if (animal != null)
            {
                animal.TakeDamage(25); // 적에게 데미지 주기
                Debug.Log("도끼 공격 성공: 적에게 25의 데미지를 입힘!");
            }
        }
        {
            var animal = other.GetComponent<Rat>();
            if (animal != null)
            {
                animal.TakeDamage(25); // 적에게 데미지 주기
                Debug.Log("도끼 공격 성공: 적에게 25의 데미지를 입힘!");
            }
        }
        {

            var animal = other.GetComponent<Deer>();
            if (animal != null)
            {
                animal.TakeDamage(25); // 적에게 데미지 주기
                Debug.Log("도끼 공격 성공: 적에게 25의 데미지를 입힘!");
            }
        }
        
    }

    // 가장 가까운 Animal 태그를 가진 적을 찾는 함수
    void FindClosestAnimal()
    {
        GameObject[] animals = GameObject.FindGameObjectsWithTag("Animal"); // 'Animal' 태그를 가진 모든 적 찾기
        float closestDistance = Mathf.Infinity; // 가장 가까운 거리 초기화 (무한대)
        Transform closestAnimal = null; // 가장 가까운 적 초기화

        foreach (GameObject animal in animals)
        {
            float distanceToAnimal = Vector3.Distance(transform.position, animal.transform.position); // 각 적과의 거리 계산
            if (distanceToAnimal < closestDistance)
            {
                closestDistance = distanceToAnimal; // 가장 가까운 거리 업데이트
                closestAnimal = animal.transform; // 가장 가까운 적 업데이트
            }
        }

        target = closestAnimal; // 가장 가까운 Animal 태그의 적을 목표로 설정
    }

    // 피해를 입는 함수
    public void TakeDamage(int damage)
    {
        currentHP -= damage; // 현재 HP에서 피해량만큼 감소
        currentHP = Mathf.Max(currentHP, 0);
        Debug.Log("휴먼이 " + damage + "의 피해를 입었습니다. 현재 HP: " + currentHP);
        healthBar.SetHealth(currentHP);
        if (currentHP <= 0)
        {
            Die(); // HP가 0 이하가 되면 사망 처리
        }
    }
    public void TriggerHitAnimation()
    {
        if (animator != null)
        {
            animator.SetTrigger("Hit"); // Hit 애니메이션 트리거 실행
            Debug.Log("휴먼 캐릭터가 먹물에 맞아 Hit 애니메이션을 실행합니다.");
            StartCoroutine(StunAndStopNav(1.5f));
        }
    }
    // 스턴 상태에서 NavMeshAgent를 멈추는 코루틴 함수
    private IEnumerator StunAndStopNav(float duration)
    {
        isHit = true;
        if (navAgent != null)
        {
            navAgent.isStopped = true; // NavMeshAgent 멈춤
            navAgent.velocity = Vector3.zero; // NavMeshAgent의 속도를 0으로 설정하여 완전히 멈춤
        }
        yield return new WaitForSeconds(duration); // 스턴 지속 시간 대기
        if (navAgent != null)
        {
            navAgent.isStopped = false; // NavMeshAgent 재개
        }
        isHit = false;
        Debug.Log("휴먼 캐릭터가 스턴에서 회복되었습니다.");
    }

    // 사망 처리 함수
    void Die()
    {
        Debug.Log("휴먼이 쓰러졌습니다!");
        // 사망 시 처리 (예: 비활성화, 애니메이션 등)
        gameObject.SetActive(false); // 게임 오브젝트 비활성화
        healthBar.gameObject.SetActive(false); // 체력 바 비활성화
    }
}
