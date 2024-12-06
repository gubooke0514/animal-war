using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class Stage1GotoFight : MonoBehaviour
{
    // Start is called before the first frame update

    public PlayableDirector playerableDirector;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Choice")
        {
            playerableDirector.Play();
            gameObject.GetComponent<BoxCollider>().enabled = false;
            this.transform.localPosition -= new Vector3(0, 0.6f, 0); 
        }
    }
}
