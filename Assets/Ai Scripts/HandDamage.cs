using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HandDamage : MonoBehaviour
{

    public int damage = 20;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            var enemyHuman = other.GetComponent<Human>();
            if (enemyHuman != null)
            {
                enemyHuman.TakeDamage(damage); // ������ ������ �ֱ�
                Debug.Log("������ " + damage + "�� �������� �������ϴ�! (Human)");
                return;
            }

            var enemyRangedHuman = other.GetComponent<RangedHuman>();
            if (enemyRangedHuman != null)
            {
                enemyRangedHuman.TakeDamage(damage); // ������ ������ �ֱ�
                Debug.Log("������ " + damage + "�� �������� �������ϴ�! (RangedHuman)");
                return;
            }
        }
    }
}
