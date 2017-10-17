// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import com.android.launcher3.model.WidgetItem;
import android.os.Process;
import android.os.UserHandle;
import java.text.Collator;
import java.util.Comparator;

public class WidgetItemComparator implements Comparator
{
    private final Collator mCollator;
    private final UserHandle mMyUserHandle;
    
    public WidgetItemComparator() {
        this.mMyUserHandle = Process.myUserHandle();
        this.mCollator = Collator.getInstance();
    }
    
    public int compare(final WidgetItem widgetItem, final WidgetItem widgetItem2) {
        final boolean b = this.mMyUserHandle.equals((Object)widgetItem.user) ^ true;
        if (this.mMyUserHandle.equals((Object)widgetItem2.user) ^ true ^ b) {
            int n;
            if (b) {
                n = 1;
            }
            else {
                n = -1;
            }
            return n;
        }
        final int compare = this.mCollator.compare(widgetItem.label, widgetItem2.label);
        if (compare != 0) {
            return compare;
        }
        final int n2 = widgetItem.spanX * widgetItem.spanY;
        final int n3 = widgetItem2.spanX * widgetItem2.spanY;
        int n4;
        if (n2 == n3) {
            n4 = Integer.compare(widgetItem.spanY, widgetItem2.spanY);
        }
        else {
            n4 = Integer.compare(n2, n3);
        }
        return n4;
    }
}
