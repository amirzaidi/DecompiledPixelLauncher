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
    private DateFormat eR;
    private final BroadcastReceiver eS;
    private boolean eT;
    
    public IcuDateTextView(final Context context) {
        this(context, null);
    }
    
    public IcuDateTextView(final Context context, final AttributeSet set) {
        super(context, set, 0);
        this.eS = new a(this);
    }
    
    private void dr(final boolean b) {
        if (this.eR == null || b) {
            (this.eR = DateFormat.getInstanceForSkeleton(this.getContext().getString(2131493021), Locale.getDefault())).setContext(DisplayContext.CAPITALIZATION_FOR_STANDALONE);
        }
        final String format = this.eR.format((Object)System.currentTimeMillis());
        this.setText((CharSequence)format);
        this.setContentDescription((CharSequence)format);
    }
    
    private void ds() {
        final IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        this.getContext().registerReceiver(this.eS, intentFilter);
    }
    
    private void dt() {
        this.getContext().unregisterReceiver(this.eS);
    }
    
    public void onVisibilityAggregated(final boolean b) {
        final boolean et = true;
        super.onVisibilityAggregated(b);
        if (!this.eT && b) {
            this.eT = et;
            this.ds();
            this.dr(et);
        }
        else if (this.eT && (b ^ true)) {
            this.dt();
            this.eT = false;
        }
    }
}
