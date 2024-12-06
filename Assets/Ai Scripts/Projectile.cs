using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Projectile : MonoBehaviour
{
    public int damage = 25; // �߻�ü�� ������
    public float speed = 20f; // �߻�ü�� �ӵ�

    void Update()
    {
        transform.Translate(Vector3.forward * speed * Time.deltaTime); // �߻�ü�� ������ �̵�
    }

    private void OnTriggerEnter(Collider other)
    {
        //   if (other == axeCollider && other.CompareTag("Animal"))
        {
            var animal = other.GetComponent<Monkey>(); // ���� Animal ��ũ��Ʈ�� �������� Ȯ��
            if (animal != null)
            {
                animal.TakeDamage(damage); // ������ ������ �ֱ�
                Debug.Log("���� ���� ����: ������ 25�� �������� ����!");
            }
        }
        {
            var animal = other.GetComponent<Rat>();
            if (animal != null)
            {
                animal.TakeDamage(damage); // ������ ������ �ֱ�
                Debug.Log("���� ���� ����: ������ 25�� �������� ����!");
            }
        }
        {

            var animal = other.GetComponent<Deer>();
            if (animal != null)
            {
                animal.TakeDamage(damage); // ������ ������ �ֱ�
                Debug.Log("���� ���� ����: ������ 25�� �������� ����!");
            }
        }
        Destroy(gameObject);
    }
}
