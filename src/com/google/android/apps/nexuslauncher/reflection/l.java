// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.io.IOException;
import com.google.android.apps.nexuslauncher.reflection.d.a;
import com.android.launcher3.util.IOUtils;
import com.android.launcher3.util.Preconditions;
import com.google.android.apps.nexuslauncher.reflection.c.c;
import java.io.File;
import android.content.SharedPreferences;

public class l
{
    public void aX(final SharedPreferences sharedPreferences, final File file, final b b, final c c, final e e) {
        while (true) {
            final int n = 24;
            Preconditions.assertNonUiThread();
            b.an(file);
            Label_0104: {
                try {
                    final byte[] byteArray = IOUtils.toByteArray(file);
                    try {
                        final a ad = a.ad(byteArray);
                        try {
                            final int version = ad.version;
                            if (version >= n) {
                                break Label_0104;
                            }
                            b.as();
                            if (e.aG() && e.aF() == n) {
                                e.aJ(false);
                                return;
                            }
                        }
                        catch (IOException ex) {
                            final int version = -1;
                        }
                    }
                    catch (IOException ex2) {}
                }
                catch (IOException ex3) {}
                e.aJ(true);
                return;
            }
            b.as();
        }
    }
}
