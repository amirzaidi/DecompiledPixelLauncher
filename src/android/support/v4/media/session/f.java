// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Message;
import android.os.Bundle;
import android.os.Handler;

class f extends Handler
{
    final /* synthetic */ c adL;
    
    public void arw(final int n, final Object o, final Bundle data) {
        final Message obtainMessage = this.obtainMessage(n, o);
        obtainMessage.setData(data);
        obtainMessage.sendToTarget();
    }
    
    public void handleMessage(final Message message) {
        if (this.adL.adH) {
            switch (message.what) {
                case 1: {
                    this.adL.onSessionEvent((String)message.obj, message.getData());
                    break;
                }
                case 2: {
                    this.adL.onPlaybackStateChanged((PlaybackStateCompat)message.obj);
                    break;
                }
                case 3: {
                    this.adL.onMetadataChanged((MediaMetadataCompat)message.obj);
                    break;
                }
                case 5: {
                    this.adL.onQueueChanged((List)message.obj);
                    break;
                }
                case 6: {
                    this.adL.onQueueTitleChanged((CharSequence)message.obj);
                    break;
                }
                case 11: {
                    this.adL.onCaptioningEnabledChanged((boolean)message.obj);
                    break;
                }
                case 9: {
                    this.adL.onRepeatModeChanged((int)message.obj);
                    break;
                }
                case 10: {
                    this.adL.arv((boolean)message.obj);
                    break;
                }
                case 12: {
                    this.adL.onShuffleModeChanged((int)message.obj);
                    break;
                }
                case 7: {
                    this.adL.onExtrasChanged((Bundle)message.obj);
                    break;
                }
                case 4: {
                    this.adL.aru((r)message.obj);
                    break;
                }
                case 8: {
                    this.adL.onSessionDestroyed();
                    break;
                }
            }
        }
    }
}
