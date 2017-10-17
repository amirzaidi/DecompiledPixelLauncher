// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.testing;

public class MemoryTracker$ProcessMemInfo
{
    public long currentPss;
    public long currentUss;
    public int head;
    public long max;
    public String name;
    public int pid;
    public long[] pss;
    public long startTime;
    public long[] uss;
    
    public MemoryTracker$ProcessMemInfo(final int pid, final String name, final long startTime) {
        final int n = 256;
        this.pss = new long[n];
        this.uss = new long[n];
        this.max = 1L;
        this.head = 0;
        this.pid = pid;
        this.name = name;
        this.startTime = startTime;
    }
    
    public long getUptime() {
        return System.currentTimeMillis() - this.startTime;
    }
}
