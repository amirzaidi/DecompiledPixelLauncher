// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.media.session.PlaybackState$CustomAction;
import android.os.Bundle;

final class a
{
    public static Bundle asu(final Object o) {
        return ((PlaybackState$CustomAction)o).getExtras();
    }
    
    public static int asv(final Object o) {
        return ((PlaybackState$CustomAction)o).getIcon();
    }
    
    public static String asw(final Object o) {
        return ((PlaybackState$CustomAction)o).getAction();
    }
    
    public static CharSequence asx(final Object o) {
        return ((PlaybackState$CustomAction)o).getName();
    }
}
