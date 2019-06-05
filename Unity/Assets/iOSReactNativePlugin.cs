using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.InteropServices;

public class iOSReactNativePlugin
{
    #if UNITY_IOS && !UNITY_EDITOR
    [DllImport("__Internal")]
    private static extern void _ReactNativePlugin_OpenReactNativeView();
    #endif
        public static void OpenReactNativeView()
        {
    #if UNITY_IOS && !UNITY_EDITOR
            _ReactNativePlugin_OpenReactNativeView();
    #endif
        }
}
