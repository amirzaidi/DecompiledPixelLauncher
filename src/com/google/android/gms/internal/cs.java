// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

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
import java.util.concurrent.locks.Lock;
import java.util.Queue;
import com.google.android.gms.common.a;
import android.content.Context;
import com.google.android.gms.common.api.d;
import android.util.Log;
import android.os.Message;
import android.os.Looper;
import android.os.Handler;

final class cs extends Handler
{
    final /* synthetic */ cA wT;
    
    cs(final cA wt, final Looper looper) {
        this.wT = wt;
        super(looper);
    }
    
    public void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                Log.w("GoogleApiClientImpl", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                break;
            }
            case 1: {
                this.wT.Cp();
                break;
            }
            case 2: {
                this.wT.Cz();
                break;
            }
        }
    }
}
