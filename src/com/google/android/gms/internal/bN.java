// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

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
import com.google.android.gms.common.api.h;
import java.util.HashSet;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.zzq;
import java.util.Map;
import com.google.android.gms.common.internal.a;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.ArrayList;
import android.content.Context;
import com.google.android.gms.signin.internal.zzd;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;

class bn implements g, f
{
    final /* synthetic */ bH tX;
    
    private bn(final bH tx) {
        this.tX = tx;
    }
    
    public void dQ(final ConnectionResult connectionResult) {
        this.tX.uR.lock();
        try {
            if (!this.tX.AI(connectionResult)) {
                this.tX.Ap(connectionResult);
            }
            else {
                this.tX.Al();
                this.tX.AH();
            }
        }
        finally {
            this.tX.uR.unlock();
        }
    }
    
    public void dR(final int n) {
    }
    
    public void dS(final Bundle bundle) {
        this.tX.uQ.yx(new cm(this.tX));
    }
}
