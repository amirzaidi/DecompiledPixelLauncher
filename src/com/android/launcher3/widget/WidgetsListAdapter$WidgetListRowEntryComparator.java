// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import com.android.launcher3.util.LabelComparator;
import java.util.Comparator;

public class WidgetsListAdapter$WidgetListRowEntryComparator implements Comparator
{
    private final LabelComparator mComparator;
    
    public WidgetsListAdapter$WidgetListRowEntryComparator() {
        this.mComparator = new LabelComparator();
    }
    
    public int compare(final WidgetListRowEntry widgetListRowEntry, final WidgetListRowEntry widgetListRowEntry2) {
        return this.mComparator.compare(widgetListRowEntry.pkgItem.title.toString(), widgetListRowEntry2.pkgItem.title.toString());
    }
}
