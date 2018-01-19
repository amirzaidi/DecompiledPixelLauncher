// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.e;

import android.content.Intent;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.f.i;
import com.google.android.apps.nexuslauncher.reflection.d.a;
import java.util.ArrayList;
import java.util.Calendar;
import android.media.AudioManager;
import android.os.Handler;
import android.content.IntentFilter;
import android.content.Context;
import com.google.android.apps.nexuslauncher.reflection.d.b;
import com.google.android.apps.nexuslauncher.reflection.l;
import android.content.BroadcastReceiver;

public class e extends BroadcastReceiver implements l
{
    private boolean V;
    private long W;
    private final b X;
    private boolean Y;
    private long Z;
    private final Context mContext;
    
    public e(final b x, final Context mContext) {
        final long n = 0L;
        this.Z = n;
        this.W = n;
        this.mContext = mContext;
        this.X = x;
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.HEADSET_PLUG");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        mContext.registerReceiver((BroadcastReceiver)this, intentFilter, (String)null, new Handler());
        final AudioManager audioManager = (AudioManager)mContext.getSystemService("audio");
        this.Y = audioManager.isWiredHeadsetOn();
        this.V = (audioManager.isBluetoothA2dpOn() || audioManager.isBluetoothScoOn());
    }
    
    protected void aA(final boolean y) {
        this.Y = y;
        this.Z = Calendar.getInstance().getTimeInMillis();
        this.az();
    }
    
    public void aw() {
        this.mContext.unregisterReceiver((BroadcastReceiver)this);
    }
    
    protected void ay(final boolean v) {
        this.V = v;
        this.W = Calendar.getInstance().getTimeInMillis();
        this.az();
    }
    
    public void az() {
        final long n = 0L;
        final ArrayList<a> list = new ArrayList<a>(4);
        if (this.Z > n) {
            final i i = new i();
            i.aM = "headset";
            i.aN = this.Z;
            String ap;
            if (this.Y) {
                ap = "headset_wired_in";
            }
            else {
                ap = "headset_wired_out";
            }
            i.aP = ap;
            list.add(new a(i));
        }
        if (this.W > n) {
            final i j = new i();
            j.aM = "headset";
            j.aN = this.W;
            String ap2;
            if (this.V) {
                ap2 = "headset_bluetooth_in";
            }
            else {
                ap2 = "headset_bluetooth_out";
            }
            j.aP = ap2;
            list.add(new a(j));
        }
        com.google.research.reflection.common.b.HF(this.X, "headset", list);
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final boolean b = true;
        final int n = -1;
        if (intent.getAction().equals("android.intent.action.HEADSET_PLUG") && (this.isInitialStickyBroadcast() ^ true)) {
            switch (intent.getIntExtra("state", n)) {
                case 1: {
                    this.aA(b);
                    break;
                }
                case 0: {
                    this.aA(false);
                    break;
                }
            }
        }
        else if (intent.getAction().equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED") && (this.isInitialStickyBroadcast() ^ true)) {
            switch (intent.getIntExtra("android.bluetooth.profile.extra.STATE", n)) {
                case 0: {
                    this.ay(false);
                    break;
                }
                case 2: {
                    this.ay(b);
                    break;
                }
            }
        }
    }
}
