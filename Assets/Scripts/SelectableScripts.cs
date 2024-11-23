using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectableScripts : MonoBehaviour
{
    public OVRInput.RawButton selectButton;

    bool dummyGrab;
    bool cardGrab;
    GameObject dummy;
    GameObject card;
    void Start()
    {
        dummyGrab = false;
        cardGrab = false;
        dummy = GameObject.Find("dummy");
    }

    // Update is called once per frame
    void Update()
    {
        if (OVRInput.GetDown(selectButton) && dummyGrab)
        {
            dummy.transform.SetParent(this.transform);
            Debug.Log("��ư ����");
            dummyGrab = false;
        }
        else if (OVRInput.GetUp(selectButton) && !dummyGrab)
        {
            dummy.transform.SetParent(null);
        }

        if (OVRInput.GetDown(selectButton) && cardGrab)
        {
            card.transform.SetParent(this.transform);
            Debug.Log("��ư ����");
            cardGrab = false;
        }
        else if (OVRInput.GetUp(selectButton) && !cardGrab)
        {
            card.transform.SetParent(null);
        }
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "dummy")
        {
            Debug.Log("���� Ȯ��");
            dummyGrab = true;
            
        }
        if(other.tag == "card")
        {
            card = other.gameObject;
            cardGrab = true;
        }
    }

   
}
