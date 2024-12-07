using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Playables;

public class UpgradeCard : MonoBehaviour
{
    // Start is called before the first frame update
    public CardManagement block;
    public PlayableDirector PlayableDirector;
    public GameObject card;
    bool loop = true;
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        if (block == null) {
            return;
        }

        if (block != null) {
            if (block.haveCard && loop)
            {
                card.transform.SetParent(this.transform);
                PlayableDirector.Play();
                loop = false;
            }
        }
    }
}
