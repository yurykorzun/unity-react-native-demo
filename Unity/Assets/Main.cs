using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Main : MonoBehaviour
{
    public Button _hitMeButton;

    // Start is called before the first frame update
    void Start()
    {
        _hitMeButton.onClick.AddListener(LaunchReactNative);
    }

    void LaunchReactNative()
    {
        Debug.Log("Launching React Native");
        iOSReactNativePlugin.OpenReactNativeView();
    }
}
