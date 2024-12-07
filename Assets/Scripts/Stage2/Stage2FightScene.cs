using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;

public class Stage2FightScene : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {

    }

    // Update is called once per frame
    void Update()
    {

    }

    public void Stage2Fight()
    {
        SceneManager.LoadScene("stage2Fight");
    }

    public void Stage3Fight()
    {
        SceneManager.LoadScene("stage3Fight");
    }
}
