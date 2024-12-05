using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CardManagement : MonoBehaviour
{
    GameObject cardBoard;
    public SelectableScripts SelectableScripts;
    public bool canTakeCard;
    public bool canPutCard;
    public GameObject unitCard;
    public GameObject PredicObj;

    public bool haveCard;

    void Start()
    {
        cardBoard = GameObject.Find("Inven");
        
    }

    // Update is called once per frame
    void Update()
    {
        if (canPutCard)
        {
            if (SelectableScripts.cardGrab)
            {
                
                PredicObj.SetActive(true);
                if (SelectableScripts.putCard)
                {
                    unitCard = SelectableScripts.card;
                    SelectableScripts.card = null;
                    Debug.Log("Ä«µå Á¢ÃË");
                    unitCard.transform.position = this.transform.position;
                    unitCard.transform.rotation = this.transform.rotation;
                    //unitCard.transform.localScale = 

                    unitCard.transform.SetParent(cardBoard.transform);
                    SelectableScripts.cardGrab = false;
                    SelectableScripts.putCard = false;

                    haveCard = true;
                    SelectableScripts.haveCard = false;
                    PredicObj.SetActive(false);
                }
            }
            else
            {
                canPutCard = false;
            }

            
        }
        else
        {
            PredicObj.SetActive(false);
        }

    }
    public void OnTriggerEnter(Collider other)
    {

        if (other.tag == "card")
        {
            canPutCard = true;
            



        }
    }

    public void OnTriggerExit(Collider other)
    {
        if(other.tag == "card")
        {
            canPutCard= false;
        }
    }
}
