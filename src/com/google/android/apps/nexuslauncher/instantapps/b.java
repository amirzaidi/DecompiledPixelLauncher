// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.instantapps;

import java.util.Iterator;
import java.util.Map;
import android.content.pm.ApplicationInfo;
import java.util.concurrent.TimeUnit;
import java.util.List;
import android.app.usage.UsageStats;
import android.content.Context;
import android.app.usage.UsageStatsManager;

public class b
{
    private static b gf;
    private final UsageStatsManager ge;
    
    private b(final Context context) {
        this.ge = (UsageStatsManager)context.getSystemService("usagestats");
    }
    
    private boolean eJ(final UsageStats usageStats, final UsageStats usageStats2) {
        boolean b = true;
        if (usageStats2 == null) {
            return b;
        }
        if (usageStats.getTotalTimeInForeground() <= usageStats2.getTotalTimeInForeground()) {
            b = false;
        }
        return b;
    }
    
    private boolean eK(final UsageStats usageStats, final UsageStats usageStats2) {
        boolean b = true;
        if (usageStats2 == null) {
            return b;
        }
        if (usageStats.getLastTimeUsed() <= usageStats2.getLastTimeUsed()) {
            b = false;
        }
        return b;
    }
    
    public static b get(final Context context) {
        if (b.gf == null) {
            b.gf = new b(context.getApplicationContext());
        }
        return b.gf;
    }
    
    public String eH(final List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        final long currentTimeMillis = System.currentTimeMillis();
        final Map queryAndAggregateUsageStats = this.ge.queryAndAggregateUsageStats(currentTimeMillis - TimeUnit.HOURS.toMillis(4), currentTimeMillis);
        final Iterator<ApplicationInfo> iterator = (Iterator<ApplicationInfo>)list.iterator();
        UsageStats usageStats = null;
        String s = null;
        while (iterator.hasNext()) {
            final ApplicationInfo applicationInfo = iterator.next();
            final UsageStats usageStats2 = queryAndAggregateUsageStats.get(applicationInfo.packageName);
            UsageStats usageStats3;
            String s2;
            if (usageStats2 != null) {
                if (this.eK(usageStats2, usageStats)) {
                    final String packageName = applicationInfo.packageName;
                    usageStats3 = usageStats2;
                    s2 = packageName;
                }
                else {
                    usageStats3 = usageStats;
                    s2 = s;
                }
            }
            else {
                usageStats3 = usageStats;
                s2 = s;
            }
            usageStats = usageStats3;
            s = s2;
        }
        return s;
    }
    
    public String eI(final List list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        final long n = System.currentTimeMillis() - TimeUnit.HOURS.toMillis(4);
        final Map queryAndAggregateUsageStats = this.ge.queryAndAggregateUsageStats(n - TimeUnit.DAYS.toMillis(2), n);
        final Iterator<ApplicationInfo> iterator = (Iterator<ApplicationInfo>)list.iterator();
        UsageStats usageStats = null;
        String s = null;
        while (iterator.hasNext()) {
            final ApplicationInfo applicationInfo = iterator.next();
            final UsageStats usageStats2 = queryAndAggregateUsageStats.get(applicationInfo.packageName);
            UsageStats usageStats3;
            String s2;
            if (usageStats2 != null && this.eJ(usageStats2, usageStats)) {
                final String packageName = applicationInfo.packageName;
                usageStats3 = usageStats2;
                s2 = packageName;
            }
            else {
                usageStats3 = usageStats;
                s2 = s;
            }
            usageStats = usageStats3;
            s = s2;
        }
        return s;
    }
}
