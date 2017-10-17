// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Bundle;
import android.content.Context;
import android.view.View;

class aa extends ac
{
    final /* synthetic */ g abG;
    
    aa(final g abG) {
        this.abG = abG;
    }
    
    public boolean alD() {
        return this.abG.mView != null;
    }
    
    public View alH(final int n) {
        if (this.abG.mView != null) {
            return this.abG.mView.findViewById(n);
        }
        throw new IllegalStateException("Fragment does not have a view");
    }
    
    public g anU(final Context context, final String s, final Bundle bundle) {
        return this.abG.XU.anU(context, s, bundle);
    }
}
