// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

import android.database.Observable;

class f extends Observable
{
    public void WQ() {
        for (int i = this.mObservers.size() - 1; i >= 0; --i) {
            ((h)this.mObservers.get(i)).onChanged();
        }
    }
}
