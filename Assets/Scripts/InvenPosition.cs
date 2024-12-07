using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class InvenPosition : MonoBehaviour
{
    // Start is called before the first frame update

    bool Open = false;
    public OVRInput.RawButton selectButton;
    public GameObject CardBlock;
    public float CloseSpeed;

    public AudioSource AudioSource;
    int count = 0;
    void Start()
    {
        AudioSource = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Open)
        {
            transform.localScale = Vector3.Lerp(transform.localScale, new Vector3(1f, 1f, 1f), Time.deltaTime * CloseSpeed);
            AudioSource.Play();
            StartCoroutine(EnableCard());
        }
        else
        {
            CardBlock.SetActive(false);
            AudioSource.Play();
            transform.localScale = Vector3.Lerp(transform.localScale, new Vector3(0.3f, 0.3f, 0.3f), Time.deltaTime * CloseSpeed);
            
        }

        if (OVRInput.GetDown(selectButton) && count == 0)
        {
            Open = true;
            count=1;
        }
        else if(OVRInput.GetDown(selectButton) && count == 1)
        {
            Open= false;
            count=0;
        }
    }

    IEnumerator EnableCard()
    {
        yield return new WaitForSeconds(1.0f);
        CardBlock.SetActive(true);
    }


}
