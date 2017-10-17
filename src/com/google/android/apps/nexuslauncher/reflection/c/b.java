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

public class b
{
    private final Set J;
    private final SharedPreferences K;
    private final File mDir;
    
    public b(final SharedPreferences k, final File mDir, final List list) {
        this.K = k;
        this.mDir = mDir;
        this.J = new HashSet(list);
    }
    
    private void U(final File file) {
        int i = 0;
        if (file.isDirectory()) {
            for (File[] listFiles = file.listFiles(); i < listFiles.length; ++i) {
                this.U(listFiles[i]);
            }
            if (file.list().length == 0 && this.J.contains(file.getAbsolutePath())) {
                file.delete();
            }
        }
        else if (this.J.contains(file.getName()) || (file.getParentFile() != null && this.J.contains(file.getParentFile().getAbsolutePath()))) {
            file.delete();
        }
    }
    
    public void T() {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            this.K.edit().clear().apply();
            if (this.mDir.exists() && this.mDir.isDirectory()) {
                final File[] listFiles = this.mDir.listFiles();
                for (int i = 0; i < listFiles.length; ++i) {
                    this.U(listFiles[i]);
                }
            }
        }
    }
}
