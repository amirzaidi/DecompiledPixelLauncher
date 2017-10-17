// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.model;

import android.graphics.Bitmap;
import com.android.launcher3.ShortcutInfo;
import com.android.launcher3.util.Provider;

final class LoaderTask$1 extends Provider
{
    final /* synthetic */ LoaderTask this$0;
    final /* synthetic */ LoaderCursor val$c;
    final /* synthetic */ ShortcutInfo val$finalInfo;
    
    LoaderTask$1(final LoaderTask this$0, final LoaderCursor val$c, final ShortcutInfo val$finalInfo) {
        this.this$0 = this$0;
        this.val$c = val$c;
        this.val$finalInfo = val$finalInfo;
    }
    
    public Bitmap get() {
        return this.val$c.loadIcon(this.val$finalInfo);
    }
}
