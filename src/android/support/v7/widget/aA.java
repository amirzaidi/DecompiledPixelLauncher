// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v7.widget;

class aa implements Runnable
{
    final /* synthetic */ RecyclerView SO;
    
    aa(final RecyclerView so) {
        this.SO = so;
    }
    
    public void run() {
        if (this.SO.mFirstLayoutComplete || this.SO.isLayoutRequested()) {
            return;
        }
        if (!this.SO.mIsAttached) {
            this.SO.requestLayout();
            return;
        }
        if (!this.SO.mLayoutFrozen) {
            this.SO.consumePendingUpdateOperations();
            return;
        }
        this.SO.mLayoutRequestEaten = true;
    }
}
