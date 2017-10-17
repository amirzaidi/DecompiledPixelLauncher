// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

public interface FolderInfo$FolderListener
{
    void onAdd(final ShortcutInfo p0, final int p1);
    
    void onItemsChanged(final boolean p0);
    
    void onRemove(final ShortcutInfo p0);
    
    void onTitleChanged(final CharSequence p0);
    
    void prepareAutoUpdate();
}
