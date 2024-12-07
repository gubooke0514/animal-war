using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ChickenHand : MonoBehaviour
{
    public GameObject eggPrefab; // �߻��� �� ������
    public Transform shootPoint; // ���� �߻�� ��ġ
    public float shootForce = 15f; // ���� �߻�Ǵ� ��
    public float explosionRadius = 5f; // ���� �ݰ�
    public int explosionDamage = 50; // ���� ������
    public OVRInput.RawButton shootingButton; // �߻� ��ư (VR ��Ʈ�ѷ�)
    public AudioSource shootingSound;

    void Update()
    {
        if (OVRInput.GetDown(shootingButton)) // VR ��Ʈ�ѷ��� �߻� ��ư �Է�
        {
            ShootEgg();
        }
    }

    void ShootEgg()
    {
        GameObject egg = Instantiate(eggPrefab, shootPoint.position, shootPoint.rotation); // �� ����
        Rigidbody rb = egg.GetComponent<Rigidbody>();
        if (rb != null)
        {
            rb.AddForce(shootPoint.forward * shootForce, ForceMode.Impulse); // ���� ������ �߻�
            shootingSound.Play();
        }
        Egg eggScript = egg.AddComponent<Egg>(); // �˿� ���� ��ũ��Ʈ �߰�
        eggScript.explosionRadius = explosionRadius;
        eggScript.explosionDamage = explosionDamage;
    }
}
