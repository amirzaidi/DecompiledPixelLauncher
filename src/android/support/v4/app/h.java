// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Message;
import android.os.Handler;

class h extends Handler
{
    final /* synthetic */ a YJ;
    
    h(final a yj) {
        this.YJ = yj;
    }
    
    public void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                super.handleMessage(message);
                break;
            }
            case 1: {
                if (this.YJ.mStopped) {
                    this.YJ.ajg(false);
                    break;
                }
                break;
            }
            case 2: {
                this.YJ.ajk();
                this.YJ.XH.amy();
                break;
            }
        }
    }
}
