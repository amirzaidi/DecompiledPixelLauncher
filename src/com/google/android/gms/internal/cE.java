// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.util.Log;
import java.io.FileDescriptor;
import java.io.Writer;
import java.io.PrintWriter;
import java.io.StringWriter;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.l;
import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.f;
import com.google.android.gms.common.api.g;
import java.util.Iterator;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.ArrayList;
import com.google.android.gms.common.internal.S;
import com.google.android.gms.common.internal.J;
import android.os.Looper;
import java.util.concurrent.locks.Lock;
import java.util.Queue;
import com.google.android.gms.common.api.j;
import java.util.Map;
import java.util.Set;
import android.content.Context;
import com.google.android.gms.common.api.a;
import java.lang.ref.WeakReference;

class ce extends bs
{
    private WeakReference wU;
    
    ce(final cu cu) {
        this.wU = new WeakReference((T)cu);
    }
    
    public void zp() {
        final cu cu = (cu)this.wU.get();
        if (cu != null) {
            cu.Cy();
        }
    }
}
