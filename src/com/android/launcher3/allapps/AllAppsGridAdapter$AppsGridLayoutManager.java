// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

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
import android.support.v7.widget.Q;
import android.content.Intent;
import android.view.LayoutInflater;
import com.android.launcher3.Launcher;
import android.view.View$OnLongClickListener;
import android.view.View$OnFocusChangeListener;
import android.view.View$OnClickListener;
import android.support.v7.widget.q;
import android.view.ViewGroup$LayoutParams;
import android.support.v4.view.a.l;
import android.support.v7.widget.O;
import android.support.v4.view.a.a;
import android.view.View;
import android.support.v4.view.a.v;
import android.support.v4.view.a.r;
import android.view.accessibility.AccessibilityEvent;
import android.support.v7.widget.e;
import android.support.v7.widget.s;
import java.util.List;
import android.content.Context;
import android.support.v7.widget.M;

public class AllAppsGridAdapter$AppsGridLayoutManager extends M
{
    final /* synthetic */ AllAppsGridAdapter this$0;
    
    public AllAppsGridAdapter$AppsGridLayoutManager(final AllAppsGridAdapter this$0, final Context context) {
        final int n = 1;
        this.this$0 = this$0;
        super(context, n, n, false);
    }
    
    private int getRowsNotForAccessibility(final int n) {
        final List adapterItems = this.this$0.mApps.getAdapterItems();
        final int max = Math.max(n, this.this$0.mApps.getAdapterItems().size() - 1);
        int i = 0;
        int n2 = 0;
        while (i <= max) {
            int n3;
            if (!AllAppsGridAdapter.isViewType(adapterItems.get(i).viewType, 518)) {
                n3 = n2 + 1;
            }
            else {
                n3 = n2;
            }
            ++i;
            n2 = n3;
        }
        return n2;
    }
    
    public int getPaddingBottom() {
        return this.this$0.mLauncher.getDragLayer().getInsets().bottom;
    }
    
    public int getRowCountForAccessibility(final s s, final e e) {
        return super.getRowCountForAccessibility(s, e) - this.getRowsNotForAccessibility(this.this$0.mApps.getAdapterItems().size() - 1);
    }
    
    public void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        final v aeY = r.aeY(accessibilityEvent);
        aeY.afc(this.this$0.mApps.getNumFilteredApps());
        aeY.afb(Math.max(0, aeY.afd() - this.getRowsNotForAccessibility(aeY.afd())));
        aeY.afg(Math.max(0, aeY.afe() - this.getRowsNotForAccessibility(aeY.afe())));
    }
    
    public void onInitializeAccessibilityNodeInfoForItem(final s s, final e e, final View view, final a a) {
        super.onInitializeAccessibilityNodeInfoForItem(s, e, view, a);
        final ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        final l adG = a.adG();
        if (!(layoutParams instanceof O) || adG == null) {
            return;
        }
        a.adL(l.aeO(adG.aeQ() - this.getRowsNotForAccessibility(((O)layoutParams).Xb()), adG.aeN(), adG.aeS(), adG.aeP(), adG.aeT(), adG.aeR()));
    }
}
