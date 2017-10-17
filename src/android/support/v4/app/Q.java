// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Parcelable;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public class q extends z
{
    List XI;
    CharSequence XJ;
    CharSequence XK;
    
    q() {
        this.XI = new ArrayList();
    }
    
    public void akz(final Bundle bundle) {
        super.akz(bundle);
        if (this.XJ != null) {
            bundle.putCharSequence("android.selfDisplayName", this.XJ);
        }
        if (this.XK != null) {
            bundle.putCharSequence("android.conversationTitle", this.XK);
        }
        if (!this.XI.isEmpty()) {
            bundle.putParcelableArray("android.messages", (Parcelable[])al.amO(this.XI));
        }
    }
}
