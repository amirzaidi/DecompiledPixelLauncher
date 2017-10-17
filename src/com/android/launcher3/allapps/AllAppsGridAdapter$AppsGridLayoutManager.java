// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.util.PackageManagerHelper;
import android.view.View$AccessibilityDelegate;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.TextView;
import com.android.launcher3.discovery.AppDiscoveryAppInfo;
import com.android.launcher3.discovery.AppDiscoveryItemView;
import com.android.launcher3.BubbleTextView;
import android.support.v7.widget.j;
import android.content.res.Resources;
import com.android.launcher3.anim.SpringAnimationHandler$AnimationFactory;
import com.android.launcher3.config.FeatureFlags;
import android.support.v7.widget.Q;
import com.android.launcher3.anim.SpringAnimationHandler;
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
import android.support.v4.view.a.r;
import android.support.v4.view.a.n;
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
            if (!AllAppsGridAdapter.isViewType(adapterItems.get(i).viewType, 262)) {
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
    
    public int getRowCountForAccessibility(final s s, final e e) {
        return super.getRowCountForAccessibility(s, e) - this.getRowsNotForAccessibility(this.this$0.mApps.getAdapterItems().size() - 1);
    }
    
    public void onInitializeAccessibilityEvent(final AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        final r afZ = n.afZ(accessibilityEvent);
        afZ.agd(this.this$0.mApps.getNumFilteredApps());
        afZ.agc(Math.max(0, afZ.age() - this.getRowsNotForAccessibility(afZ.age())));
        afZ.agh(Math.max(0, afZ.agf() - this.getRowsNotForAccessibility(afZ.agf())));
    }
    
    public void onInitializeAccessibilityNodeInfoForItem(final s s, final e e, final View view, final a a) {
        super.onInitializeAccessibilityNodeInfoForItem(s, e, view, a);
        final ViewGroup$LayoutParams layoutParams = view.getLayoutParams();
        final l aeI = a.aeI();
        if (!(layoutParams instanceof O) || aeI == null) {
            return;
        }
        a.aeN(l.afQ(aeI.afS() - this.getRowsNotForAccessibility(((O)layoutParams).Yb()), aeI.afP(), aeI.afU(), aeI.afR(), aeI.afV(), aeI.afT()));
    }
}
