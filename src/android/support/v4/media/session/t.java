// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.media.session.PlaybackState$CustomAction;
import android.os.Bundle;

final class t
{
    public static Bundle arH(final Object o) {
        return ((PlaybackState$CustomAction)o).getExtras();
    }
    
    public static int arI(final Object o) {
        return ((PlaybackState$CustomAction)o).getIcon();
    }
    
    public static String arJ(final Object o) {
        return ((PlaybackState$CustomAction)o).getAction();
    }
    
    public static CharSequence arK(final Object o) {
        return ((PlaybackState$CustomAction)o).getName();
    }
}
