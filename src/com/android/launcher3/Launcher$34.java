// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.UserHandle;
import java.util.ArrayList;

final class Launcher$34 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ ArrayList val$removed;
    final /* synthetic */ ArrayList val$updated;
    final /* synthetic */ UserHandle val$user;
    
    Launcher$34(final Launcher this$0, final ArrayList val$updated, final ArrayList val$removed, final UserHandle val$user) {
        this.this$0 = this$0;
        this.val$updated = val$updated;
        this.val$removed = val$removed;
        this.val$user = val$user;
    }
    
    public void run() {
        this.this$0.bindShortcutsChanged(this.val$updated, this.val$removed, this.val$user);
    }
}
