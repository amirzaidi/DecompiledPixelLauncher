// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.graphics;

import android.content.IntentFilter;
import android.icu.text.DisplayContext;
import java.util.Locale;
import android.util.AttributeSet;
import android.content.Context;
import android.content.BroadcastReceiver;
import android.icu.text.DateFormat;

public class IcuDateTextView extends DoubleShadowTextView
{
    private DateFormat fU;
    private final BroadcastReceiver fV;
    private boolean fW;
    
    public IcuDateTextView(final Context context) {
        this(context, null);
    }
    
    public IcuDateTextView(final Context context, final AttributeSet set) {
        super(context, set, 0);
        this.fV = new a(this);
    }
    
    private void eA() {
        this.getContext().unregisterReceiver(this.fV);
    }
    
    private void ey(final boolean b) {
        if (this.fU == null || b) {
            (this.fU = DateFormat.getInstanceForSkeleton(this.getContext().getString(2131493020), Locale.getDefault())).setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        }
        final String format = this.fU.format((Object)System.currentTimeMillis());
        this.setText((CharSequence)format);
        this.setContentDescription((CharSequence)format);
    }
    
    private void ez() {
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        this.getContext().registerReceiver(this.fV, intentFilter);
    }
    
    public void onVisibilityAggregated(final boolean b) {
        final boolean fw = true;
        super.onVisibilityAggregated(b);
        if (!this.fW && b) {
            this.fW = fw;
            this.ez();
            this.ey(fw);
        }
        else if (this.fW && (b ^ true)) {
            this.eA();
            this.fW = false;
        }
    }
}
