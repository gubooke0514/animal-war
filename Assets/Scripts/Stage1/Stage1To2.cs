using System.Collections;
using System.Collections.Generic;
using UnityEditor.SearchService;
using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.SceneManagement;

public class Stage1To2 : MonoBehaviour
{
    // Start is called before the first frame update
    public PlayableDirector PlayableDirector;

    public GameObject LeftHand;
    public GameObject RightHand;
    public GameObject Inventory;
    public GameObject Selectable;

    public GameObject navMesh;
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
            PlayableDirector.Play();
            LeftHand.SetActive(false);
            RightHand.SetActive(false);
            Inventory.SetActive(true);
            Selectable.SetActive(true);
            navMesh.SetActive(false);
        }
    }

    public void Stage1Goto2()
    {
        SceneManager.LoadScene("PlayBoard2");
    }
}
