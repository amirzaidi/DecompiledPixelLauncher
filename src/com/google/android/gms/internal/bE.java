// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.d;
import java.util.HashMap;
import com.google.android.gms.common.internal.Q;
import java.util.Collection;
import java.util.Collections;
import com.google.android.gms.common.api.h;
import java.util.concurrent.Future;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import android.util.Log;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.HashSet;
import com.google.android.gms.common.api.j;
import android.os.Bundle;
import com.google.android.gms.common.internal.zzq;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.a;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.ArrayList;
import android.content.Context;
import com.google.android.gms.common.internal.l;
import android.os.Looper;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.e;
import java.util.Iterator;
import com.google.android.gms.common.internal.c;
import android.app.PendingIntent;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.g;
import java.util.Map;

class be extends bJ
{
    final /* synthetic */ bB ua;
    private final Map ub;
    
    public be(final bB ua, final Map ub) {
        this.ua = ua;
        super(ua, null);
        this.ub = ub;
    }
    
    public void yr() {
        int n = 1;
        final float n2 = Float.MIN_VALUE;
        int qz = 0;
        final Iterator<g> iterator = this.ub.keySet().iterator();
        int n3 = n;
        float n4 = n2;
        int n5 = 0;
        float n6 = 0.0f;
        while (true) {
            while (iterator.hasNext()) {
                final g g = iterator.next();
                int n7;
                float n8;
                int n9;
                float n10;
                if (!g.gP()) {
                    n7 = 0;
                    n8 = 0.0f;
                    n9 = n5;
                    n10 = n6;
                }
                else if (((bY)this.ub.get(g)).wB != 0) {
                    n7 = n3;
                    n8 = n4;
                    n9 = n;
                    n10 = n2;
                }
                else {
                    n5 = n;
                    if (n5 != 0) {
                        qz = this.ua.vb.qz(this.ua.mContext);
                    }
                    if (qz != 0 && (n != 0 || n3 != 0)) {
                        this.ua.ve.BQ(new bd(this, this.ua, new ConnectionResult(qz, null)));
                        return;
                    }
                    if (this.ua.vc) {
                        this.ua.uW.yt();
                    }
                    for (final g g2 : this.ub.keySet()) {
                        final c c = this.ub.get(g2);
                        if (g2.gP() && qz != 0) {
                            this.ua.ve.BQ(new cb(this, this.ua, c));
                        }
                        else {
                            g2.gL(c);
                        }
                    }
                    return;
                }
                n5 = n9;
                n6 = n10;
                n3 = n7;
                n4 = n8;
            }
            n = 0;
            continue;
        }
    }
}
