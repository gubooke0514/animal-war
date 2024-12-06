using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Banana : MonoBehaviour
{
    public int damage = 20; // �ٳ����� ������ �� ������

    private void OnCollisionEnter(Collision collision)
    {
        //if (collision.gameObject.CompareTag("Enemy"))
        {
            var enemy = collision.gameObject.GetComponent<Human>(); // ���� Human ��ũ��Ʈ�� �������� Ȯ��
            if (enemy != null)
            {
                enemy.TakeDamage(damage); // ������ ������ �ֱ�
            }
        }
        {
            var enemy = collision.gameObject.GetComponent<RangedHuman>();
            if (enemy != null)
            {
                enemy.TakeDamage(damage); // ������ ������ �ֱ�
            }
        }

        // �ٳ����� �ٸ� ������Ʈ�� �浹�ϸ� ����
        Destroy(gameObject);
    }
}
