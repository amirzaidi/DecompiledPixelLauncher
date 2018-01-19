// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.io.IOException;
import com.google.android.apps.nexuslauncher.reflection.f.a;
import com.android.launcher3.util.IOUtils;
import com.android.launcher3.util.Preconditions;
import java.io.File;
import android.content.SharedPreferences;

public class h
{
    public void aZ(final SharedPreferences sharedPreferences, final File file, final c c, final com.google.android.apps.nexuslauncher.reflection.c.c c2, final m m) {
        while (true) {
            final int n = 24;
            Preconditions.assertNonUiThread();
            c.aV(file);
            Label_0104: {
                try {
                    final byte[] byteArray = IOUtils.toByteArray(file);
                    try {
                        final a ab = a.aB(byteArray);
                        try {
                            final int version = ab.version;
                            if (version >= n) {
                                break Label_0104;
                            }
                            c.aQ();
                            if (m.bl() && m.bm() == n) {
                                m.bn(false);
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
                m.bn(true);
                return;
            }
            c.aQ();
        }
    }
}
