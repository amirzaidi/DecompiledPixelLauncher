// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

import android.os.Process;
import android.util.Log;
import android.view.ViewGroup$LayoutParams;
import android.view.View;
import android.widget.LinearLayout$LayoutParams;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.TextView;
import android.widget.LinearLayout;

public class WeightWatcher$ProcessWatcher extends LinearLayout
{
    MemoryTracker$ProcessMemInfo mMemInfo;
    int mPid;
    WeightWatcher$ProcessWatcher$GraphView mRamGraph;
    TextView mText;
    final /* synthetic */ WeightWatcher this$0;
    
    public WeightWatcher$ProcessWatcher(final WeightWatcher weightWatcher, final Context context) {
        this(weightWatcher, context, null);
    }
    
    public WeightWatcher$ProcessWatcher(final WeightWatcher this$0, final Context context, final AttributeSet set) {
        this.this$0 = this$0;
        super(context, set);
        final float density = this.getResources().getDisplayMetrics().density;
        (this.mText = new TextView(this.getContext())).setTextColor(-1);
        this.mText.setTextSize(0, 10.0f * density);
        this.mText.setGravity(19);
        final int n = (int)(2.0f * density);
        this.setPadding(n, 0, n, 0);
        this.mRamGraph = new WeightWatcher$ProcessWatcher$GraphView(this, this.getContext());
        final LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(0, (int)(14.0f * density), 1.0f);
        this.addView((View)this.mText, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        linearLayout$LayoutParams.leftMargin = (int)(4.0f * density);
        linearLayout$LayoutParams.weight = 0.0f;
        linearLayout$LayoutParams.width = (int)(density * 200.0f);
        this.addView((View)this.mRamGraph, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
    }
    
    public int getPid() {
        return this.mPid;
    }
    
    public String getUptimeString() {
        final long n = 86400L;
        final long n2 = 3600L;
        final long n3 = 60;
        final long n4 = 0L;
        long n5 = this.mMemInfo.getUptime() / 1000L;
        final StringBuilder sb = new StringBuilder();
        final int n6 = (int)(n5 / n);
        if (n6 > n4) {
            n5 -= n * n6;
            sb.append((long)n6);
            sb.append("d");
        }
        final int n7 = (int)(n5 / n2);
        if (n7 > n4) {
            n5 -= n7 * n2;
            sb.append((long)n7);
            sb.append("h");
        }
        final int n8 = (int)(n5 / n3);
        if (n8 > n4) {
            n5 -= n8 * n3;
            sb.append((long)n8);
            sb.append("m");
        }
        sb.append(n5);
        sb.append("s");
        return sb.toString();
    }
    
    public void setPid(final int mPid) {
        this.mPid = mPid;
        this.mMemInfo = this.this$0.mMemoryService.getMemInfo(this.mPid);
        if (this.mMemInfo == null) {
            Log.v("WeightWatcher", "Missing info for pid " + this.mPid + ", removing view: " + this);
            this.this$0.initViews();
        }
    }
    
    public void update() {
        final TextView mText = this.mText;
        final StringBuilder append = new StringBuilder().append("(").append(this.mPid);
        String s;
        if (this.mPid == Process.myPid()) {
            s = "/A";
        }
        else {
            s = "/S";
        }
        mText.setText((CharSequence)append.append(s).append(") up ").append(this.getUptimeString()).append(" P=").append(this.mMemInfo.currentPss).append(" U=").append(this.mMemInfo.currentUss).toString());
        this.mRamGraph.invalidate();
    }
}
