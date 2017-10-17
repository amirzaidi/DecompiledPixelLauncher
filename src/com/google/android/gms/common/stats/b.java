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
    private static final Object lG;
    private static Integer lI;
    private static b lJ;
    private final List lH;
    private final List lK;
    private final List lL;
    private final List lM;
    private f lN;
    private f lO;
    
    static {
        lG = new Object();
    }
    
    private b() {
        final int n = 1024;
        if (oL() != a.lj) {
            final String s = (String)d.mc.get();
            List<String> lh;
            if (s != null) {
                lh = Arrays.asList(s.split(","));
            }
            else {
                lh = (List<String>)Collections.EMPTY_LIST;
            }
            this.lH = lh;
            final String s2 = (String)d.mb.get();
            List<String> lm;
            if (s2 != null) {
                lm = Arrays.asList(s2.split(","));
            }
            else {
                lm = (List<String>)Collections.EMPTY_LIST;
            }
            this.lM = lm;
            final String s3 = (String)d.mg.get();
            List<String> lk;
            if (s3 != null) {
                lk = Arrays.asList(s3.split(","));
            }
            else {
                lk = (List<String>)Collections.EMPTY_LIST;
            }
            this.lK = lk;
            final String s4 = (String)d.md.get();
            List<String> ll;
            if (s4 != null) {
                ll = Arrays.asList(s4.split(","));
            }
            else {
                ll = (List<String>)Collections.EMPTY_LIST;
            }
            this.lL = ll;
            this.lO = new f(n, (long)d.me.get());
            this.lN = new f(n, (long)d.me.get());
            return;
        }
        this.lH = Collections.EMPTY_LIST;
        this.lM = Collections.EMPTY_LIST;
        this.lK = Collections.EMPTY_LIST;
        this.lL = Collections.EMPTY_LIST;
    }
    
    private static String oE(final StackTraceElement[] array, final int n) {
        if (n + 4 < array.length) {
            final StackTraceElement stackTraceElement = array[n + 4];
            final String value = String.valueOf(stackTraceElement.getClassName());
            final String value2 = String.valueOf(stackTraceElement.getMethodName());
            return new StringBuilder(String.valueOf(value).length() + 13 + String.valueOf(value2).length()).append(value).append(".").append(value2).append(":").append(stackTraceElement.getLineNumber()).toString();
        }
        return "<bottom of call stack>";
    }
    
    private boolean oF(final Context context, final Intent intent) {
        final ComponentName component = intent.getComponent();
        return component != null && j.mv(context, component.getPackageName());
    }
    
    private boolean oI() {
        return false;
    }
    
    private static ServiceInfo oK(final Context context, final Intent intent) {
        final int n = 3;
        final int n2 = 2;
        final int n3 = 1;
        final List queryIntentServices = context.getPackageManager().queryIntentServices(intent, 128);
        if (queryIntentServices == null || queryIntentServices.size() == 0) {
            final Object[] array = new Object[n2];
            array[0] = intent.toUri(0);
            array[n3] = oM(n, 20);
            Log.w("ConnectionTracker", String.format("There are no handler of this intent: %s\n Stack trace: %s", array));
            return null;
        }
        if (queryIntentServices.size() <= n3) {
            return queryIntentServices.get(0).serviceInfo;
        }
        final Object[] array2 = new Object[n2];
        array2[0] = intent.toUri(0);
        array2[n3] = oM(n, 20);
        Log.w("ConnectionTracker", String.format("Multiple handlers found for this intent: %s\n Stack trace: %s", array2));
        final Iterator<ResolveInfo> iterator = queryIntentServices.iterator();
        while (iterator.hasNext()) {
            Log.w("ConnectionTracker", iterator.next().serviceInfo.name);
        }
        return null;
    }
    
    private static int oL() {
        if (b.lI == null) {
            while (true) {
                Integer n2 = null;
                try {
                    Label_0056: {
                        if (j.mw()) {
                            break Label_0056;
                        }
                        final int n = a.lj;
                        try {
                            final Integer value = n;
                            try {
                                b.lI = value;
                                return b.lI;
                                final i mf = d.mf;
                                try {
                                    final Object value2 = mf.get();
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
        return b.lI;
    }
    
    private static String oM(int i, final int n) {
        final StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        final StringBuffer sb = new StringBuffer();
        while (i < n + i) {
            sb.append(oE(stackTrace, i)).append(" ");
            ++i;
        }
        return sb.toString();
    }
    
    private void oN(final Context context, final String s, final String s2, final Intent intent, final int n) {
        final int n2 = 1;
        String mq = null;
        if (this.oI() && this.lO != null) {
            String processName;
            String name;
            if (n != 4 && n != n2) {
                final ServiceInfo ok = oK(context, intent);
                if (ok == null) {
                    final Object[] array = { s2, null };
                    array[n2] = intent.toUri(0);
                    Log.w("ConnectionTracker", String.format("Client %s made an invalid request %s", array));
                    return;
                }
                processName = ok.processName;
                name = ok.name;
                mq = com.google.android.gms.common.a.f.mq();
                if (!this.oS(mq, s2, processName, name)) {
                    return;
                }
                this.lO.ph(s);
            }
            else {
                if (!this.lO.pi(s)) {
                    return;
                }
                name = null;
                processName = null;
            }
            this.oR(context, s, n, mq, s2, processName, name);
        }
    }
    
    private String oP(final ServiceConnection serviceConnection) {
        return String.valueOf(Process.myPid() << 32 | System.identityHashCode(serviceConnection));
    }
    
    public static b oQ() {
        synchronized (b.lG) {
            if (b.lJ == null) {
                b.lJ = new b();
            }
            return b.lJ;
        }
    }
    
    private void oR(final Context context, final String s, final int n, final String s2, final String s3, final String s4, final String s5) {
        final long currentTimeMillis = System.currentTimeMillis();
        String om = null;
        if ((oL() & a.ll) != 0x0 && n != 13) {
            om = oM(3, 5);
        }
        long nativeHeapAllocatedSize = 0L;
        if ((oL() & a.ln) != 0x0) {
            nativeHeapAllocatedSize = Debug.getNativeHeapAllocatedSize();
        }
        ConnectionEvent connectionEvent;
        if (n != 1 && n != 4 && n != 14) {
            connectionEvent = new ConnectionEvent(currentTimeMillis, n, s2, s3, s4, s5, om, s, SystemClock.elapsedRealtime(), nativeHeapAllocatedSize);
        }
        else {
            connectionEvent = new ConnectionEvent(currentTimeMillis, n, null, null, null, null, om, s, SystemClock.elapsedRealtime(), nativeHeapAllocatedSize);
        }
        context.startService(new Intent().setComponent(a.lo).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", (Parcelable)connectionEvent));
    }
    
    private boolean oS(final String s, final String s2, final String s3, final String s4) {
        final int ol = oL();
        return !this.lH.contains(s) && !this.lM.contains(s2) && !this.lK.contains(s3) && !this.lL.contains(s4) && (s3.equals(s) || (ol & a.lm) == 0x0);
    }
    
    public boolean oG(final Context context, final String s, final Intent intent, final ServiceConnection serviceConnection, final int n) {
        if (!this.oF(context, intent)) {
            final boolean bindService = context.bindService(intent, serviceConnection, n);
            if (bindService) {
                this.oN(context, this.oP(serviceConnection), s, intent, 2);
            }
            return bindService;
        }
        Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
        return false;
    }
    
    public void oH(final Context context, final ServiceConnection serviceConnection) {
        context.unbindService(serviceConnection);
        this.oN(context, this.oP(serviceConnection), null, null, 1);
    }
    
    public void oJ(final Context context, final ServiceConnection serviceConnection, final String s, final Intent intent) {
        this.oN(context, this.oP(serviceConnection), s, intent, 3);
    }
    
    public void oO(final Context context, final ServiceConnection serviceConnection) {
        this.oN(context, this.oP(serviceConnection), null, null, 4);
    }
}
