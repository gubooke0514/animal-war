using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;

public class Stage1CardChoice : MonoBehaviour
{
    // Start is called before the first frame update
    //public GameObject CardChoice;
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
            Debug.Log("Ä«µå ¼±ÅÃµÊ");
            playerableDirector.Play();
        }
    }
}
