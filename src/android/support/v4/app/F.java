// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.os.Message;
import android.os.Handler;

class f extends Handler
{
    final /* synthetic */ a WZ;
    
    f(final a wz) {
        this.WZ = wz;
    }
    
    public void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                super.handleMessage(message);
                break;
            }
            case 1: {
                if (this.WZ.mStopped) {
                    this.WZ.ahW(false);
                    break;
                }
                break;
            }
            case 2: {
                this.WZ.aia();
                this.WZ.VY.alj();
                break;
            }
        }
    }
}
