// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

public enum PopupPopulator$Item
{
    NOTIFICATION("NOTIFICATION", n3, 2130968602, false), 
    SHORTCUT("SHORTCUT", 0, 2130968593, (boolean)(n3 != 0)), 
    SYSTEM_SHORTCUT("SYSTEM_SHORTCUT", n2, 2130968622, (boolean)(n3 != 0)), 
    SYSTEM_SHORTCUT_ICON("SYSTEM_SHORTCUT_ICON", n, 2130968623, (boolean)(n3 != 0));
    
    public final boolean isShortcut;
    public final int layoutId;
    
    static {
        final int n = 3;
        final int n2 = 2;
        final int n3 = 1;
        final PopupPopulator$Item[] $values = new PopupPopulator$Item[4];
        $values[0] = PopupPopulator$Item.SHORTCUT;
        $values[n3] = PopupPopulator$Item.NOTIFICATION;
        $values[n2] = PopupPopulator$Item.SYSTEM_SHORTCUT;
        $values[n] = PopupPopulator$Item.SYSTEM_SHORTCUT_ICON;
        $VALUES = $values;
    }
    
    private PopupPopulator$Item(final String s, final int n, final int layoutId, final boolean isShortcut) {
        this.layoutId = layoutId;
        this.isShortcut = isShortcut;
    }
}
