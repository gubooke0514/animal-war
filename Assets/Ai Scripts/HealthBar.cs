using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class HealthBar : MonoBehaviour
{
    public Slider healthSlider; // ü�� �� Slider
    public Transform target; // ü�� �ٰ� ���� ĳ������ Transform

    void Update()
    {
        // ü�� �ٰ� ĳ���� �Ӹ� ���� ��ġ�ϵ��� ����
        if (target != null)
        {
            transform.position = target.position + Vector3.up * 2.0f; // ĳ���� �Ӹ� ���� ��ġ (���̴� �ʿ信 ���� ����)
            
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
