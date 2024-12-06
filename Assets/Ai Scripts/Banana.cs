using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Banana : MonoBehaviour
{
    public int damage = 20; // 바나나가 적에게 줄 데미지

    private void OnCollisionEnter(Collision collision)
    {
        //if (collision.gameObject.CompareTag("Enemy"))
        {
            var enemy = collision.gameObject.GetComponent<Human>(); // 적이 Human 스크립트를 가졌는지 확인
            if (enemy != null)
            {
                enemy.TakeDamage(damage); // 적에게 데미지 주기
            }
        }
        {
            var enemy = collision.gameObject.GetComponent<RangedHuman>();
            if (enemy != null)
            {
                enemy.TakeDamage(damage); // 적에게 데미지 주기
            }
        }

        // 바나나가 다른 오브젝트와 충돌하면 삭제
        Destroy(gameObject);
    }
}
