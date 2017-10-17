// 
// Decompiled by Procyon v0.5.30
// 

package android.support.a;

import android.view.Choreographer$FrameCallback;
import android.view.Choreographer;

class m implements l
{
    final Choreographer mChoreographer;
    
    private m() {
        this.mChoreographer = Choreographer.getInstance();
    }
    
    public void auL(final Choreographer$FrameCallback choreographer$FrameCallback) {
        this.mChoreographer.postFrameCallback(choreographer$FrameCallback);
    }
}
