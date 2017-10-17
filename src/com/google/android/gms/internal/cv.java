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
import com.google.android.gms.common.ConnectionResult;
import java.util.concurrent.locks.Lock;
import android.content.Context;
import java.util.Iterator;
import com.google.android.gms.common.api.i;
import java.util.ArrayList;

class cv extends bP
{
    final /* synthetic */ bH wX;
    private final ArrayList wY;
    
    public cv(final bH wx, final ArrayList wy) {
        this.wX = wx;
        super(wx, null);
        this.wY = wy;
    }
    
    public void ys() {
        this.wX.uY.wC.xq = this.wX.As();
        final Iterator<i> iterator = this.wY.iterator();
        while (iterator.hasNext()) {
            iterator.next().eb(this.wX.vf, this.wX.uY.wC.xq);
        }
    }
}
