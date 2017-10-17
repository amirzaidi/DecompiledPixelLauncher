// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;

final class Launcher$26 implements Runnable
{
    final /* synthetic */ Launcher this$0;
    final /* synthetic */ int val$end;
    final /* synthetic */ boolean val$forceAnimateIcons;
    final /* synthetic */ ArrayList val$items;
    final /* synthetic */ int val$start;
    
    Launcher$26(final Launcher this$0, final ArrayList val$items, final int val$start, final int val$end, final boolean val$forceAnimateIcons) {
        this.this$0 = this$0;
        this.val$items = val$items;
        this.val$start = val$start;
        this.val$end = val$end;
        this.val$forceAnimateIcons = val$forceAnimateIcons;
    }
    
    public void run() {
        this.this$0.bindItems(this.val$items, this.val$start, this.val$end, this.val$forceAnimateIcons);
    }
}
