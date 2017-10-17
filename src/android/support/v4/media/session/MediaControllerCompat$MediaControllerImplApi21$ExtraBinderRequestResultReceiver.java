// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.media.session;

import java.util.Iterator;
import android.os.RemoteException;
import android.util.Log;
import java.util.HashMap;
import java.util.List;
import android.support.v4.app.aI;
import android.os.Bundle;
import java.lang.ref.WeakReference;
import android.os.ResultReceiver;

class MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver extends ResultReceiver
{
    private WeakReference afc;
    
    protected void onReceiveResult(final int n, final Bundle bundle) {
        final p p2 = (p)this.afc.get();
        if (p2 != null && bundle != null) {
            p2.afu = IMediaSession$Stub.asInterface(aI.aop(bundle, "android.support.v4.media.session.EXTRA_BINDER"));
            p2.asV();
        }
    }
}
