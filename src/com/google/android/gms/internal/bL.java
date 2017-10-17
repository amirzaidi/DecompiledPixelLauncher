// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.io.PrintWriter;
import java.io.FileDescriptor;
import com.google.android.gms.common.api.e;
import com.google.android.gms.common.api.g;
import android.os.Bundle;
import java.util.Iterator;
import java.util.HashMap;
import java.util.ArrayList;
import android.os.Looper;
import com.google.android.gms.common.api.j;
import com.google.android.gms.common.internal.a;
import java.util.Map;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.Condition;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.f;
import android.content.Context;

abstract class bl
{
    private final ci uk;
    
    protected bl(final ci uk) {
        this.uk = uk;
    }
    
    public final void yH(final bZ bz) {
        bz.wH.lock();
        try {
            if (bz.wE == this.uk) {
                this.yq();
            }
        }
        finally {
            bz.wH.unlock();
        }
    }
    
    protected abstract void yq();
}
