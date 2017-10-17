// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;
import android.os.Handler;

class Workspace$DeferredWidgetRefresh implements Runnable
{
    private final Handler mHandler;
    private final LauncherAppWidgetHost mHost;
    private final ArrayList mInfos;
    private boolean mRefreshPending;
    final /* synthetic */ Workspace this$0;
    
    public Workspace$DeferredWidgetRefresh(final Workspace this$0, final ArrayList mInfos, final LauncherAppWidgetHost mHost) {
        this.this$0 = this$0;
        this.mInfos = mInfos;
        this.mHost = mHost;
        this.mHandler = new Handler();
        this.mRefreshPending = true;
        this.mHost.addProviderChangeListener(this);
        this.mHandler.postDelayed((Runnable)this, 10000L);
    }
    
    public void run() {
        this.mHost.removeProviderChangeListener(this);
        this.mHandler.removeCallbacks((Runnable)this);
        if (!this.mRefreshPending) {
            return;
        }
        this.mRefreshPending = false;
        this.this$0.mapOverItems(false, new Workspace$DeferredWidgetRefresh$1(this));
    }
}
