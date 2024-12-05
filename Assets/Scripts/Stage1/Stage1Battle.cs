using Oculus.Platform.Models;
using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Stage1Battle : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject stage1;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetKey(KeyCode.Escape)) {
            stage1.transform.localScale = Vector3.Lerp(transform.localScale, new Vector3(9.49f, 5.33f, 5.33f), Time.deltaTime);
            stage1.transform.localPosition = Vector3.Lerp(transform.localPosition, new Vector3(0.0850000083f, -0.239999995f, 19.75f), Time.deltaTime);

        }
    }
}
