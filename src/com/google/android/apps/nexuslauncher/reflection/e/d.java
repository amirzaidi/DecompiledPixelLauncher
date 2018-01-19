// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.e;

import android.app.usage.UsageEvents;
import android.content.ComponentName;
import android.app.usage.UsageEvents$Event;
import java.util.Iterator;
import java.util.List;
import com.google.android.apps.nexuslauncher.reflection.f.i;
import com.google.android.apps.nexuslauncher.reflection.d.a;
import java.util.ArrayList;
import com.google.android.apps.nexuslauncher.reflection.d.b;
import android.app.usage.UsageStatsManager;

public class d implements c
{
    private final UsageStatsManager U;
    
    public d(final UsageStatsManager u) {
        this.U = u;
    }
    
    public void ao(final b b) {
        final List ax = this.ax(600000L);
        final ArrayList list = new ArrayList<a>(ax.size());
        final Iterator<i> iterator = ax.iterator();
        while (iterator.hasNext()) {
            list.add(new a(iterator.next()));
        }
        com.google.research.reflection.common.b.HF(b, "app_usage", list);
    }
    
    public List ax(final long n) {
        final ArrayList<i> list = new ArrayList<i>();
        final long currentTimeMillis = System.currentTimeMillis();
        final UsageEvents queryEvents = this.U.queryEvents(currentTimeMillis - n, currentTimeMillis);
        final UsageEvents$Event usageEvents$Event = new UsageEvents$Event();
        while (queryEvents.hasNextEvent()) {
            queryEvents.getNextEvent(usageEvents$Event);
            if (usageEvents$Event.getEventType() == 1) {
                final i i = new i();
                i.aM = "app_usage";
                i.aN = usageEvents$Event.getTimeStamp();
                i.aP = com.google.android.apps.nexuslauncher.reflection.b.aK(new ComponentName(usageEvents$Event.getPackageName(), usageEvents$Event.getClassName()));
                list.add(i);
            }
        }
        return list;
    }
}
