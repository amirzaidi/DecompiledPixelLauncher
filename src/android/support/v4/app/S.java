// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import java.util.ArrayList;

class s implements aC
{
    final /* synthetic */ aR Zs;
    final String Zt;
    final int Zu;
    final int mFlags;
    
    s(final aR zs, final String zt, final int zu, final int mFlags) {
        this.Zs = zs;
        this.Zt = zt;
        this.Zu = zu;
        this.mFlags = mFlags;
    }
    
    public boolean alK(final ArrayList list, final ArrayList list2) {
        if (this.Zs.adM != null && this.Zu < 0 && this.Zt == null) {
            final aW akG = this.Zs.adM.akG();
            if (akG != null && akG.apn()) {
                return false;
            }
        }
        return this.Zs.aqZ(list, list2, this.Zt, this.Zu, this.mFlags);
    }
}
