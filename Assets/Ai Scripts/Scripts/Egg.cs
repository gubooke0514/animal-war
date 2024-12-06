using System.Collections;
using System.Collections.Generic;
using UnityEngine;
public class Egg : MonoBehaviour
{
    public float explosionRadius = 5f; // ���� �ݰ�
    public int explosionDamage = 50; // ���� ������
    public float explosionDelay = 3f; // ���߱����� ���� �ð�
    public GameObject fireExplosionPrefab; // ���� ȿ�� ������
    void Start()
    {
        Invoke("Explode", explosionDelay); // ���� �ð� �� ����
    }

    public void Shoot(Vector3 direction, float force)
    {
        Rigidbody rb = GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.AddForce(direction * force, ForceMode.Impulse); // ���� �־��� �������� �߻�
            Debug.Log("Fire!");
        }
    }

    void Explode()
    {
        // ���� ��ƼŬ ȿ�� ����
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

        Collider[] colliders = Physics.OverlapSphere(transform.position, explosionRadius); // ���� �ݰ� ���� ��� �ݶ��̴� ã��
        foreach (Collider nearbyObject in colliders)
        {
            if (nearbyObject.CompareTag("Enemy"))
            {
                var enemyHuman = nearbyObject.GetComponent<Human>();
                if (enemyHuman != null)
                {
                    enemyHuman.TakeDamage(explosionDamage); // ���� ������ �ֱ�
                    Debug.Log("���߷� ������ " + explosionDamage + "�� �������� �������ϴ�!");
                }
                var enemyRangedHuman = nearbyObject.GetComponent<RangedHuman>();
                if (enemyRangedHuman != null)
                {
                    enemyRangedHuman.TakeDamage(explosionDamage); // ���� ������ �ֱ�
                    Debug.Log("���߷� ������ " + explosionDamage + "�� �������� �������ϴ�!");
                }
            }
        }
        Destroy(gameObject); // ���� �� �� ������Ʈ ����
    }
}