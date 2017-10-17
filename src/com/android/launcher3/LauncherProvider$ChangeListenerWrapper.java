// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.os.Message;
import android.os.Handler$Callback;

class LauncherProvider$ChangeListenerWrapper implements Handler$Callback
{
    private LauncherProviderChangeListener mListener;
    
    public boolean handleMessage(final Message message) {
        if (this.mListener != null) {
            switch (message.what) {
                case 1: {
                    this.mListener.onLauncherProviderChanged();
                    break;
                }
                case 2: {
                    this.mListener.onExtractedColorsChanged();
                    break;
                }
                case 3: {
                    this.mListener.onAppWidgetHostReset();
                    break;
                }
            }
        }
        return true;
    }
}
