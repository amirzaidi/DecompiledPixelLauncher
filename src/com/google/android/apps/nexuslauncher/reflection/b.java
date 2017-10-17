// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import com.android.launcher3.Utilities;
import android.content.Context;
import android.content.SharedPreferences;
import java.io.File;
import java.util.regex.Pattern;

public class b
{
    static final String PREF_KEY_BACKGROUND_MODEL_VERSION = "background_model_version";
    static final String PREF_KEY_PROGRESS = "staged_batch_training_progress";
    private static final Pattern cq;
    private final File cr;
    private c cs;
    private final com.google.android.apps.nexuslauncher.reflection.c.c ct;
    private final i cu;
    private final SharedPreferences cv;
    private final Context mContext;
    
    static {
        cq = Pattern.compile("^InProgress:(.+)$");
    }
    
    public b(final Context mContext, final com.google.android.apps.nexuslauncher.reflection.c.c ct, final SharedPreferences cv, final File cr, final i cu) {
        this.mContext = mContext;
        this.ct = ct;
        this.cv = cv;
        this.cr = cr;
        this.cu = cu;
        this.cs = null;
    }
    
    private void bD(final Throwable t, final c c) {
        synchronized (this) {
            if (this.cs == c) {
                this.cv.edit().remove("background_model_version").remove("staged_batch_training_progress").apply();
                this.cr.delete();
                this.cs = null;
            }
        }
    }
    
    private void bE(final i i, final c c) {
        synchronized (this) {
            if (this.cs == c) {
                this.cu.ck(i);
                this.cu.ch();
                this.cr.delete();
                this.cs = null;
            }
        }
    }
    
    public int bB() {
        synchronized (this) {
            return this.cv.getInt("background_model_version", 0);
        }
    }
    
    public boolean bC() {
        synchronized (this) {
            final String string = this.cv.getString("staged_batch_training_progress", (String)null);
            return string != null && b.cq.matcher(string).find();
        }
    }
    
    public void bF(final boolean b) {
        // monitorenter(this)
        Label_0104: {
            if (!b) {
                break Label_0104;
            }
            try {
                this.cv.edit().putString("staged_batch_training_progress", "New").putInt("background_model_version", 24).apply();
                this.cr.delete();
                Label_0068: {
                    this.cs = new c(this, null);
                }
                Utilities.THREAD_POOL_EXECUTOR.execute(this.cs);
                return;
            }
            // iftrue(Label_0068:, this.cs == null)
            finally {
            }
            // monitorexit(this)
        }
    }
}
