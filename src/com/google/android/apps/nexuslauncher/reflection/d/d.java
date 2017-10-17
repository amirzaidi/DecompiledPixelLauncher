// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import android.content.Intent;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.a.e;
import com.google.android.apps.nexuslauncher.reflection.b.a;
import java.util.ArrayList;
import java.util.Calendar;
import android.media.AudioManager;
import android.os.Handler;
import android.content.IntentFilter;
import android.content.Context;
import com.google.android.apps.nexuslauncher.reflection.b.b;
import com.google.android.apps.nexuslauncher.reflection.f;
import android.content.BroadcastReceiver;

public class d extends BroadcastReceiver implements f
{
    private boolean bP;
    private long bQ;
    private final b bR;
    private boolean bS;
    private long bT;
    private final Context mContext;
    
    public d(final b br, final Context mContext) {
        final long n = 0L;
        this.bT = n;
        this.bQ = n;
        this.mContext = mContext;
        this.bR = br;
        final IntentFilter intentFilter = new IntentFilter("android.intent.action.HEADSET_PLUG");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        mContext.registerReceiver((BroadcastReceiver)this, intentFilter, (String)null, new Handler());
        final AudioManager audioManager = (AudioManager)mContext.getSystemService("audio");
        this.bS = audioManager.isWiredHeadsetOn();
        this.bP = (audioManager.isBluetoothA2dpOn() || audioManager.isBluetoothScoOn());
    }
    
    public void be() {
        this.mContext.unregisterReceiver((BroadcastReceiver)this);
    }
    
    protected void bf(final boolean bp) {
        this.bP = bp;
        this.bQ = Calendar.getInstance().getTimeInMillis();
        this.bg();
    }
    
    public void bg() {
        final long n = 0L;
        final ArrayList<a> list = new ArrayList<a>(4);
        if (this.bT > n) {
            final e e = new e();
            e.aN = "headset";
            e.aM = this.bT;
            String aj;
            if (this.bS) {
                aj = "headset_wired_in";
            }
            else {
                aj = "headset_wired_out";
            }
            e.aJ = aj;
            list.add(new a(e));
        }
        if (this.bQ > n) {
            final e e2 = new e();
            e2.aN = "headset";
            e2.aM = this.bQ;
            String aj2;
            if (this.bP) {
                aj2 = "headset_bluetooth_in";
            }
            else {
                aj2 = "headset_bluetooth_out";
            }
            e2.aJ = aj2;
            list.add(new a(e2));
        }
        com.google.research.reflection.common.b.Uo(this.bR, "headset", list);
    }
    
    protected void bh(final boolean bs) {
        this.bS = bs;
        this.bT = Calendar.getInstance().getTimeInMillis();
        this.bg();
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final boolean b = true;
        final int n = -1;
        if (intent.getAction().equals("android.intent.action.HEADSET_PLUG") && (this.isInitialStickyBroadcast() ^ true)) {
            switch (intent.getIntExtra("state", n)) {
                case 1: {
                    this.bh(b);
                    break;
                }
                case 0: {
                    this.bh(false);
                    break;
                }
            }
        }
        else if (intent.getAction().equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED") && (this.isInitialStickyBroadcast() ^ true)) {
            switch (intent.getIntExtra("android.bluetooth.profile.extra.STATE", n)) {
                case 0: {
                    this.bf(false);
                    break;
                }
                case 2: {
                    this.bf(b);
                    break;
                }
            }
        }
    }
}
