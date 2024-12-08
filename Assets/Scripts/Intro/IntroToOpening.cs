using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.SceneManagement;


public class IntroToOpening : MonoBehaviour
{
    // Start is called before the first frame update

    public PlayableDirector PlayableDirector;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void IntToOpen()
    {
        SceneManager.LoadScene("Opening");

    }

    public void OnTriggerEnter(Collider other)
    {
        if(other.tag == "Choice")
        {
            PlayableDirector.Play();
        }
    }
}
