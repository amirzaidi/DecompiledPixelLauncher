// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.stats;

import android.os.Parcelable;
import android.os.SystemClock;
import android.os.Debug;
import android.os.Process;
import android.content.ServiceConnection;
import com.google.android.gms.internal.i;
import java.util.Iterator;
import android.content.pm.ResolveInfo;
import android.util.Log;
import android.content.pm.ServiceInfo;
import android.content.ComponentName;
import com.google.android.gms.common.a.j;
import android.content.Intent;
import android.content.Context;
import java.util.Collections;
import java.util.Arrays;
import java.util.List;

public class b
{
    private static final Object iO;
    private static Integer iQ;
    private static b iR;
    private final List iP;
    private final List iS;
    private final List iT;
    private final List iU;
    private f iV;
    private f iW;
    
    static {
        iO = new Object();
    }
    
    private b() {
        final int n = 1024;
        if (lX() != a.ir) {
            final String s = (String)e.jk.get();
            List<String> ip;
            if (s != null) {
                ip = Arrays.asList(s.split(","));
            }
            else {
                ip = (List<String>)Collections.EMPTY_LIST;
            }
            this.iP = ip;
            final String s2 = (String)e.jj.get();
            List<String> iu;
            if (s2 != null) {
                iu = Arrays.asList(s2.split(","));
            }
            else {
                iu = (List<String>)Collections.EMPTY_LIST;
            }
            this.iU = iu;
            final String s3 = (String)e.jo.get();
            List<String> is;
            if (s3 != null) {
                is = Arrays.asList(s3.split(","));
            }
            else {
                is = (List<String>)Collections.EMPTY_LIST;
            }
            this.iS = is;
            final String s4 = (String)e.jl.get();
            List<String> it;
            if (s4 != null) {
                it = Arrays.asList(s4.split(","));
            }
            else {
                it = (List<String>)Collections.EMPTY_LIST;
            }
            this.iT = it;
            this.iW = new f(n, (long)e.jm.get());
            this.iV = new f(n, (long)e.jm.get());
            return;
        }
        this.iP = Collections.EMPTY_LIST;
        this.iU = Collections.EMPTY_LIST;
        this.iS = Collections.EMPTY_LIST;
        this.iT = Collections.EMPTY_LIST;
    }
    
    private static String lQ(final StackTraceElement[] array, final int n) {
        if (n + 4 < array.length) {
            final StackTraceElement stackTraceElement = array[n + 4];
            final String value = String.valueOf(stackTraceElement.getClassName());
            final String value2 = String.valueOf(stackTraceElement.getMethodName());
            return new StringBuilder(String.valueOf(value).length() + 13 + String.valueOf(value2).length()).append(value).append(".").append(value2).append(":").append(stackTraceElement.getLineNumber()).toString();
        }
        return "<bottom of call stack>";
    }
    
    private boolean lR(final Context context, final Intent intent) {
        final ComponentName component = intent.getComponent();
        return component != null && j.jH(context, component.getPackageName());
    }
    
    private boolean lU() {
        return false;
    }
    
    private static ServiceInfo lW(final Context context, final Intent intent) {
        final int n = 3;
        final int n2 = 2;
        final int n3 = 1;
        final List queryIntentServices = context.getPackageManager().queryIntentServices(intent, 128);
        if (queryIntentServices == null || queryIntentServices.size() == 0) {
            final Object[] array = new Object[n2];
            array[0] = intent.toUri(0);
            array[n3] = lY(n, 20);
            Log.w("ConnectionTracker", String.format("There are no handler of this intent: %s\n Stack trace: %s", array));
            return null;
        }
        if (queryIntentServices.size() <= n3) {
            return queryIntentServices.get(0).serviceInfo;
        }
        final Object[] array2 = new Object[n2];
        array2[0] = intent.toUri(0);
        array2[n3] = lY(n, 20);
        Log.w("ConnectionTracker", String.format("Multiple handlers found for this intent: %s\n Stack trace: %s", array2));
        final Iterator<ResolveInfo> iterator = queryIntentServices.iterator();
        while (iterator.hasNext()) {
            Log.w("ConnectionTracker", iterator.next().serviceInfo.name);
        }
        return null;
    }
    
    private static int lX() {
        if (b.iQ == null) {
            while (true) {
                Integer n2 = null;
                try {
                    Label_0056: {
                        if (j.jI()) {
                            break Label_0056;
                        }
                        final int n = a.ir;
                        try {
                            final Integer value = n;
                            try {
                                b.iQ = value;
                                return b.iQ;
                                final i jn = e.jn;
                                try {
                                    final Object value2 = jn.get();
                                    try {
                                        n2 = (Integer)value2;
                                    }
                                    catch (SecurityException ex) {}
                                }
                                catch (SecurityException ex2) {}
                            }
                            catch (SecurityException ex3) {}
                        }
                        catch (SecurityException ex4) {}
                    }
                }
                catch (SecurityException ex5) {}
                final int n = n2;
                continue;
            }
        }
        return b.iQ;
    }
    
    private static String lY(int i, final int n) {
        final StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        final StringBuffer sb = new StringBuffer();
        while (i < n + i) {
            sb.append(lQ(stackTrace, i)).append(" ");
            ++i;
        }
        return sb.toString();
    }
    
    private void lZ(final Context context, final String s, final String s2, final Intent intent, final int n) {
        final int n2 = 1;
        String jc = null;
        if (this.lU() && this.iW != null) {
            String processName;
            String name;
            if (n != 4 && n != n2) {
                final ServiceInfo lw = lW(context, intent);
                if (lw == null) {
                    final Object[] array = { s2, null };
                    array[n2] = intent.toUri(0);
                    Log.w("ConnectionTracker", String.format("Client %s made an invalid request %s", array));
                    return;
                }
                processName = lw.processName;
                name = lw.name;
                jc = com.google.android.gms.common.a.f.jC();
                if (!this.me(jc, s2, processName, name)) {
                    return;
                }
                this.iW.mt(s);
            }
            else {
                if (!this.iW.mu(s)) {
                    return;
                }
                name = null;
                processName = null;
            }
            this.md(context, s, n, jc, s2, processName, name);
        }
    }
    
    private String mb(final ServiceConnection serviceConnection) {
        return String.valueOf(Process.myPid() << 32 | System.identityHashCode(serviceConnection));
    }
    
    public static b mc() {
        synchronized (b.iO) {
            if (b.iR == null) {
                b.iR = new b();
            }
            return b.iR;
        }
    }
    
    private void md(final Context context, final String s, final int n, final String s2, final String s3, final String s4, final String s5) {
        final long currentTimeMillis = System.currentTimeMillis();
        String ly = null;
        if ((lX() & a.it) != 0x0 && n != 13) {
            ly = lY(3, 5);
        }
        long nativeHeapAllocatedSize = 0L;
        if ((lX() & a.iv) != 0x0) {
            nativeHeapAllocatedSize = Debug.getNativeHeapAllocatedSize();
        }
        ConnectionEvent connectionEvent;
        if (n != 1 && n != 4 && n != 14) {
            connectionEvent = new ConnectionEvent(currentTimeMillis, n, s2, s3, s4, s5, ly, s, SystemClock.elapsedRealtime(), nativeHeapAllocatedSize);
        }
        else {
            connectionEvent = new ConnectionEvent(currentTimeMillis, n, null, null, null, null, ly, s, SystemClock.elapsedRealtime(), nativeHeapAllocatedSize);
        }
        context.startService(new Intent().setComponent(a.iw).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", (Parcelable)connectionEvent));
    }
    
    private boolean me(final String s, final String s2, final String s3, final String s4) {
        final int lx = lX();
        return !this.iP.contains(s) && !this.iU.contains(s2) && !this.iS.contains(s3) && !this.iT.contains(s4) && (s3.equals(s) || (lx & a.iu) == 0x0);
    }
    
    public boolean lS(final Context context, final String s, final Intent intent, final ServiceConnection serviceConnection, final int n) {
        if (!this.lR(context, intent)) {
            final boolean bindService = context.bindService(intent, serviceConnection, n);
            if (bindService) {
                this.lZ(context, this.mb(serviceConnection), s, intent, 2);
            }
            return bindService;
        }
        Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
        return false;
    }
    
    public void lT(final Context context, final ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
        this.lZ(context, this.mb(serviceConnection), null, null, 1);
    }
    
    public void lV(final Context context, final ServiceConnection serviceConnection, final String s, final Intent intent) {
        this.lZ(context, this.mb(serviceConnection), s, intent, 3);
    }
    
    public void ma(final Context context, final ServiceConnection serviceConnection) {
        this.lZ(context, this.mb(serviceConnection), null, null, 4);
    }
}
