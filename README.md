Unity Compiler Definitions
==========================

This script shows all the operant [Unity platform specific compiler definitions](https://docs.unity3d.com/Manual/PlatformDependentCompilation.html), e.g. NET_STANDARD_2_0, UNITY_5_0, UNITY_2018_2_0, etc.  

Motivation
----------

I wrote this because I wanted to easily determine the delta between two Unity settings while maintaining [Minibuffer Console](http://seawisphunter.com/products/minibuffer/) and [Custom Pointer](http://seawisphunter.com/products/custom-pointer/).  Writing a t4 script to just go through the numerous possibilities seemed a sane route.  (It's the UNITY_X_Y_Z part that'll get ya.)

Example
-------

For a project, the `CompilerDefinitions.cs` script produces this output to the debug log.

```
UNITY_EDITOR defined.
UNITY_EDITOR_OSX defined.
UNITY_STANDALONE_OSX defined.
UNITY_STANDALONE defined.
UNITY_ANALYTICS defined.
UNITY_ASSERTIONS defined.
ENABLE_MONO defined.
NET_4_6 defined.
UNITY_2018 defined.
UNITY_2018_2 defined.
UNITY_2018_2_0 defined.
```

Setup
-----

Add the `CompilerDefinitions` component to a game object.

Extension
---------

Inherit and override the `Defined(string define)` method.

```cs
  public virtual void Defined(string define) {
    Debug.Log(define + " defined.");
  }
```

Contributing
------------

Edit the `CompilerDefinitions.tt` file.

License
-------

This project is released under the MIT license.
