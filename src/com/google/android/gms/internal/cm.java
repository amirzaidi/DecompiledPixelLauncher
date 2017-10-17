// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

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
import java.util.concurrent.locks.Lock;
import java.util.Queue;
import com.google.android.gms.common.api.j;
import java.util.Map;
import java.util.Set;
import android.content.Context;
import com.google.android.gms.common.api.a;
import android.util.Log;
import android.os.Message;
import android.os.Looper;
import android.os.Handler;

final class cm extends Handler
{
    final /* synthetic */ cu wZ;
    
    cm(final cu wz, final Looper looper) {
        this.wZ = wz;
        super(looper);
    }
    
    public void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                Log.w("GoogleApiClientImpl", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                break;
            }
            case 1: {
                this.wZ.Co();
                break;
            }
            case 2: {
                this.wZ.Cy();
                break;
            }
        }
    }
}
