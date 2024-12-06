using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class Egg : MonoBehaviour
{
    public float explosionRadius = 5f; // 폭발 반경
    public int explosionDamage = 50; // 폭발 데미지
    public float explosionDelay = 3f; // 폭발까지의 지연 시간
    public GameObject fireExplosionPrefab; // 폭발 효과 프리팹
    void Start()
    {
        Invoke("Explode", explosionDelay); // 지연 시간 후 폭발
    }

    public void Shoot(Vector3 direction, float force)
    {
        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.AddForce(direction * force, ForceMode.Impulse); // 알을 주어진 방향으로 발사
            Debug.Log("Fire!");
        }
    }

    void Explode()
    {
        // 폭발 파티클 효과 생성
        if (fireExplosionPrefab != null)
        {
            GameObject explosionEffect = Instantiate(fireExplosionPrefab, transform.position, transform.rotation);
            ParticleSystem ps = explosionEffect.GetComponent<ParticleSystem>();
            if (ps != null)
            {
                ps.Play();
            }
            Destroy(explosionEffect, ps.main.duration);
        }

        Collider[] colliders = Physics.OverlapSphere(transform.position, explosionRadius); // 폭발 반경 내의 모든 콜라이더 찾기
        foreach (Collider nearbyObject in colliders)
        {
            if (nearbyObject.CompareTag("Enemy"))
            {
                var enemyHuman = nearbyObject.GetComponent<Human>();
                if (enemyHuman != null)
                {
                    enemyHuman.TakeDamage(explosionDamage); // 폭발 데미지 주기
                    Debug.Log("폭발로 적에게 " + explosionDamage + "의 데미지를 입혔습니다!");
                }
                var enemyRangedHuman = nearbyObject.GetComponent<RangedHuman>();
                if (enemyRangedHuman != null)
                {
                    enemyRangedHuman.TakeDamage(explosionDamage); // 폭발 데미지 주기
                    Debug.Log("폭발로 적에게 " + explosionDamage + "의 데미지를 입혔습니다!");
                }
            }
        }
        Destroy(gameObject); // 폭발 후 알 오브젝트 삭제
    }
}