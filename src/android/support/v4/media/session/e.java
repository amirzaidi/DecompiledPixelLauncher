// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.media.session.MediaSession$QueueItem;

class e
{
    public static Object asB(final Object o) {
        return ((MediaSession$QueueItem)o).getDescription();
    }
    
    public static long asC(final Object o) {
        return ((MediaSession$QueueItem)o).getQueueId();
    }
}
