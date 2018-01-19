// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.reflection.a;

import android.util.Pair;
import java.util.Comparator;

final class f implements Comparator
{
    public int compare(final Pair pair, final Pair pair2) {
        return Float.compare((float)pair2.second, (float)pair.second);
    }
}
