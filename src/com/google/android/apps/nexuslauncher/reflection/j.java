// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

import java.io.IOException;
import com.google.android.apps.nexuslauncher.reflection.a.k;
import com.android.launcher3.util.Preconditions;
import com.google.android.apps.nexuslauncher.reflection.c.c;
import java.io.File;
import android.content.SharedPreferences;

public class j
{
    public void cp(final SharedPreferences sharedPreferences, final File file, final i i, final c c, final b b) {
        while (true) {
            final int n = 24;
            Preconditions.assertNonUiThread();
            i.ci(file);
            Label_0104: {
                try {
                    final byte[] cd = com.google.android.apps.nexuslauncher.util.b.cD(file);
                    try {
                        final k aq = k.aq(cd);
                        try {
                            final int bi = aq.bi;
                            if (bi >= n) {
                                break Label_0104;
                            }
                            i.cj();
                            if (b.bC() && b.bB() == n) {
                                b.bF(false);
                                return;
                            }
                        }
                        catch (IOException ex) {
                            final int bi = -1;
                        }
                    }
                    catch (IOException ex2) {}
                }
                catch (IOException ex3) {}
                b.bF(true);
                return;
            }
            i.cj();
        }
    }
}
