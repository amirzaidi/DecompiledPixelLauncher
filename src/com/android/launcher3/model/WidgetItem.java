// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.os.Process;
import com.android.launcher3.Utilities;
import com.android.launcher3.InvariantDeviceProfile;
import android.content.pm.PackageManager;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;
import android.os.UserHandle;
import java.text.Collator;
import com.android.launcher3.util.ComponentKey;

public class WidgetItem extends ComponentKey implements Comparable
{
    private static Collator sCollator;
    private static UserHandle sMyUserHandle;
    public final ShortcutConfigActivityInfo activityInfo;
    public final String label;
    public final int spanX;
    public final int spanY;
    public final LauncherAppWidgetProviderInfo widgetInfo;
    
    public WidgetItem(final LauncherAppWidgetProviderInfo widgetInfo, final PackageManager packageManager, final InvariantDeviceProfile invariantDeviceProfile) {
        super(widgetInfo.provider, widgetInfo.getProfile());
        this.label = Utilities.trim(widgetInfo.getLabel(packageManager));
        this.widgetInfo = widgetInfo;
        this.activityInfo = null;
        this.spanX = Math.min(widgetInfo.spanX, invariantDeviceProfile.numColumns);
        this.spanY = Math.min(widgetInfo.spanY, invariantDeviceProfile.numRows);
    }
    
    public WidgetItem(final ShortcutConfigActivityInfo activityInfo) {
        final boolean b = true;
        super(activityInfo.getComponent(), activityInfo.getUser());
        this.label = Utilities.trim(activityInfo.getLabel());
        this.widgetInfo = null;
        this.activityInfo = activityInfo;
        this.spanY = (b ? 1 : 0);
        this.spanX = (b ? 1 : 0);
    }
    
    public int compareTo(final WidgetItem widgetItem) {
        if (WidgetItem.sMyUserHandle == null) {
            WidgetItem.sMyUserHandle = Process.myUserHandle();
            WidgetItem.sCollator = Collator.getInstance();
        }
        final boolean b = WidgetItem.sMyUserHandle.equals((Object)this.user) ^ true;
        if (WidgetItem.sMyUserHandle.equals((Object)widgetItem.user) ^ true ^ b) {
            int n;
            if (b) {
                n = 1;
            }
            else {
                n = -1;
            }
            return n;
        }
        final int compare = WidgetItem.sCollator.compare(this.label, widgetItem.label);
        if (compare != 0) {
            return compare;
        }
        final int n2 = this.spanX * this.spanY;
        final int n3 = widgetItem.spanX * widgetItem.spanY;
        int n4;
        if (n2 == n3) {
            n4 = Integer.compare(this.spanY, widgetItem.spanY);
        }
        else {
            n4 = Integer.compare(n2, n3);
        }
        return n4;
    }
}
