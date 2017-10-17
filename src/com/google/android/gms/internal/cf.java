// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import android.os.Bundle;
import java.util.Iterator;
import java.util.HashMap;
import java.util.ArrayList;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.f;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.a;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.Condition;
import android.content.Context;

public class cf implements bx
{
    private final Context mContext;
    private final Condition wA;
    private final Lock wB;
    final cA wC;
    final cb wD;
    private final bR wE;
    final Map wF;
    final Map wG;
    int wH;
    final Map wI;
    final a wJ;
    final l wK;
    private final f wx;
    private volatile co wy;
    private ConnectionResult wz;
    
    public cf(final Context mContext, final cA wc, final Lock wb, final Looper looper, final f wx, final Map wf, final a wj, final Map wi, final l wk, final ArrayList list, final cb wd) {
        this.wG = new HashMap();
        this.wz = null;
        this.mContext = mContext;
        this.wB = wb;
        this.wx = wx;
        this.wF = wf;
        this.wJ = wj;
        this.wI = wi;
        this.wK = wk;
        this.wC = wc;
        this.wD = wd;
        final Iterator<bF> iterator = list.iterator();
        while (iterator.hasNext()) {
            iterator.next().zS(this);
        }
        this.wE = new bR(this, looper);
        this.wA = wb.newCondition();
        this.wy = new ca(this);
    }
    
    void BR(final br br) {
        this.wE.sendMessage(this.wE.obtainMessage(1, (Object)br));
    }
    
    public void BT(final Bundle bundle) {
        this.wB.lock();
        try {
            this.wy.Au(bundle);
        }
        finally {
            this.wB.unlock();
        }
    }
    
    void BU(final RuntimeException ex) {
        this.wE.sendMessage(this.wE.obtainMessage(2, (Object)ex));
    }
    
    void BV() {
        this.wB.lock();
        try {
            (this.wy = new bH(this, this.wJ, this.wI, this.wx, this.wK, this.wB, this.mContext)).At();
            this.wA.signalAll();
        }
        finally {
            this.wB.unlock();
        }
    }
    
    void BW() {
        this.wB.lock();
        try {
            this.wC.Ct();
            (this.wy = new bQ(this)).At();
            this.wA.signalAll();
        }
        finally {
            this.wB.unlock();
        }
    }
    
    public void BY(final int n) {
        this.wB.lock();
        try {
            this.wy.Az(n);
        }
        finally {
            this.wB.unlock();
        }
    }
    
    void BZ() {
        final Iterator<i> iterator = this.wF.values().iterator();
        while (iterator.hasNext()) {
            iterator.next().ec();
        }
    }
    
    public void Ca(final ConnectionResult connectionResult, final h h, final int n) {
        this.wB.lock();
        try {
            this.wy.AD(connectionResult, h, n);
        }
        finally {
            this.wB.unlock();
        }
    }
    
    void Cb(final ConnectionResult wz) {
        this.wB.lock();
        try {
            this.wz = wz;
            (this.wy = new ca(this)).At();
            this.wA.signalAll();
        }
        finally {
            this.wB.unlock();
        }
    }
    
    public void dump(final String s, final FileDescriptor fileDescriptor, final PrintWriter printWriter, final String[] array) {
        final String concat = String.valueOf(s).concat("  ");
        printWriter.append(s).append("mState=").println(this.wy);
        for (final h h : this.wI.keySet()) {
            printWriter.append(s).append(h.dY()).println(":");
            ((i)this.wF.get(h.dT())).dump(concat, fileDescriptor, printWriter, array);
        }
    }
    
    public void yN() {
        this.wy.zY();
    }
    
    public void yQ() {
        if (this.zb()) {
            ((bQ)this.wy).Bq();
        }
    }
    
    public void yV() {
        if (this.wy.Ad()) {
            this.wG.clear();
        }
    }
    
    public b yX(final b b) {
        b.rM();
        return this.wy.Ac(b);
    }
    
    public boolean zb() {
        return this.wy instanceof bQ;
    }
    
    public b zc(final b b) {
        b.rM();
        return this.wy.Ah(b);
    }
}
