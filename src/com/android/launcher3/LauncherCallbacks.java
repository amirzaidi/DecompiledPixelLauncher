// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.Menu;
import android.os.Bundle;
import android.content.Intent;
import java.util.List;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import java.util.ArrayList;

public interface LauncherCallbacks
{
    void bindAllApplications(final ArrayList p0);
    
    void dump(final String p0, final FileDescriptor p1, final PrintWriter p2, final String[] p3);
    
    void finishBindingItems(final boolean p0);
    
    List getPredictedApps();
    
    boolean handleBackPressed();
    
    boolean hasCustomContentToLeft();
    
    boolean hasSettings();
    
    void onActivityResult(final int p0, final int p1, final Intent p2);
    
    void onAttachedToWindow();
    
    void onCreate(final Bundle p0);
    
    void onDestroy();
    
    void onDetachedFromWindow();
    
    void onHomeIntent();
    
    void onInteractionBegin();
    
    void onInteractionEnd();
    
    void onLauncherProviderChange();
    
    void onNewIntent(final Intent p0);
    
    void onPause();
    
    void onPostCreate(final Bundle p0);
    
    boolean onPrepareOptionsMenu(final Menu p0);
    
    void onRequestPermissionsResult(final int p0, final String[] p1, final int[] p2);
    
    void onResume();
    
    void onSaveInstanceState(final Bundle p0);
    
    void onStart();
    
    void onStop();
    
    void onTrimMemory(final int p0);
    
    void onWindowFocusChanged(final boolean p0);
    
    void onWorkspaceLockedChanged();
    
    void populateCustomContentContainer();
    
    void preOnCreate();
    
    void preOnResume();
    
    boolean shouldMoveToDefaultScreenOnHomeIntent();
    
    boolean shouldShowDiscoveryBounce();
    
    boolean startSearch(final String p0, final boolean p1, final Bundle p2);
}
