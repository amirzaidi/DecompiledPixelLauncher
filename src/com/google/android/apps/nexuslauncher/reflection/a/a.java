// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import android.content.Intent;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.d.i;
import java.util.ArrayList;
import java.util.Calendar;
import android.media.AudioManager;
import android.os.Handler;
import android.content.IntentFilter;
import android.content.Context;
import com.google.android.apps.nexuslauncher.reflection.b.b;
import com.google.android.apps.nexuslauncher.reflection.o;
import android.content.BroadcastReceiver;

public class a extends BroadcastReceiver implements o
{
    private boolean a;
    private long b;
    private final b c;
    private boolean d;
    private long e;
    private final Context mContext;
    
    public a(final b c, final Context mContext) {
        final long n = 0L;
        this.e = n;
        this.b = n;
        this.mContext = mContext;
        this.c = c;
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.HEADSET_PLUG");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        mContext.registerReceiver((BroadcastReceiver)this, intentFilter, (String)null, new Handler());
        final AudioManager audioManager = (AudioManager)mContext.getSystemService("audio");
        this.d = audioManager.isWiredHeadsetOn();
        this.a = (audioManager.isBluetoothA2dpOn() || audioManager.isBluetoothScoOn());
    }
    
    protected void a(final boolean a) {
        this.a = a;
        this.b = Calendar.getInstance().getTimeInMillis();
        this.b();
    }
    
    public void b() {
        final long n = 0L;
        final ArrayList<com.google.android.apps.nexuslauncher.reflection.b.a> list = new ArrayList<com.google.android.apps.nexuslauncher.reflection.b.a>(4);
        if (this.e > n) {
            final i i = new i();
            i.aC = "headset";
            i.aD = this.e;
            String ae;
            if (this.d) {
                ae = "headset_wired_in";
            }
            else {
                ae = "headset_wired_out";
            }
            i.aE = ae;
            list.add(new com.google.android.apps.nexuslauncher.reflection.b.a(i));
        }
        if (this.b > n) {
            final i j = new i();
            j.aC = "headset";
            j.aD = this.b;
            String ae2;
            if (this.a) {
                ae2 = "headset_bluetooth_in";
            }
            else {
                ae2 = "headset_bluetooth_out";
            }
            j.aE = ae2;
            list.add(new com.google.android.apps.nexuslauncher.reflection.b.a(j));
        }
        com.google.research.reflection.common.b.Tb(this.c, "headset", list);
    }
    
    public void c() {
        this.mContext.unregisterReceiver((BroadcastReceiver)this);
    }
    
    protected void d(final boolean d) {
        this.d = d;
        this.e = Calendar.getInstance().getTimeInMillis();
        this.b();
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final boolean b = true;
        final int n = -1;
        if (intent.getAction().equals("android.intent.action.HEADSET_PLUG") && (this.isInitialStickyBroadcast() ^ true)) {
            switch (intent.getIntExtra("state", n)) {
                case 1: {
                    this.d(b);
                    break;
                }
                case 0: {
                    this.d(false);
                    break;
                }
            }
        }
        else if (intent.getAction().equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED") && (this.isInitialStickyBroadcast() ^ true)) {
            switch (intent.getIntExtra("android.bluetooth.profile.extra.STATE", n)) {
                case 0: {
                    this.a(false);
                    break;
                }
                case 2: {
                    this.a(b);
                    break;
                }
            }
        }
    }
}
