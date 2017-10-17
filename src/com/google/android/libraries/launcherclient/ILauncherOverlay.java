// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.libraries.launcherclient;

import android.view.WindowManager$LayoutParams;
import android.os.Bundle;
import android.os.IInterface;

public interface ILauncherOverlay extends IInterface
{
    void closeOverlay(final int p0);
    
    void endScroll();
    
    String getVoiceSearchLanguage();
    
    boolean hasOverlayContent();
    
    boolean isVoiceDetectionRunning();
    
    void onPause();
    
    void onResume();
    
    void onScroll(final float p0);
    
    void openOverlay(final int p0);
    
    void requestVoiceDetection(final boolean p0);
    
    void setActivityState(final int p0);
    
    void startScroll();
    
    boolean startSearch(final byte[] p0, final Bundle p1);
    
    void windowAttached(final WindowManager$LayoutParams p0, final ILauncherOverlayCallback p1, final int p2);
    
    void windowAttached2(final Bundle p0, final ILauncherOverlayCallback p1);
    
    void windowDetached(final boolean p0);
}
