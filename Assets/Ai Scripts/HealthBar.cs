using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    public Slider healthSlider; // 체력 바 Slider
    public Transform target; // 체력 바가 따라갈 캐릭터의 Transform

    void Update()
    {
        // 체력 바가 캐릭터 머리 위에 위치하도록 설정
        if (target != null)
        {
            transform.position = target.position + Vector3.up * 2.0f; // 캐릭터 머리 위에 배치 (높이는 필요에 따라 조정)
            
        }
    }

    public void SetMaxHealth(int maxHealth)
    {
        healthSlider.maxValue = maxHealth;
        healthSlider.value = maxHealth;
    }

    public void SetHealth(int currentHealth)
    {
        healthSlider.value = currentHealth;
    }
}
