// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import android.content.ComponentName;
import com.android.launcher3.ItemInfo;

final class l extends ItemInfo
{
    final /* synthetic */ SmartspaceView eU;
    
    l(final SmartspaceView eu) {
        this.eU = eu;
    }
    
    public ComponentName getTargetComponent() {
        return new ComponentName(this.eU.getContext(), "");
    }
}
