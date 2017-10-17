// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import java.util.HashMap;
import com.google.android.gms.common.internal.Q;
import java.util.Collection;
import java.util.Collections;
import android.app.PendingIntent;
import com.google.android.gms.common.api.h;
import java.util.concurrent.Future;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import android.util.Log;
import com.google.android.gms.signin.internal.SignInResponse;
import java.util.HashSet;
import com.google.android.gms.common.api.j;
import android.os.Bundle;
import com.google.android.gms.common.internal.zzq;
import java.util.Map;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.a;
import java.util.Set;
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
import android.content.Context;
import java.util.Iterator;
import com.google.android.gms.common.api.g;
import java.util.ArrayList;

class co extends bJ
{
    final /* synthetic */ bB xb;
    private final ArrayList xc;
    
    public co(final bB xb, final ArrayList xc) {
        this.xb = xb;
        super(xb, null);
        this.xc = xc;
    }
    
    public void yr() {
        this.xb.ve.wI.xw = this.xb.Ar();
        final Iterator<g> iterator = this.xc.iterator();
        while (iterator.hasNext()) {
            iterator.next().gI(this.xb.vl, this.xb.ve.wI.xw);
        }
    }
}
