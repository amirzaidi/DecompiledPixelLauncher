// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import android.content.ComponentName;
import com.android.launcher3.ItemInfo;

final class j extends ItemInfo
{
    final /* synthetic */ SmartspaceView eb;
    
    j(final SmartspaceView eb) {
        this.eb = eb;
    }
    
    public ComponentName getTargetComponent() {
        return new ComponentName(this.eb.getContext(), "");
    }
}
