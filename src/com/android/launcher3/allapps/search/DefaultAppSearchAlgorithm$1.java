// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps.search;

import java.util.ArrayList;

final class DefaultAppSearchAlgorithm$1 implements Runnable
{
    final /* synthetic */ DefaultAppSearchAlgorithm this$0;
    final /* synthetic */ AllAppsSearchBarController$Callbacks val$callback;
    final /* synthetic */ String val$query;
    final /* synthetic */ ArrayList val$result;
    
    DefaultAppSearchAlgorithm$1(final DefaultAppSearchAlgorithm this$0, final AllAppsSearchBarController$Callbacks val$callback, final String val$query, final ArrayList val$result) {
        this.this$0 = this$0;
        this.val$callback = val$callback;
        this.val$query = val$query;
        this.val$result = val$result;
    }
    
    public void run() {
        this.val$callback.onSearchResult(this.val$query, this.val$result);
    }
}
