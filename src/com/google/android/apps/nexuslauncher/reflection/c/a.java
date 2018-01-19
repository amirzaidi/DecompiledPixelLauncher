// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.c;

import com.android.launcher3.util.Preconditions;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import java.io.File;
import android.content.SharedPreferences;
import java.util.Set;

public class a
{
    private final Set j;
    private final SharedPreferences k;
    private final File mDir;
    
    public a(final SharedPreferences k, final File mDir, final List list) {
        this.k = k;
        this.mDir = mDir;
        this.j = new HashSet(list);
    }
    
    private void x(final File file) {
        int i = 0;
        if (file.isDirectory()) {
            for (File[] listFiles = file.listFiles(); i < listFiles.length; ++i) {
                this.x(listFiles[i]);
            }
            if (file.list().length == 0 && this.j.contains(file.getAbsolutePath())) {
                file.delete();
            }
        }
        else if (this.j.contains(file.getName()) || (file.getParentFile() != null && this.j.contains(file.getParentFile().getAbsolutePath()))) {
            file.delete();
        }
    }
    
    public void w() {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            this.k.edit().clear().apply();
            if (this.mDir.exists() && this.mDir.isDirectory()) {
                final File[] listFiles = this.mDir.listFiles();
                for (int i = 0; i < listFiles.length; ++i) {
                    this.x(listFiles[i]);
                }
            }
        }
    }
}
