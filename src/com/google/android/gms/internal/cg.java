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
import com.google.android.gms.common.api.g;
import java.util.Iterator;
import java.util.concurrent.Future;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import android.util.Log;
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
import java.util.ArrayList;
import android.content.Context;
import com.google.android.gms.signin.internal.SignInResponse;
import java.lang.ref.WeakReference;
import com.google.android.gms.signin.internal.zzb;

class cg extends zzb
{
    private final WeakReference wV;
    
    cg(final bB bb) {
        this.wV = new WeakReference((T)bb);
    }
    
    public void zzb(final SignInResponse signInResponse) {
        final bB bb = (bB)this.wV.get();
        if (bb != null) {
            bb.ve.BQ(new bO(this, bb, bb, signInResponse));
        }
    }
}
