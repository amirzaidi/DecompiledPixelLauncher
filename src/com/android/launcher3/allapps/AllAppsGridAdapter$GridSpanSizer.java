// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import com.android.launcher3.AppInfo;
import android.widget.TextView;
import com.android.launcher3.discovery.AppDiscoveryAppInfo;
import com.android.launcher3.discovery.AppDiscoveryItemView;
import android.view.View$AccessibilityDelegate;
import com.android.launcher3.BubbleTextView;
import android.support.v7.widget.j;
import android.graphics.Point;
import android.content.res.Resources;
import android.content.Context;
import android.content.Intent;
import android.view.LayoutInflater;
import com.android.launcher3.Launcher;
import android.view.View$OnLongClickListener;
import android.view.View$OnFocusChangeListener;
import android.view.View$OnClickListener;
import android.support.v7.widget.M;
import android.support.v7.widget.q;
import android.support.v7.widget.Q;

public class AllAppsGridAdapter$GridSpanSizer extends Q
{
    final /* synthetic */ AllAppsGridAdapter this$0;
    
    public AllAppsGridAdapter$GridSpanSizer(final AllAppsGridAdapter this$0) {
        this.this$0 = this$0;
        this.setSpanIndexCacheEnabled(true);
    }
    
    public int getSpanSize(final int n) {
        if (AllAppsGridAdapter.isIconViewType(this.this$0.mApps.getAdapterItems().get(n).viewType)) {
            return 1;
        }
        return this.this$0.mAppsPerRow;
    }
}
