// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.model.ModelWriter;
import com.android.launcher3.util.ContentWriter;
import android.os.Process;
import java.util.ArrayList;

public class FolderInfo extends ItemInfo
{
    public ArrayList contents;
    ArrayList listeners;
    public int options;
    
    public FolderInfo() {
        this.contents = new ArrayList();
        this.listeners = new ArrayList();
        this.itemType = 2;
        this.user = Process.myUserHandle();
    }
    
    public void add(final ShortcutInfo shortcutInfo, final int n, final boolean b) {
        final int boundToRange = Utilities.boundToRange(n, 0, this.contents.size());
        this.contents.add(boundToRange, shortcutInfo);
        for (int i = 0; i < this.listeners.size(); ++i) {
            ((FolderInfo$FolderListener)this.listeners.get(i)).onAdd(shortcutInfo, boundToRange);
        }
        this.itemsChanged(b);
    }
    
    public void add(final ShortcutInfo shortcutInfo, final boolean b) {
        this.add(shortcutInfo, this.contents.size(), b);
    }
    
    public void addListener(final FolderInfo$FolderListener folderInfo$FolderListener) {
        this.listeners.add(folderInfo$FolderListener);
    }
    
    public boolean hasOption(final int n) {
        boolean b = false;
        if ((this.options & n) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public void itemsChanged(final boolean b) {
        for (int i = 0; i < this.listeners.size(); ++i) {
            ((FolderInfo$FolderListener)this.listeners.get(i)).onItemsChanged(b);
        }
    }
    
    public void onAddToDatabase(final ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        contentWriter.put("title", this.title).put("options", Integer.valueOf(this.options));
    }
    
    public void prepareAutoUpdate() {
        for (int i = 0; i < this.listeners.size(); ++i) {
            ((FolderInfo$FolderListener)this.listeners.get(i)).prepareAutoUpdate();
        }
    }
    
    public void remove(final ShortcutInfo shortcutInfo, final boolean b) {
        this.contents.remove(shortcutInfo);
        for (int i = 0; i < this.listeners.size(); ++i) {
            ((FolderInfo$FolderListener)this.listeners.get(i)).onRemove(shortcutInfo);
        }
        this.itemsChanged(b);
    }
    
    public void removeListener(final FolderInfo$FolderListener folderInfo$FolderListener) {
        this.listeners.remove(folderInfo$FolderListener);
    }
    
    public void setOption(final int n, final boolean b, final ModelWriter modelWriter) {
        final int options = this.options;
        if (b) {
            this.options |= n;
        }
        else {
            this.options &= ~n;
        }
        if (modelWriter != null && options != this.options) {
            modelWriter.updateItemInDatabase(this);
        }
    }
    
    public void setTitle(final CharSequence title) {
        this.title = title;
        for (int i = 0; i < this.listeners.size(); ++i) {
            ((FolderInfo$FolderListener)this.listeners.get(i)).onTitleChanged(title);
        }
    }
}
