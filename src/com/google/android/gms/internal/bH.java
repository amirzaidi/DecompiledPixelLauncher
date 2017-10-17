// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.HashMap;
import com.google.android.gms.common.internal.Q;
import java.util.Collection;
import java.util.Collections;
import android.app.PendingIntent;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.g;
import java.util.Iterator;
import java.util.concurrent.Future;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import android.util.Log;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.HashSet;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.zzq;
import java.util.Map;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.a;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.ArrayList;
import android.content.Context;
import com.google.android.gms.signin.internal.zzd;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;

class bh implements d, c
{
    final /* synthetic */ bB ud;
    
    private bh(final bB ud) {
        this.ud = ud;
    }
    
    public void gw(final ConnectionResult connectionResult) {
        this.ud.uX.lock();
        try {
            if (!this.ud.AH(connectionResult)) {
                this.ud.Ao(connectionResult);
            }
            else {
                this.ud.Ak();
                this.ud.AG();
            }
        }
        finally {
            this.ud.uX.unlock();
        }
    }
    
    public void gx(final int n) {
    }
    
    public void gy(final Bundle bundle) {
        this.ud.uW.yw(new cg(this.ud));
    }
}
