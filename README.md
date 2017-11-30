Clone repo

yarn install

Open Xcode, Run. All should be good, you'll see 3 labels on the screen.

Change the target (rncrashexample)'s scheme's Build Configuration from debug to release.

Run the app and you'll see that the child elements never make it across the bridge.

Look in NativeView.m for details.

![](scheme.png)