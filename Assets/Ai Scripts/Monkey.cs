using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class Monkey : MonoBehaviour
{
    public GameObject bananaPrefab; // 바나나 프리팹
    public Transform throwPoint; // 바나나가 던져질 위치
    public float throwCooldown = 1.4f; // 던지기 쿨타임
    public float throwRange = 5f; // 바나나 던질 수 있는 최대 사거리
    private float lastThrowTime = 0; // 마지막으로 바나나를 던진 시간 기록
    public float bananaSpeed = 15f; // 바나나가 날아가는 속도
    public float bananaSpinSpeed = 500f; // 바나나의 회전 속도

    public int maxHP = 100; // 원숭이의 최대 HP
    private int currentHP; // 현재 HP
    public HealthBar healthBar; // 체력 바
    private NavMeshAgent Agent; // NavMeshAgent 컴포넌트 참조 (이동을 위한 에이전트)

    private Animator animator; // Animator 컴포넌트 참조
    private Transform target; // 공격할 목표

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
        FindClosestTarget(); // 가장 가까운 적을 찾음
        LookAtTarget();
        // 목표가 존재하고 사거리 밖에 있으면 목표 쪽으로 이동
        if (target != null && !IsTargetInRange())
        {
            MoveTowardsTarget();
        }

        // 쿨타임이 지난 후, 목표가 사거리 내에 있으면 바나나 던지기
        else if (Time.time > lastThrowTime + throwCooldown)
        {
            if (IsTargetInRange())
            {
                ThrowBanana();
                lastThrowTime = Time.time; // 마지막 던진 시간 업데이트
            }
        }
    }

    // 목표 쪽으로 이동하는 함수
    void MoveTowardsTarget()
    {
        if (target != null)
        {
            Agent.SetDestination(target.position); // 목표 위치로 NavMeshAgent 설정
            animator.SetBool("Walk", true); // 걷기 애니메이션 실행
        }
    }

    // 바나나를 던지는 함수
    void ThrowBanana()
    {
        // 바나나 생성 후 던지기
        GameObject banana = Instantiate(bananaPrefab, throwPoint.position, throwPoint.rotation);
        Rigidbody rb = banana.GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.velocity = throwPoint.forward * bananaSpeed; // 바나나를 앞으로 날림
            rb.AddTorque(transform.right * bananaSpinSpeed); // 바나나를 빙글빙글 돌게 함
            AudioSource.Play();
        }
        animator.SetTrigger("Clicked"); // 공격 애니메이션 실행
    }

    // 목표가 사거리 내에 있는지 확인하는 함수
    bool IsTargetInRange()
    {
        if (target == null)
        {
            return false; // 목표가 없으면 false 반환
        }

        float distanceToTarget = Vector3.Distance(transform.position, target.position); // 목표와의 거리 계산
        if (distanceToTarget <= throwRange)
        {
            animator.SetBool("Walk", false); // 사거리 내에 도달했으면 걷기 애니메이션 중지
        }
        return distanceToTarget <= throwRange; // 사거리 내에 있는지 여부 반환
    }
    // 목표를 바라보는 함수
    void LookAtTarget()
    {
        if (target == null)
        {
            animator.SetTrigger("Spin");
            return; // 타겟이 없으면 함수 종료
        }
        Vector3 direction = (target.position - transform.position).normalized; // 목표를 향하는 방향 계산
        Quaternion lookRotation = Quaternion.LookRotation(new Vector3(direction.x, 0, direction.z)); // 목표 방향으로 회전 설정 (y축 회전만 적용)
        transform.rotation = Quaternion.Slerp(transform.rotation, lookRotation, Time.deltaTime * 5f); // 부드럽게 회전
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
        Debug.Log("원숭이가 " + damage + "의 피해를 입었습니다. 현재 HP: " + currentHP);
        animator.SetTrigger("Hit"); // 피해를 입었을 때 Hit 애니메이션 실행
        healthBar.SetHealth(currentHP);
        if (currentHP <= 0)
        {
            Die(); // HP가 0 이하가 되면 사망 처리
        }
    }
    public void RestoreHealth(int amount)
    {
        currentHP += amount; // 체력 증가
        currentHP = Mathf.Min(currentHP, maxHP); // 최대 체력을 초과하지 않도록 제한
    }
    // 사망 처리 함수
    void Die()
    {
        Debug.Log("원숭이가 쓰러졌습니다!");
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
