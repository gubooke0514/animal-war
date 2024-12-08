using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class TimeStoping : MonoBehaviour
{
    // Start is called before the first frame update

    public OVRInput.RawButton stopButton;
    bool stopped;
    void Start()
    {
        stopped = false;
    }

    // Update is called once per frame
    void Update()
    {
        if (OVRInput.GetDown(stopButton) && !stopped)
        {
            Time.timeScale = 0;
            stopped = true;
        }
        else if(OVRInput.GetDown(stopButton) && stopped)
        {
            Time.timeScale = 1;
            stopped = false;
        }
    }
}
