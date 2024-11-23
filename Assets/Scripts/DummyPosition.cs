using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DummyPosition : MonoBehaviour
{
    // Start is called before the first frame update

    public float height;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "Board")
        {
            Debug.Log("∫∏µÂ ¡¢√À");
            this.transform.position = other.transform.position + new Vector3(0, height, 0);
            this.transform.rotation = Quaternion.identity;
            this.transform.SetParent(other.transform);
        }
    }
    public void OnTriggerExit(Collider other)
    {
        if (other.tag == "Board")
        {
            //this.transform.SetParent(null);
        }
    }
}
