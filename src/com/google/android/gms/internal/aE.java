// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.api.f;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.Executors;
import com.google.android.gms.clearcut.LogEventParcelable;
import com.google.android.gms.common.a.m;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.ScheduledFuture;
import com.google.android.gms.common.api.a;
import java.util.concurrent.ScheduledExecutorService;
import com.google.android.gms.clearcut.g;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.t;

class ae implements t
{
    final /* synthetic */ at rU;
    
    ae(final at ru) {
        this.rU = ru;
    }
    
    public void hh(final Status status) {
        at.sg.un();
    }
}
