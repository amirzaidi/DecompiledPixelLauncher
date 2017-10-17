// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.SystemClock;
import android.os.Handler;

public class Alarm implements Runnable
{
    private OnAlarmListener mAlarmListener;
    private boolean mAlarmPending;
    private long mAlarmTriggerTime;
    private Handler mHandler;
    private boolean mWaitingForCallback;
    
    public Alarm() {
        this.mAlarmPending = false;
        this.mHandler = new Handler();
    }
    
    public boolean alarmPending() {
        return this.mAlarmPending;
    }
    
    public void cancelAlarm() {
        this.mAlarmPending = false;
    }
    
    public void run() {
        this.mWaitingForCallback = false;
        if (this.mAlarmPending) {
            final long uptimeMillis = SystemClock.uptimeMillis();
            if (this.mAlarmTriggerTime > uptimeMillis) {
                this.mHandler.postDelayed((Runnable)this, Math.max(0L, this.mAlarmTriggerTime - uptimeMillis));
                this.mWaitingForCallback = true;
            }
            else {
                this.mAlarmPending = false;
                if (this.mAlarmListener != null) {
                    this.mAlarmListener.onAlarm(this);
                }
            }
        }
    }
    
    public void setAlarm(final long n) {
        final boolean b = true;
        final long uptimeMillis = SystemClock.uptimeMillis();
        this.mAlarmPending = b;
        final long mAlarmTriggerTime = this.mAlarmTriggerTime;
        this.mAlarmTriggerTime = uptimeMillis + n;
        if (this.mWaitingForCallback && mAlarmTriggerTime > this.mAlarmTriggerTime) {
            this.mHandler.removeCallbacks((Runnable)this);
            this.mWaitingForCallback = false;
        }
        if (!this.mWaitingForCallback) {
            this.mHandler.postDelayed((Runnable)this, this.mAlarmTriggerTime - uptimeMillis);
            this.mWaitingForCallback = b;
        }
    }
    
    public void setOnAlarmListener(final OnAlarmListener mAlarmListener) {
        this.mAlarmListener = mAlarmListener;
    }
}
