// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection;

public class i
{
    static String generateRandomDeviceId() {
        final int n = 15;
        final StringBuilder sb = new StringBuilder(n);
        for (int i = 0; i < n; ++i) {
            sb.append(Integer.toHexString((int)(Math.random() * 16.0)));
        }
        return sb.toString();
    }
}
