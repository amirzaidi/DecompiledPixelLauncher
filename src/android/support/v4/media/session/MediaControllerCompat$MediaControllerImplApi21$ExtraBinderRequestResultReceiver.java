// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.Iterator;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import android.support.v4.app.aM;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import android.os.ResultReceiver;

class MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver extends ResultReceiver
{
    private WeakReference aeh;
    
    protected void onReceiveResult(final int n, final Bundle bundle) {
        final A a = (A)this.aeh.get();
        if (a != null && bundle != null) {
            a.aew = IMediaSession$Stub.asInterface(aM.ano(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
            a.arY();
        }
    }
}
