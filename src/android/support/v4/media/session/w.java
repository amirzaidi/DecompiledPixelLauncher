// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.media.session.PlaybackState;

class w
{
    public static long arN(final Object o) {
        return ((PlaybackState)o).getPosition();
    }
    
    public static float arO(final Object o) {
        return ((PlaybackState)o).getPlaybackSpeed();
    }
    
    public static long arP(final Object o) {
        return ((PlaybackState)o).getBufferedPosition();
    }
    
    public static List arQ(final Object o) {
        return ((PlaybackState)o).getCustomActions();
    }
    
    public static long arR(final Object o) {
        return ((PlaybackState)o).getLastPositionUpdateTime();
    }
    
    public static long arS(final Object o) {
        return ((PlaybackState)o).getActiveQueueItemId();
    }
    
    public static CharSequence arT(final Object o) {
        return ((PlaybackState)o).getErrorMessage();
    }
    
    public static long arU(final Object o) {
        return ((PlaybackState)o).getActions();
    }
    
    public static int arV(final Object o) {
        return ((PlaybackState)o).getState();
    }
}
