// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.Writer;
import java.io.PrintWriter;
import java.io.StringWriter;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.api.Status;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;
import java.util.Iterator;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import com.google.android.gms.common.api.l;
import java.util.ArrayList;
import java.util.Set;
import com.google.android.gms.common.internal.S;
import com.google.android.gms.common.internal.J;
import java.util.Map;
import android.os.Looper;
import java.util.concurrent.locks.Lock;
import java.util.Queue;
import com.google.android.gms.common.a;
import android.content.Context;
import com.google.android.gms.common.api.d;
import java.lang.ref.WeakReference;

class ck extends by
{
    private WeakReference wO;
    
    ck(final cA ca) {
        this.wO = new WeakReference((T)ca);
    }
    
    public void zq() {
        final cA ca = (cA)this.wO.get();
        if (ca != null) {
            ca.Cz();
        }
    }
}
