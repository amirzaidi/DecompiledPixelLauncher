// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.d;

import java.util.Iterator;
import com.google.android.apps.nexuslauncher.reflection.b.b;
import android.app.usage.UsageEvents;
import com.google.android.apps.nexuslauncher.reflection.g;
import android.content.ComponentName;
import android.app.usage.UsageEvents$Event;
import com.google.android.apps.nexuslauncher.reflection.a.e;
import java.util.ArrayList;
import java.util.List;
import android.app.usage.UsageStatsManager;

public class a implements c
{
    private final UsageStatsManager bI;
    
    public a(final UsageStatsManager bi) {
        this.bI = bi;
    }
    
    public List aV(final long n) {
        final ArrayList<e> list = new ArrayList<e>();
        final long currentTimeMillis = System.currentTimeMillis();
        final UsageEvents queryEvents = this.bI.queryEvents(currentTimeMillis - n, currentTimeMillis);
        final UsageEvents$Event usageEvents$Event = new UsageEvents$Event();
        while (queryEvents.hasNextEvent()) {
            queryEvents.getNextEvent(usageEvents$Event);
            if (usageEvents$Event.getEventType() == 1) {
                final e e = new e();
                e.aN = "app_usage";
                e.aM = usageEvents$Event.getTimeStamp();
                e.aJ = g.bZ(new ComponentName(usageEvents$Event.getPackageName(), usageEvents$Event.getClassName()));
                list.add(e);
            }
        }
        return list;
    }
    
    public void aW(final b b) {
        final List av = this.aV(600000L);
        final ArrayList list = new ArrayList<com.google.android.apps.nexuslauncher.reflection.b.a>(av.size());
        final Iterator<e> iterator = av.iterator();
        while (iterator.hasNext()) {
            list.add(new com.google.android.apps.nexuslauncher.reflection.b.a(iterator.next()));
        }
        com.google.research.reflection.common.b.Uo(b, "app_usage", list);
    }
}
