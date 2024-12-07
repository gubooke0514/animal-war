using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class DetectNextScene : MonoBehaviour
{
    // Start is called before the first frame update

    public Rat Rat;
    public PlayableDirector PlayableDirector;
    public AudioSource AudioSource;
    bool loop = true;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Rat.endGame && loop)
        {
            PlayableDirector.Play();
            loop = false;
            AudioSource.Stop();
        }
    }
}
