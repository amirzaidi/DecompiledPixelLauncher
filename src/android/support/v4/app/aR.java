// 
// Decompiled by Procyon v0.5.30
// 

package android.support.v4.app;

import android.app.RemoteInput;
import android.os.Bundle;
import android.app.Notification$Action$Builder;
import android.app.Notification$Builder;

class ar
{
    public static void anY(final Notification$Builder notification$Builder, final T t) {
        final Notification$Action$Builder notification$Action$Builder = new Notification$Action$Builder(t.getIcon(), t.getTitle(), t.ani());
        if (t.ang() != null) {
            final RemoteInput[] alo = o.alo(t.ang());
            for (int length = alo.length, i = 0; i < length; ++i) {
                notification$Action$Builder.addRemoteInput(alo[i]);
            }
        }
        Bundle bundle;
        if (t.getExtras() == null) {
            bundle = new Bundle();
        }
        else {
            bundle = new Bundle(t.getExtras());
        }
        bundle.putBoolean("android.support.allowGeneratedReplies", t.anh());
        notification$Action$Builder.setAllowGeneratedReplies(t.anh());
        notification$Action$Builder.addExtras(bundle);
        notification$Builder.addAction(notification$Action$Builder.build());
    }
}
