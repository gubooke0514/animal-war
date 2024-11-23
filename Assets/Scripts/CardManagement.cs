using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CardManagement : MonoBehaviour
{
    GameObject cardBoard;

    void Start()
    {
        cardBoard = GameObject.Find("CardBoard");
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "card")
        {
            Debug.Log("Ä«µå Á¢ÃË");
            other.transform.position = this.transform.position;
            other.transform.rotation = this.transform.rotation;
            //other.transform.localScale = 
            other.transform.SetParent(cardBoard.transform);
        }
    }
}
