using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SelectableScripts : MonoBehaviour
{
    public OVRInput.RawButton selectButton;

    bool dummyGrab;
    public bool cardGrab;
    public bool putCard;
    GameObject dummy;
    public GameObject card;

    public bool haveCard; // �ٸ� ��ũ��Ʈ���� ���� ����� ��

    public bool itemCardGrab = false;
    void Start()
    {
        dummyGrab = false;
        cardGrab = false;
        putCard = false;
        haveCard = false;
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
            haveCard = true;
            //cardGrab = false;
        }
        else if (OVRInput.GetUp(selectButton) && cardGrab)
        {
            putCard = true;
            

            

        }


    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "dummy")
        {
            Debug.Log("���� Ȯ��");
            dummyGrab = true;
            
        }
        if(other.tag == "card" && !haveCard)
        {
            card = other.gameObject;
            cardGrab = true;
            
        }
        if( other.tag == "itemCard")
        {
            card = other.gameObject;
            itemCardGrab = true;

        }
    }

    public void OnTriggerStay(Collider other)
    {
        if(other.tag == "card")
        {
            card = other.gameObject;
            cardGrab = true;
        }
        if(other.tag == "itemCArd")
        {
            card = other.gameObject;
            itemCardGrab = true;
        }
    }
    public void OnTriggerExit(Collider other)
    {
        if (other.tag == "dummy")
        {
            Debug.Log("���� Ż��");
            dummyGrab = false;

        }
        if (other.tag == "card")
        {

        }
    }

}
