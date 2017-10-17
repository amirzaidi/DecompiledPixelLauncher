// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import com.android.launcher3.Utilities;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.apps.nexuslauncher.reflection.c.c;
import java.io.File;
import java.util.regex.Pattern;

public class e
{
    static final String PREF_KEY_BACKGROUND_MODEL_VERSION = "background_model_version";
    static final String PREF_KEY_PROGRESS = "staged_batch_training_progress";
    private static final Pattern bk;
    private final File bl;
    private f bm;
    private final c bn;
    private final b bo;
    private final SharedPreferences bp;
    private final Context mContext;
    
    static {
        bk = Pattern.compile("^InProgress:(.+)$");
    }
    
    public e(final Context mContext, final c bn, final SharedPreferences bp, final File bl, final b bo) {
        this.mContext = mContext;
        this.bn = bn;
        this.bp = bp;
        this.bl = bl;
        this.bo = bo;
        this.bm = null;
    }
    
    private void aH(final Throwable t, final f f) {
        synchronized (this) {
            if (this.bm == f) {
                this.bp.edit().remove("background_model_version").remove("staged_batch_training_progress").apply();
                this.bl.delete();
                this.bm = null;
            }
        }
    }
    
    private void aI(final b b, final f f) {
        synchronized (this) {
            if (this.bm == f) {
                this.bo.ao(b);
                this.bo.aw();
                this.bl.delete();
                this.bm = null;
            }
        }
    }
    
    public int aF() {
        synchronized (this) {
            return this.bp.getInt("background_model_version", 0);
        }
    }
    
    public boolean aG() {
        synchronized (this) {
            final String string = this.bp.getString("staged_batch_training_progress", (String)null);
            return string != null && e.bk.matcher(string).find();
        }
    }
    
    public void aJ(final boolean b) {
        // monitorenter(this)
        Label_0104: {
            if (!b) {
                break Label_0104;
            }
            try {
                this.bp.edit().putString("staged_batch_training_progress", "New").putInt("background_model_version", 24).apply();
                this.bl.delete();
                Label_0068: {
                    this.bm = new f(this, null);
                }
                Utilities.THREAD_POOL_EXECUTOR.execute(this.bm);
                return;
            }
            // iftrue(Label_0068:, this.bm == null)
            finally {
            }
            // monitorexit(this)
        }
    }
}
