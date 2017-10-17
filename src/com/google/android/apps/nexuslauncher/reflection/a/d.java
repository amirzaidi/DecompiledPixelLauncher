// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import android.app.usage.UsageEvents;
import com.google.android.apps.nexuslauncher.reflection.g;
import android.content.ComponentName;
import android.app.usage.UsageEvents$Event;
import java.util.Iterator;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.d.i;
import com.google.android.apps.nexuslauncher.reflection.b.a;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.reflection.b.b;
import android.app.usage.UsageStatsManager;

public class d implements c
{
    private final UsageStatsManager l;
    
    public d(final UsageStatsManager l) {
        this.l = l;
    }
    
    public void l(final b b) {
        final List m = this.m(600000L);
        final ArrayList list = new ArrayList<a>(m.size());
        final Iterator<i> iterator = m.iterator();
        while (iterator.hasNext()) {
            list.add(new a(iterator.next()));
        }
        com.google.research.reflection.common.b.Tb(b, "app_usage", list);
    }
    
    public List m(final long n) {
        final ArrayList<i> list = new ArrayList<i>();
        final long currentTimeMillis = System.currentTimeMillis();
        final UsageEvents queryEvents = this.l.queryEvents(currentTimeMillis - n, currentTimeMillis);
        final UsageEvents$Event usageEvents$Event = new UsageEvents$Event();
        while (queryEvents.hasNextEvent()) {
            queryEvents.getNextEvent(usageEvents$Event);
            if (usageEvents$Event.getEventType() == 1) {
                final i i = new i();
                i.aC = "app_usage";
                i.aD = usageEvents$Event.getTimeStamp();
                i.aE = g.aU(new ComponentName(usageEvents$Event.getPackageName(), usageEvents$Event.getClassName()));
                list.add(i);
            }
        }
        return list;
    }
}
