using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public int damage = 25; // 발사체의 데미지
    public float speed = 20f; // 발사체의 속도

    void Update()
    {
        transform.Translate(Vector3.forward * speed * Time.deltaTime); // 발사체가 앞으로 이동
    }

    private void OnTriggerEnter(Collider other)
    {
        //   if (other == axeCollider && other.CompareTag("Animal"))
        {
            var animal = other.GetComponent<Monkey>(); // 적이 Animal 스크립트를 가졌는지 확인
            if (animal != null)
            {
                animal.TakeDamage(damage); // 적에게 데미지 주기
                Debug.Log("도끼 공격 성공: 적에게 25의 데미지를 입힘!");
            }
        }
        {
            var animal = other.GetComponent<Rat>();
            if (animal != null)
            {
                animal.TakeDamage(damage); // 적에게 데미지 주기
                Debug.Log("도끼 공격 성공: 적에게 25의 데미지를 입힘!");
            }
        }
        {

            var animal = other.GetComponent<Deer>();
            if (animal != null)
            {
                animal.TakeDamage(damage); // 적에게 데미지 주기
                Debug.Log("도끼 공격 성공: 적에게 25의 데미지를 입힘!");
            }
        }
        Destroy(gameObject);
    }
}
