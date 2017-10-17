// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.os.IInterface;

public interface ILauncherOverlayCallback extends IInterface
{
    void overlayScrollChanged(final float p0);
    
    void overlayStatusChanged(final int p0);
}
