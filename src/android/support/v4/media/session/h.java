// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import android.os.Bundle;
import java.util.List;
import android.support.v4.media.MediaMetadataCompat;
import android.os.Message;
import android.os.Handler;

class h extends Handler
{
    final /* synthetic */ c afd;
    boolean afe;
    
    public void handleMessage(final Message message) {
        if (this.afe) {
            switch (message.what) {
                case 1: {
                    this.afd.onSessionEvent((String)message.obj, message.getData());
                    break;
                }
                case 2: {
                    this.afd.onPlaybackStateChanged((PlaybackStateCompat)message.obj);
                    break;
                }
                case 3: {
                    this.afd.onMetadataChanged((MediaMetadataCompat)message.obj);
                    break;
                }
                case 5: {
                    this.afd.onQueueChanged((List)message.obj);
                    break;
                }
                case 6: {
                    this.afd.onQueueTitleChanged((CharSequence)message.obj);
                    break;
                }
                case 11: {
                    this.afd.onCaptioningEnabledChanged((boolean)message.obj);
                    break;
                }
                case 9: {
                    this.afd.onRepeatModeChanged((int)message.obj);
                    break;
                }
                case 10: {
                    this.afd.asz((boolean)message.obj);
                    break;
                }
                case 12: {
                    this.afd.onShuffleModeChanged((int)message.obj);
                    break;
                }
                case 7: {
                    this.afd.onExtrasChanged((Bundle)message.obj);
                    break;
                }
                case 4: {
                    this.afd.asy((v)message.obj);
                    break;
                }
                case 8: {
                    this.afd.onSessionDestroyed();
                    break;
                }
            }
        }
    }
}
