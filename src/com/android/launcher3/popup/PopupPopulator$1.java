// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import java.util.Comparator;

final class PopupPopulator$1 implements Comparator
{
    public int compare(final ShortcutInfoCompat shortcutInfoCompat, final ShortcutInfoCompat shortcutInfoCompat2) {
        if (shortcutInfoCompat.isDeclaredInManifest() && (shortcutInfoCompat2.isDeclaredInManifest() ^ true)) {
            return -1;
        }
        if (!shortcutInfoCompat.isDeclaredInManifest() && shortcutInfoCompat2.isDeclaredInManifest()) {
            return 1;
        }
        return Integer.compare(shortcutInfoCompat.getRank(), shortcutInfoCompat2.getRank());
    }
}
