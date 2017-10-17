// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import android.app.AlarmManager;
import android.app.PendingIntent$CanceledException;
import java.util.concurrent.TimeUnit;
import android.app.PendingIntent$OnFinished;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CountDownLatch;
import com.android.launcher3.util.Preconditions;
import android.util.MutableLong;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.SystemClock;
import java.util.Calendar;
import android.content.Context;

public class k implements d
{
    private final long by;
    
    public k(final Context context) {
        this.by = this.initRecordedTime(context, 1);
    }
    
    public long aE() {
        return this.by;
    }
    
    protected long getAbsoluteBootTime() {
        return Calendar.getInstance().getTimeInMillis() - SystemClock.elapsedRealtime();
    }
    
    protected long initRecordedTime(final Context context, final int n) {
        final int n2 = 1;
        final Intent intent = new Intent("com.google.android.apps.nexuslauncher.reflection.ACTION_BOOT_CYCLE");
        final PendingIntent broadcast = PendingIntent.getBroadcast(context, n, intent, 536870912);
        final MutableLong mutableLong = new MutableLong(this.getAbsoluteBootTime());
        if (broadcast != null) {
            try {
                Preconditions.assertNonUiThread();
                final CountDownLatch countDownLatch = new CountDownLatch(1);
                final p p2 = new p(this, mutableLong, countDownLatch);
                try {
                    broadcast.send(n, (PendingIntent$OnFinished)p2, new Handler(Looper.getMainLooper()));
                    countDownLatch.await(1L, TimeUnit.SECONDS);
                    return mutableLong.value;
                }
                catch (PendingIntent$CanceledException ex) {}
                catch (InterruptedException ex2) {}
            }
            catch (PendingIntent$CanceledException ex3) {}
            catch (InterruptedException ex4) {}
        }
        intent.putExtra("time", mutableLong.value);
        ((AlarmManager)context.getSystemService("alarm")).set(n2, Long.MAX_VALUE, PendingIntent.getBroadcast(context, n, intent, 134217728));
        return mutableLong.value;
    }
}
