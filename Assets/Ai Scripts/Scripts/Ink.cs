using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ink : MonoBehaviour
{
    public float stunDuration = 3f; // �Թ��� ���� ���� ���ϵǴ� �ð�

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            var enemyHuman = other.GetComponent<Human>();
            if (enemyHuman != null)
            {
                Debug.Log("���� " + stunDuration + "�� ���� ���� ���°� �Ǿ����ϴ�!");
                Destroy(gameObject);
                Human human = enemyHuman.GetComponent<Human>();
                if (human != null)
                {
                    human.TriggerHitAnimation();
                }
            }
            var enemyRangedHuman = other.GetComponent<RangedHuman>();
            if (enemyRangedHuman != null)
            {
                Debug.Log("���� " + stunDuration + "�� ���� ���� ���°� �Ǿ����ϴ�!");
                RangedHuman human = enemyRangedHuman.GetComponent<RangedHuman>();
                if (human != null)
                {
                    human.TriggerHitAnimation();
                }
                Destroy(gameObject);
            }
            Destroy(gameObject);
        }
    }
}