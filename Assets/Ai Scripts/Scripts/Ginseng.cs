using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Ginseng : MonoBehaviour
{
   public int healthRestoreAmount = 20; // 회복할 체력 양
   // public GameObject consumeEffectPrefab; // 산삼 소비 시 효과 프리팹
   public float rotationSpeed = 50f; // 산삼이 회전하는 속도
    private void Update()
    {
        // 산삼을 지속적으로 회전시킴
        transform.Rotate(Vector3.up, rotationSpeed * Time.deltaTime);
    }
    private void OnTriggerEnter(Collider other)
    {
        // Animal 태그를 가진 오브젝트가 산삼에 닿았을 때만 실행
        if (other.CompareTag("Animal"))
        {
            Rat rat = other.GetComponent<Rat>();
            Monkey monkey = other.GetComponent<Monkey>();
            Deer deer = other.GetComponent<Deer>();

            if (rat != null)
            {
                rat.RestoreHealth(healthRestoreAmount); // 체력 회복
                Debug.Log($"쥐가 {healthRestoreAmount}만큼 체력을 회복했습니다!");
            }
            else if (monkey != null)
            {
                monkey.RestoreHealth(healthRestoreAmount); // 체력 회복
                Debug.Log($"원숭이가 {healthRestoreAmount}만큼 체력을 회복했습니다!");
            }
            else if (deer != null)
            {
                deer.RestoreHealth(healthRestoreAmount); // 체력 회복
                Debug.Log($"사슴이 {healthRestoreAmount}만큼 체력을 회복했습니다!");
            }

            // 산삼 소비 효과 생성
         //   if (consumeEffectPrefab != null)
            {
        //        GameObject effect = Instantiate(consumeEffectPrefab, transform.position, Quaternion.identity);
        //        ParticleSystem ps = effect.GetComponent<ParticleSystem>();
        //        if (ps != null)
        //        {
         //           ps.Play(); // 효과 재생
         //       }
        //        Destroy(effect, 2f); // 효과 삭제
            }

        
        }
    }
}

