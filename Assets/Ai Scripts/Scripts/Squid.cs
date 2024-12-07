using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Squid : MonoBehaviour
{
    public GameObject inkProjectilePrefab; // 발사할 먹물 프리팹
    public Transform shootPoint; // 먹물이 발사될 위치
    public float shootForce = 15f; // 먹물 발사 힘
    public OVRInput.RawButton RHandButton; 

    public AudioSource AudioSource;

    private void Update()
    {
        if (OVRInput.GetDown(RHandButton))
        {
            ShootInk();
        }
    }

    void ShootInk()
    {
        GameObject inkProjectile = Instantiate(inkProjectilePrefab, shootPoint.position, shootPoint.rotation * Quaternion.Euler(90, 0, 0));
        Rigidbody rb = inkProjectile.GetComponent<Rigidbody>();

        if (rb != null)
        {
            rb.AddForce(shootPoint.forward * shootForce, ForceMode.Impulse);
            AudioSource.Play();
        }

        Debug.Log("먹물이 발사되었습니다!");
    }
}