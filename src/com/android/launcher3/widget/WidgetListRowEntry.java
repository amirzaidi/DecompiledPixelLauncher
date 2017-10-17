// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.widget;

import java.util.ArrayList;
import com.android.launcher3.model.PackageItemInfo;

public class WidgetListRowEntry
{
    public final PackageItemInfo pkgItem;
    public String titleSectionName;
    public final ArrayList widgets;
    
    public WidgetListRowEntry(final PackageItemInfo pkgItem, final ArrayList widgets) {
        this.pkgItem = pkgItem;
        this.widgets = widgets;
    }
}
