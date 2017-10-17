// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.util.Log;
import android.support.v4.view.f;
import java.util.ArrayList;
import java.util.Collections;
import java.lang.ref.WeakReference;
import android.view.View;
import java.util.List;

class c implements x
{
    final /* synthetic */ RecyclerView Qj;
    
    c(final RecyclerView qj) {
        this.Qj = qj;
    }
    
    public void XF(final j j) {
        j.setIsRecyclable(true);
        if (j.mShadowedHolder != null && j.mShadowingHolder == null) {
            j.mShadowedHolder = null;
        }
        j.mShadowingHolder = null;
        if (!j.shouldBeKeptAsChild() && !this.Qj.removeAnimatingView(j.itemView) && j.isTmpDetached()) {
            this.Qj.removeDetachedView(j.itemView, false);
        }
    }
}
