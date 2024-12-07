using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChickenHand : MonoBehaviour
{
    public GameObject eggPrefab; // 발사할 알 프리팹
    public Transform shootPoint; // 알이 발사될 위치
    public float shootForce = 15f; // 알이 발사되는 힘
    public float explosionRadius = 5f; // 폭발 반경
    public int explosionDamage = 50; // 폭발 데미지
    public OVRInput.RawButton shootingButton; // 발사 버튼 (VR 컨트롤러)
    public AudioSource shootingSound;

    void Update()
    {
        if (OVRInput.GetDown(shootingButton)) // VR 컨트롤러의 발사 버튼 입력
        {
            ShootEgg();
        }
    }

    void ShootEgg()
    {
        GameObject egg = Instantiate(eggPrefab, shootPoint.position, shootPoint.rotation); // 알 생성
        Rigidbody rb = egg.GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.AddForce(shootPoint.forward * shootForce, ForceMode.Impulse); // 알을 앞으로 발사
            shootingSound.Play();
        }
        Egg eggScript = egg.AddComponent<Egg>(); // 알에 폭발 스크립트 추가
        eggScript.explosionRadius = explosionRadius;
        eggScript.explosionDamage = explosionDamage;
    }
}
