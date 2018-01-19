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

public class m
{
    static final String PREF_KEY_BACKGROUND_MODEL_VERSION = "background_model_version";
    static final String PREF_KEY_PROGRESS = "staged_batch_training_progress";
    private static final Pattern bM;
    private final File bN;
    private n bO;
    private final c bP;
    private final com.google.android.apps.nexuslauncher.reflection.c bQ;
    private final SharedPreferences bR;
    private final Context mContext;
    
    static {
        bM = Pattern.compile("^InProgress:(.+)$");
    }
    
    public m(final Context mContext, final c bp, final SharedPreferences br, final File bn, final com.google.android.apps.nexuslauncher.reflection.c bq) {
        this.mContext = mContext;
        this.bP = bp;
        this.bR = br;
        this.bN = bn;
        this.bQ = bq;
        this.bO = null;
    }
    
    private void bo(final Throwable t, final n n) {
        synchronized (this) {
            if (this.bO == n) {
                this.bR.edit().remove("background_model_version").remove("staged_batch_training_progress").apply();
                this.bN.delete();
                this.bO = null;
            }
        }
    }
    
    private void bp(final com.google.android.apps.nexuslauncher.reflection.c c, final n n) {
        synchronized (this) {
            if (this.bO == n) {
                this.bQ.aM(c);
                this.bQ.aU();
                this.bN.delete();
                this.bO = null;
            }
        }
    }
    
    public boolean bl() {
        synchronized (this) {
            final String string = this.bR.getString("staged_batch_training_progress", (String)null);
            return string != null && m.bM.matcher(string).find();
        }
    }
    
    public int bm() {
        synchronized (this) {
            return this.bR.getInt("background_model_version", 0);
        }
    }
    
    public void bn(final boolean b) {
        // monitorenter(this)
        Label_0104: {
            if (!b) {
                break Label_0104;
            }
            try {
                this.bR.edit().putString("staged_batch_training_progress", "New").putInt("background_model_version", 24).apply();
                this.bN.delete();
                Label_0068: {
                    this.bO = new n(this, null);
                }
                Utilities.THREAD_POOL_EXECUTOR.execute(this.bO);
                return;
            }
            // iftrue(Label_0068:, this.bO == null)
            finally {
            }
            // monitorexit(this)
        }
    }
}
