// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.app.PendingIntent;
import android.util.Log;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.internal.l;
import java.util.Iterator;
import com.google.android.gms.common.api.h;
import android.support.v4.a.t;
import java.util.Collections;
import java.util.WeakHashMap;
import java.util.ArrayList;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.f;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.Set;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.g;
import android.os.Bundle;
import android.content.Context;

class bx implements Runnable
{
    final /* synthetic */ bp uP;
    
    public void run() {
        this.uP.ux.lock();
        try {
            this.uP.zh();
        }
        finally {
            this.uP.ux.unlock();
        }
    }
}
