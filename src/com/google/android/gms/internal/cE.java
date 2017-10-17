// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.g;
import java.util.HashMap;
import com.google.android.gms.common.internal.Q;
import java.util.Collection;
import java.util.Collections;
import android.app.PendingIntent;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.i;
import java.util.Iterator;
import java.util.concurrent.Future;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import android.util.Log;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.HashSet;
import android.os.Bundle;
import com.google.android.gms.common.internal.zzq;
import java.util.Map;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.a;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.ArrayList;
import android.content.Context;
import com.google.android.gms.common.internal.l;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.internal.c;

class ce implements c
{
    private final h wu;
    private final int wv;
    private final WeakReference ww;
    
    public ce(final bH bh, final h wu, final int wv) {
        this.ww = new WeakReference((T)bh);
        this.wu = wu;
        this.wv = wv;
    }
    
    public void gB(final ConnectionResult connectionResult) {
        boolean b = false;
        final bH bh = (bH)this.ww.get();
        if (bh == null) {
            return;
        }
        Label_0112: {
            if (Looper.myLooper() == bh.uY.wC.du()) {
                break Label_0112;
            }
            while (true) {
                l.hv(b, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
                bh.uR.lock();
                b = false;
                final bH bh2 = bh;
                Label_0164: {
                    try {
                        b = bh2.Ax(0);
                        if (!b) {
                            return;
                        }
                        b = connectionResult.nw();
                        if (!b) {
                            bh.AA(connectionResult, this.wu, this.wv);
                        }
                        b = bh.Ae();
                        if (!b) {
                            return;
                        }
                        break Label_0164;
                        b = true;
                        continue;
                    }
                    finally {
                        bh.uR.unlock();
                    }
                }
                bh.AH();
            }
        }
    }
}
