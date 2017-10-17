// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.util.Log;
import android.support.v4.a.t;
import java.util.Map;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.a;
import java.util.Iterator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.b;
import java.util.HashSet;
import java.util.LinkedList;
import com.google.android.gms.common.api.C;
import com.google.android.gms.common.ConnectionResult;
import java.util.Set;
import com.google.android.gms.common.api.n;
import java.util.Queue;
import android.util.SparseArray;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;

class cx implements cr
{
    final /* synthetic */ int xL;
    final /* synthetic */ bw xM;
    
    cx(final bw xm, final int xl) {
        this.xM = xm;
        this.xL = xl;
    }
    
    public void Ch() {
        if (this.xM.uJ.isEmpty()) {
            this.xM.zB(this.xL, false);
        }
    }
}
