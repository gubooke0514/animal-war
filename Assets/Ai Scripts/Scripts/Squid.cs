using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Squid : MonoBehaviour
{
    public GameObject inkProjectilePrefab; // �߻��� �Թ� ������
    public Transform shootPoint; // �Թ��� �߻�� ��ġ
    public float shootForce = 15f; // �Թ� �߻� ��
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

        Debug.Log("�Թ��� �߻�Ǿ����ϴ�!");
    }
}