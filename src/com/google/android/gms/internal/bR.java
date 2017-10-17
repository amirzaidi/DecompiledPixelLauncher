// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.google.android.gms.common.api.h;
import com.google.android.gms.common.api.i;
import android.os.Bundle;
import java.util.Iterator;
import java.util.HashMap;
import java.util.ArrayList;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.f;
import com.google.android.gms.common.api.l;
import com.google.android.gms.common.internal.a;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.Condition;
import android.content.Context;

abstract class br
{
    private final co ue;
    
    protected br(final co ue) {
        this.ue = ue;
    }
    
    public final void yI(final cf cf) {
        cf.wB.lock();
        try {
            if (cf.wy == this.ue) {
                this.yr();
            }
        }
        finally {
            cf.wB.unlock();
        }
    }
    
    protected abstract void yr();
}
