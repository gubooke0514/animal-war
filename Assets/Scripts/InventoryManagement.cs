using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryManagement : MonoBehaviour
{
    // Start is called before the first frame update
    public CardManagement block1;
    public CardManagement block2;
    public CardManagement block3;
    public CardManagement block4;
    public CardManagement block5;
    public CardManagement block6;
    public CardManagement block7;
    public CardManagement block8;

    public GameObject co1;
    public GameObject co2;
    public GameObject co3;
    public GameObject co4;
    public GameObject co5;
    public GameObject co6;
    public GameObject co7;
    public GameObject co8;

    public SelectableScripts SelectableScripts;
    void Start()
    {
        

        block1 = GameObject.Find("block1").GetComponent<CardManagement>();
        block2 = GameObject.Find("block2").GetComponent<CardManagement>();
        block3 = GameObject.Find("block3").GetComponent<CardManagement>();
        block4 = GameObject.Find("block4").GetComponent<CardManagement>();
        block5 = GameObject.Find("block5").GetComponent<CardManagement>();
        block6 = GameObject.Find("block6").GetComponent<CardManagement>();
        block7 = GameObject.Find("block7").GetComponent<CardManagement>();
        block8 = GameObject.Find("block8").GetComponent<CardManagement>();

    }

    // Update is called once per frame
    void Update()
    {
        co1 = GameObject.Find("block1");
        co2 = GameObject.Find("block2");
        co3 = GameObject.Find("block3");
        co4 = GameObject.Find("block4");
        co5 = GameObject.Find("block5");
        co6 = GameObject.Find("block6");
        co7 = GameObject.Find("block7");
        co6 = GameObject.Find("block7");

        if (block1.haveCard)
        {
            co1.GetComponent<BoxCollider>().enabled = false;

            if(SelectableScripts.card == block1.unitCard)
            {
                co1.GetComponent<BoxCollider>().enabled = true;
                Debug.Log("콜라이더 켜짐");
                block1.unitCard = null;
                block1.haveCard = false;

            }
        }

        if (block2.haveCard)
        {
            co2.GetComponent<BoxCollider>().enabled = false;

            if (SelectableScripts.card == block2.unitCard)
            {
                co2.GetComponent<BoxCollider>().enabled = true;
                block2.unitCard = null;
                block2.haveCard = false;
            }
        }

        if (block3.haveCard)
        {
            co3.GetComponent<BoxCollider>().enabled = false;

            if (SelectableScripts.card == block3.unitCard)
            {
                co3.GetComponent<BoxCollider>().enabled = true;
                block3.unitCard = null;
                block3.haveCard = false;
            }


        }

        if (block4.haveCard)
        {
            co4.GetComponent<BoxCollider>().enabled = false;

            if (SelectableScripts.card == block4.unitCard)
            {
                co4.GetComponent<BoxCollider>().enabled = true;
                block4.unitCard = null;
                block4.haveCard = false;
            }
        }

        if (block5.haveCard)
        {
            co5.GetComponent<BoxCollider>().enabled = false;

            if (SelectableScripts.card == block5.unitCard)
            {
                co5.GetComponent<BoxCollider>().enabled = true;
                block5.unitCard = null;
                block5.haveCard = false;
            }
        }

        if (block6.haveCard)
        {
            co6.GetComponent<BoxCollider>().enabled = false;

            if (SelectableScripts.card == block6.unitCard)
            {
                co6.GetComponent<BoxCollider>().enabled = true;
                block6.unitCard = null;
                block6.haveCard = false;
            }
        }

        if (block7.haveCard)
        {
            co7.GetComponent<BoxCollider>().enabled = false;

            if (SelectableScripts.card == block7.unitCard)
            {
                co7.GetComponent<BoxCollider>().enabled = true;
                block7.unitCard = null;
                block7.haveCard = false;
            }
        }

        if (block8.haveCard)
        {
            co8.GetComponent<BoxCollider>().enabled = false;

            if (SelectableScripts.card == block8.unitCard)
            {
                co8.GetComponent<BoxCollider>().enabled = true;
                block8.unitCard = null;
                block8.haveCard = false;
            }
        }
    }
}
