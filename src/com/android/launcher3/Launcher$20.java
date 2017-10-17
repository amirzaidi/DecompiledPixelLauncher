// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Process;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;

final class Launcher$20 implements DialogInterface$OnClickListener
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ String val$packageName;
    
    Launcher$20(final Launcher this$0, final String val$packageName) {
        this.this$0 = this$0;
        this.val$packageName = val$packageName;
    }
    
    public void onClick(final DialogInterface dialogInterface, final int n) {
        this.this$0.mWorkspace.removeAbandonedPromise(this.val$packageName, Process.myUserHandle());
    }
}
