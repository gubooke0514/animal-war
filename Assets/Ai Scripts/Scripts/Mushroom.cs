using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Mushroom : MonoBehaviour
{
    public float explosionRadius = 3f; // ���� �ݰ�
    public int damagePerSecond = 10; // �ʴ� ������
    public float damageDuration = 5f; // �������� ���ӵǴ� �ð�
    public GameObject explosionEffectPrefab; // ���� ȿ�� ������
    public float sinkYValue = -100f;
    private bool hasExploded = false; // ������ �̹� �������� ����

    public AudioSource explosionSound;

    private void OnTriggerEnter(Collider other)
    {
        // Enemy �±׸� ���� ������Ʈ�� ������ ����� ���� ����
        if (!hasExploded && other.CompareTag("Enemy"))
        {
            hasExploded = true;
            Explode(); // ���� ����
        }
    }
    void Explode()
    {
        // ���� ȿ�� ����
        if (explosionEffectPrefab != null)
        {
            GameObject explosionEffect = Instantiate(explosionEffectPrefab, transform.position, Quaternion.identity);
            ParticleSystem ps = explosionEffect.GetComponent<ParticleSystem>();
            if (ps != null)
            {
                explosionSound.Play();
                ps.Play(); // ���� ��ƼŬ ���
            }
            Destroy(explosionEffect, 2f); // ȿ���� ������ ����
        }

        // ���� ���� ���鿡�� ���� ������ ������
        Collider[] hitColliders = Physics.OverlapSphere(transform.position, explosionRadius);
        foreach (Collider hitCollider in hitColliders)
        {
            if (hitCollider.CompareTag("Enemy")) // Enemy �±׷� ���͸�
            {
                Human enemy = hitCollider.GetComponent<Human>(); // Human ��ũ��Ʈ�� ���� �� ã��
                if (enemy != null)
                {
                    StartCoroutine(ApplyDamageOverTime(enemy)); // ���� ������ ����
                }

                RangedHuman rangedEnemy = hitCollider.GetComponent<RangedHuman>(); // RangedHuman ��ũ��Ʈ�� ���� �� ã��
                if (rangedEnemy != null)
                {
                    StartCoroutine(ApplyDamageOverTime(rangedEnemy)); // ���� ������ ����
                }
            }
        }

        // ���� ������Ʈ�� �� �Ʒ��� �̵�
        transform.position = new Vector3(transform.position.x, sinkYValue, transform.position.z);

        // ���� ������Ʈ�� damageDuration + 0.5�� �� ����
        Destroy(gameObject, damageDuration + 0.5f);
    }

    // Human ��� ���� �������� ������ �ڷ�ƾ
    IEnumerator ApplyDamageOverTime(Human enemy)
    {
        float elapsed = 0f;

        while (elapsed < damageDuration)
        {
            if (enemy != null) // ���� �����ϴ� ���� ������ ����
            {
                enemy.TakeDamage(damagePerSecond); // �ʴ� �������� ����
                Debug.Log($"{enemy.name}��(��) {damagePerSecond}�� ���� �������� �Ծ����ϴ�.");
            }

            yield return new WaitForSeconds(1f); // 1�� ���
            elapsed += 1f;
        }
    }

    // RangedHuman ��� ���� �������� ������ �ڷ�ƾ
    IEnumerator ApplyDamageOverTime(RangedHuman rangedEnemy)
    {
        float elapsed = 0f;

        while (elapsed < damageDuration)
        {
            if (rangedEnemy != null) // ���� �����ϴ� ���� ������ ����
            {
                rangedEnemy.TakeDamage(damagePerSecond); // �ʴ� �������� ����
                Debug.Log($"{rangedEnemy.name}��(��) {damagePerSecond}�� ���� �������� �Ծ����ϴ�.");
            }

            yield return new WaitForSeconds(1f); // 1�� ���
            elapsed += 1f;
        }
    }
}
