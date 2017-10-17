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
    private final Set bB;
    private final SharedPreferences bC;
    private final File mDir;
    
    public a(final SharedPreferences bc, final File mDir, final List list) {
        this.bC = bc;
        this.mDir = mDir;
        this.bB = new HashSet(list);
    }
    
    private void aM(final File file) {
        int i = 0;
        if (file.isDirectory()) {
            for (File[] listFiles = file.listFiles(); i < listFiles.length; ++i) {
                this.aM(listFiles[i]);
            }
            if (file.list().length == 0 && this.bB.contains(file.getAbsolutePath())) {
                file.delete();
            }
        }
        else if (this.bB.contains(file.getName()) || (file.getParentFile() != null && this.bB.contains(file.getParentFile().getAbsolutePath()))) {
            file.delete();
        }
    }
    
    public void aL() {
        synchronized (this) {
            Preconditions.assertNonUiThread();
            this.bC.edit().clear().apply();
            if (this.mDir.exists() && this.mDir.isDirectory()) {
                final File[] listFiles = this.mDir.listFiles();
                for (int i = 0; i < listFiles.length; ++i) {
                    this.aM(listFiles[i]);
                }
            }
        }
    }
}
