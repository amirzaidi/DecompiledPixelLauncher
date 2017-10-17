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
import com.google.android.gms.common.api.h;
import java.util.HashSet;
import com.google.android.gms.common.api.l;
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

class cm extends zzb
{
    private final WeakReference wP;
    
    cm(final bH bh) {
        this.wP = new WeakReference((T)bh);
    }
    
    public void zzb(final SignInResponse signInResponse) {
        final bH bh = (bH)this.wP.get();
        if (bh != null) {
            bh.uY.BR(new bU(this, bh, bh, signInResponse));
        }
    }
}
