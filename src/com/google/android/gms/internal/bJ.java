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
import com.google.android.gms.common.api.h;
import java.util.HashSet;
import com.google.android.gms.common.api.l;
import android.os.Bundle;
import com.google.android.gms.common.internal.zzq;
import java.util.Map;
import com.google.android.gms.common.f;
import com.google.android.gms.common.internal.a;
import java.util.Set;
import java.util.concurrent.locks.Lock;
import java.util.ArrayList;
import android.content.Context;
import com.google.android.gms.common.ConnectionResult;

class bj extends br
{
    final /* synthetic */ bk tS;
    final /* synthetic */ ConnectionResult tT;
    
    bj(final bk ts, final co co, final ConnectionResult tt) {
        this.tS = ts;
        this.tT = tt;
        super(co);
    }
    
    public void yr() {
        this.tS.tU.Ap(this.tT);
    }
}
