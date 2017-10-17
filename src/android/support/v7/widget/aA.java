// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class aa implements Runnable
{
    final /* synthetic */ RecyclerView Rf;
    
    aa(final RecyclerView rf) {
        this.Rf = rf;
    }
    
    public void run() {
        if (this.Rf.mFirstLayoutComplete || this.Rf.isLayoutRequested()) {
            return;
        }
        if (!this.Rf.mIsAttached) {
            this.Rf.requestLayout();
            return;
        }
        if (!this.Rf.mLayoutFrozen) {
            this.Rf.consumePendingUpdateOperations();
            return;
        }
        this.Rf.mLayoutRequestEaten = true;
    }
}
