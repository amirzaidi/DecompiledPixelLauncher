// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.media.session.PlaybackState;

class f
{
    public static long asD(final Object o) {
        return ((PlaybackState)o).getPosition();
    }
    
    public static float asE(final Object o) {
        return ((PlaybackState)o).getPlaybackSpeed();
    }
    
    public static long asF(final Object o) {
        return ((PlaybackState)o).getBufferedPosition();
    }
    
    public static List asG(final Object o) {
        return ((PlaybackState)o).getCustomActions();
    }
    
    public static long asH(final Object o) {
        return ((PlaybackState)o).getLastPositionUpdateTime();
    }
    
    public static long asI(final Object o) {
        return ((PlaybackState)o).getActiveQueueItemId();
    }
    
    public static CharSequence asJ(final Object o) {
        return ((PlaybackState)o).getErrorMessage();
    }
    
    public static long asK(final Object o) {
        return ((PlaybackState)o).getActions();
    }
    
    public static int asL(final Object o) {
        return ((PlaybackState)o).getState();
    }
}
