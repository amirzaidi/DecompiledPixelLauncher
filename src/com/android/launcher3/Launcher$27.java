// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Collection;
import android.animation.AnimatorSet;

final class Launcher$27 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ AnimatorSet val$anim;
    final /* synthetic */ Collection val$bounceAnims;
    
    Launcher$27(final Launcher this$0, final AnimatorSet val$anim, final Collection val$bounceAnims) {
        this.this$0 = this$0;
        this.val$anim = val$anim;
        this.val$bounceAnims = val$bounceAnims;
    }
    
    public void run() {
        this.val$anim.playTogether(this.val$bounceAnims);
        this.val$anim.start();
    }
}
