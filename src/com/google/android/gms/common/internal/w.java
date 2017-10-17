// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import java.util.Collections;
import android.os.DeadObjectException;
import android.accounts.Account;
import android.content.Intent;
import android.os.IBinder;
import java.util.Set;
import com.google.android.gms.common.api.A;
import java.util.Date;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.io.PrintWriter;
import java.io.FileDescriptor;
import android.os.Bundle;
import android.util.Log;
import android.content.ServiceConnection;
import android.os.Handler;
import android.content.Context;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import android.os.IInterface;
import com.google.android.gms.common.f;
import android.os.Looper;
import com.google.android.gms.common.ConnectionResult;

class w implements c
{
    final /* synthetic */ x fV;
    
    public w(final x fv) {
        this.fV = fv;
    }
    
    public void gB(final ConnectionResult connectionResult) {
        if (!connectionResult.nw()) {
            if (this.fV.gl != null) {
                this.fV.gl.hC(connectionResult);
            }
        }
        else {
            this.fV.eb(null, this.fV.im());
        }
    }
}
