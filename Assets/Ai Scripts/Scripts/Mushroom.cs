using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mushroom : MonoBehaviour
{
    public float explosionRadius = 3f; // 폭발 반경
    public int damagePerSecond = 10; // 초당 데미지
    public float damageDuration = 5f; // 데미지가 지속되는 시간
    public GameObject explosionEffectPrefab; // 폭발 효과 프리팹
    public float sinkYValue = -100f;
    private bool hasExploded = false; // 버섯이 이미 터졌는지 여부

    public AudioSource explosionSound;

    private void OnTriggerEnter(Collider other)
    {
        // Enemy 태그를 가진 오브젝트가 버섯을 밟았을 때만 실행
        if (!hasExploded && other.CompareTag("Enemy"))
        {
            hasExploded = true;
            Explode(); // 폭발 실행
        }
    }
    void Explode()
    {
        // 폭발 효과 생성
        if (explosionEffectPrefab != null)
        {
            GameObject explosionEffect = Instantiate(explosionEffectPrefab, transform.position, Quaternion.identity);
            ParticleSystem ps = explosionEffect.GetComponent<ParticleSystem>();
            if (ps != null)
            {
                explosionSound.Play();
                ps.Play(); // 폭발 파티클 재생
            }
            Destroy(explosionEffect, 2f); // 효과가 끝나면 삭제
        }

        // 범위 내의 적들에게 지속 데미지 입히기
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, explosionRadius);
        foreach (Collider hitCollider in hitColliders)
        {
            if (hitCollider.CompareTag("Enemy")) // Enemy 태그로 필터링
            {
                Human enemy = hitCollider.GetComponent<Human>(); // Human 스크립트를 가진 적 찾기
                if (enemy != null)
                {
                    StartCoroutine(ApplyDamageOverTime(enemy)); // 지속 데미지 적용
                }

                RangedHuman rangedEnemy = hitCollider.GetComponent<RangedHuman>(); // RangedHuman 스크립트를 가진 적 찾기
                if (rangedEnemy != null)
                {
                    StartCoroutine(ApplyDamageOverTime(rangedEnemy)); // 지속 데미지 적용
                }
            }
        }

        // 버섯 오브젝트를 맵 아래로 이동
        transform.position = new Vector3(transform.position.x, sinkYValue, transform.position.z);

        // 버섯 오브젝트를 damageDuration + 0.5초 후 삭제
        Destroy(gameObject, damageDuration + 0.5f);
    }

    // Human 대상 지속 데미지를 입히는 코루틴
    IEnumerator ApplyDamageOverTime(Human enemy)
    {
        float elapsed = 0f;

        while (elapsed < damageDuration)
        {
            if (enemy != null) // 적이 존재하는 동안 데미지 적용
            {
                enemy.TakeDamage(damagePerSecond); // 초당 데미지를 적용
                Debug.Log($"{enemy.name}이(가) {damagePerSecond}의 지속 데미지를 입었습니다.");
            }

            yield return new WaitForSeconds(1f); // 1초 대기
            elapsed += 1f;
        }
    }

    // RangedHuman 대상 지속 데미지를 입히는 코루틴
    IEnumerator ApplyDamageOverTime(RangedHuman rangedEnemy)
    {
        float elapsed = 0f;

        while (elapsed < damageDuration)
        {
            if (rangedEnemy != null) // 적이 존재하는 동안 데미지 적용
            {
                rangedEnemy.TakeDamage(damagePerSecond); // 초당 데미지를 적용
                Debug.Log($"{rangedEnemy.name}이(가) {damagePerSecond}의 지속 데미지를 입었습니다.");
            }

            yield return new WaitForSeconds(1f); // 1초 대기
            elapsed += 1f;
        }
    }
}
