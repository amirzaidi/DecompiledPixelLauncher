// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.content.pm.LauncherApps$PinItemRequest;

final class LauncherAppsCompatVO$1 implements Runnable
{
    final /* synthetic */ long val$acceptDelay;
    final /* synthetic */ LauncherApps$PinItemRequest val$request;
    
    LauncherAppsCompatVO$1(final long val$acceptDelay, final LauncherApps$PinItemRequest val$request) {
        this.val$acceptDelay = val$acceptDelay;
        this.val$request = val$request;
    }
    
    public void run() {
        try {
            final long val$acceptDelay = this.val$acceptDelay;
            try {
                Thread.sleep(val$acceptDelay);
                if (this.val$request.isValid()) {
                    this.val$request.accept();
                }
            }
            catch (InterruptedException ex) {}
        }
        catch (InterruptedException ex2) {}
    }
}
