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
                enemyHuman.TakeDamage(damage); // 적에게 데미지 주기
                Debug.Log("적에게 " + damage + "의 데미지를 입혔습니다! (Human)");
                return;
            }

            var enemyRangedHuman = other.GetComponent<RangedHuman>();
            if (enemyRangedHuman != null)
            {
                enemyRangedHuman.TakeDamage(damage); // 적에게 데미지 주기
                Debug.Log("적에게 " + damage + "의 데미지를 입혔습니다! (RangedHuman)");
                return;
            }
        }
    }
}
