using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ginseng : MonoBehaviour
{
   public int healthRestoreAmount = 20; // ȸ���� ü�� ��
   // public GameObject consumeEffectPrefab; // ��� �Һ� �� ȿ�� ������
   public float rotationSpeed = 50f; // ����� ȸ���ϴ� �ӵ�
    private void Update()
    {
        // ����� ���������� ȸ����Ŵ
        transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
    }
    private void OnTriggerEnter(Collider other)
    {
        // Animal �±׸� ���� ������Ʈ�� ��￡ ����� ���� ����
        if (other.CompareTag("Animal"))
        {
            Rat rat = other.GetComponent<Rat>();
            Monkey monkey = other.GetComponent<Monkey>();
            Deer deer = other.GetComponent<Deer>();

            if (rat != null)
            {
                rat.RestoreHealth(healthRestoreAmount); // ü�� ȸ��
                Debug.Log($"�㰡 {healthRestoreAmount}��ŭ ü���� ȸ���߽��ϴ�!");
            }
            else if (monkey != null)
            {
                monkey.RestoreHealth(healthRestoreAmount); // ü�� ȸ��
                Debug.Log($"�����̰� {healthRestoreAmount}��ŭ ü���� ȸ���߽��ϴ�!");
            }
            else if (deer != null)
            {
                deer.RestoreHealth(healthRestoreAmount); // ü�� ȸ��
                Debug.Log($"�罿�� {healthRestoreAmount}��ŭ ü���� ȸ���߽��ϴ�!");
            }

            // ��� �Һ� ȿ�� ����
         //   if (consumeEffectPrefab != null)
            {
        //        GameObject effect = Instantiate(consumeEffectPrefab, transform.position, Quaternion.identity);
        //        ParticleSystem ps = effect.GetComponent<ParticleSystem>();
        //        if (ps != null)
        //        {
         //           ps.Play(); // ȿ�� ���
         //       }
        //        Destroy(effect, 2f); // ȿ�� ����
            }

        
        }
    }
}

