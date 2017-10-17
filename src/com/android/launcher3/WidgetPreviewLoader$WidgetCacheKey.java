// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.UserHandle;
import android.content.ComponentName;
import com.android.launcher3.util.ComponentKey;

final class WidgetPreviewLoader$WidgetCacheKey extends ComponentKey
{
    final String size;
    
    public WidgetPreviewLoader$WidgetCacheKey(final ComponentName componentName, final UserHandle userHandle, final String size) {
        super(componentName, userHandle);
        this.size = size;
    }
    
    public boolean equals(final Object o) {
        return super.equals(o) && ((WidgetPreviewLoader$WidgetCacheKey)o).size.equals(this.size);
    }
    
    public int hashCode() {
        return super.hashCode() ^ this.size.hashCode();
    }
}
