using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ink : MonoBehaviour
{
    public float stunDuration = 3f; // 먹물에 맞은 적이 스턴되는 시간

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            var enemyHuman = other.GetComponent<Human>();
            if (enemyHuman != null)
            {
                Debug.Log("적이 " + stunDuration + "초 동안 스턴 상태가 되었습니다!");
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
                Debug.Log("적이 " + stunDuration + "초 동안 스턴 상태가 되었습니다!");
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