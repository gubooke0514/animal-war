using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Timeline;
public class stage1dummyCardChoice : MonoBehaviour
{
    public PlayableDirector playerableDirector;

    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.tag == "dummy")
        {
            Debug.Log("stage 1");
            playerableDirector.Play();
            gameObject.GetComponent<BoxCollider>().enabled = false;
        }
    }
}
