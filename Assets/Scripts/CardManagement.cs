using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CardManagement : MonoBehaviour
{
    

    void Start()
    {
        
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
            other.transform.rotation = Quaternion.identity;
            other.transform.SetParent(this.transform);
        }
    }
}
