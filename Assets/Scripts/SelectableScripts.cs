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

    public bool haveCard; // 다른 스크립트에서 관리 해줘야 함

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
            Debug.Log("버튼 눌림");
            dummyGrab = false;
        }
        else if (OVRInput.GetUp(selectButton) && !dummyGrab)
        {
            dummy.transform.SetParent(null);
        }

        if (OVRInput.GetDown(selectButton) && cardGrab)
        {
            card.transform.SetParent(this.transform);
            Debug.Log("버튼 눌림");
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
            Debug.Log("더미 확인");
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
            Debug.Log("더미 탈출");
            dummyGrab = false;

        }
        if (other.tag == "card")
        {

        }
    }

}
