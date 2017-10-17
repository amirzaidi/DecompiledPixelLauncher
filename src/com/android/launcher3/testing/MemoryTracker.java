// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

import android.os.Debug$MemoryInfo;
import java.util.Iterator;
import android.app.ActivityManager$RunningAppProcessInfo;
import android.os.SystemClock;
import android.util.Log;
import android.app.ActivityManager$RunningServiceInfo;
import android.content.Intent;
import java.util.ArrayList;
import android.os.Handler;
import android.util.LongSparseArray;
import android.os.IBinder;
import android.app.ActivityManager;
import android.app.Service;

public class MemoryTracker extends Service
{
    public static final String TAG;
    ActivityManager mAm;
    private final IBinder mBinder;
    public final LongSparseArray mData;
    Handler mHandler;
    private final Object mLock;
    public final ArrayList mPids;
    private int[] mPidsArray;
    
    static {
        TAG = MemoryTracker.class.getSimpleName();
    }
    
    public MemoryTracker() {
        this.mData = new LongSparseArray();
        this.mPids = new ArrayList();
        this.mPidsArray = new int[0];
        this.mLock = new Object();
        this.mHandler = new MemoryTracker$1(this);
        this.mBinder = (IBinder)new MemoryTracker$MemoryTrackerInterface(this);
    }
    
    public MemoryTracker$ProcessMemInfo getMemInfo(final int n) {
        return (MemoryTracker$ProcessMemInfo)this.mData.get((long)n);
    }
    
    public int[] getTrackedProcesses() {
        return this.mPidsArray;
    }
    
    public IBinder onBind(final Intent intent) {
        this.mHandler.sendEmptyMessage(1);
        return this.mBinder;
    }
    
    public void onCreate() {
        this.mAm = (ActivityManager)this.getSystemService("activity");
        for (final ActivityManager$RunningServiceInfo activityManager$RunningServiceInfo : this.mAm.getRunningServices(256)) {
            if (activityManager$RunningServiceInfo.service.getPackageName().equals(this.getPackageName())) {
                Log.v(MemoryTracker.TAG, "discovered running service: " + activityManager$RunningServiceInfo.process + " (" + activityManager$RunningServiceInfo.pid + ")");
                this.startTrackingProcess(activityManager$RunningServiceInfo.pid, activityManager$RunningServiceInfo.process, System.currentTimeMillis() - (SystemClock.elapsedRealtime() - activityManager$RunningServiceInfo.activeSince));
            }
        }
        for (final ActivityManager$RunningAppProcessInfo activityManager$RunningAppProcessInfo : this.mAm.getRunningAppProcesses()) {
            final String processName = activityManager$RunningAppProcessInfo.processName;
            if (processName.startsWith(this.getPackageName())) {
                Log.v(MemoryTracker.TAG, "discovered other running process: " + processName + " (" + activityManager$RunningAppProcessInfo.pid + ")");
                this.startTrackingProcess(activityManager$RunningAppProcessInfo.pid, processName, System.currentTimeMillis());
            }
        }
    }
    
    public void onDestroy() {
        this.mHandler.sendEmptyMessage(2);
    }
    
    public int onStartCommand(final Intent intent, final int n, final int n2) {
        final int n3 = 1;
        Log.v(MemoryTracker.TAG, "Received start id " + n2 + ": " + intent);
        if (intent != null && "com.android.launcher3.action.START_TRACKING".equals(intent.getAction())) {
            this.startTrackingProcess(intent.getIntExtra("pid", -1), intent.getStringExtra("name"), intent.getLongExtra("start", System.currentTimeMillis()));
        }
        this.mHandler.sendEmptyMessage(n3);
        return n3;
    }
    
    public void startTrackingProcess(final int n, final String s, final long n2) {
        final Object mLock = this.mLock;
        // monitorenter(mLock)
        final long n3 = n;
        try {
            final Long value = n3;
            if (this.mPids.contains(value)) {
                return;
            }
            this.mPids.add(value);
            this.updatePidsArrayL();
            this.mData.put((long)n, (Object)new MemoryTracker$ProcessMemInfo(n, s, n2));
        }
        finally {
        }
        // monitorexit(mLock)
    }
    
    void update() {
        synchronized (this.mLock) {
            final Debug$MemoryInfo[] processMemoryInfo = this.mAm.getProcessMemoryInfo(this.mPidsArray);
            for (int i = 0; i < processMemoryInfo.length; ++i) {
                final Debug$MemoryInfo debug$MemoryInfo = processMemoryInfo[i];
                if (i > this.mPids.size()) {
                    Log.e(MemoryTracker.TAG, "update: unknown process info received: " + debug$MemoryInfo);
                    break;
                }
                final long n = (int)(Object)this.mPids.get(i);
                final MemoryTracker$ProcessMemInfo memoryTracker$ProcessMemInfo = (MemoryTracker$ProcessMemInfo)this.mData.get(n);
                memoryTracker$ProcessMemInfo.head = (memoryTracker$ProcessMemInfo.head + 1) % memoryTracker$ProcessMemInfo.pss.length;
                final long[] pss = memoryTracker$ProcessMemInfo.pss;
                final int head = memoryTracker$ProcessMemInfo.head;
                final int totalPss = debug$MemoryInfo.getTotalPss();
                memoryTracker$ProcessMemInfo.currentPss = totalPss;
                pss[head] = totalPss;
                final long[] uss = memoryTracker$ProcessMemInfo.uss;
                final int head2 = memoryTracker$ProcessMemInfo.head;
                final int totalPrivateDirty = debug$MemoryInfo.getTotalPrivateDirty();
                memoryTracker$ProcessMemInfo.currentUss = totalPrivateDirty;
                uss[head2] = totalPrivateDirty;
                if (memoryTracker$ProcessMemInfo.currentPss > memoryTracker$ProcessMemInfo.max) {
                    memoryTracker$ProcessMemInfo.max = memoryTracker$ProcessMemInfo.currentPss;
                }
                if (memoryTracker$ProcessMemInfo.currentUss > memoryTracker$ProcessMemInfo.max) {
                    memoryTracker$ProcessMemInfo.max = memoryTracker$ProcessMemInfo.currentUss;
                }
                if (memoryTracker$ProcessMemInfo.currentPss == 0L) {
                    Log.v(MemoryTracker.TAG, "update: pid " + n + " has pss=0, it probably died");
                    this.mData.remove(n);
                }
            }
            for (int j = this.mPids.size() - 1; j >= 0; --j) {
                if (this.mData.get((long)(int)this.mPids.get(j)) == null) {
                    this.mPids.remove(j);
                    this.updatePidsArrayL();
                }
            }
        }
    }
    
    void updatePidsArrayL() {
        final int size = this.mPids.size();
        this.mPidsArray = new int[size];
        final StringBuffer sb = new StringBuffer("Now tracking processes: ");
        for (int i = 0; i < size; ++i) {
            sb.append(this.mPidsArray[i] = (int)this.mPids.get(i));
            sb.append(" ");
        }
        Log.v(MemoryTracker.TAG, sb.toString());
    }
}
