// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import android.os.Handler;
import android.content.Context;
import java.util.concurrent.ExecutorService;
import com.google.android.gms.internal.cE;
import java.util.Map;
import java.util.HashSet;
import android.os.ParcelFileDescriptor;
import android.os.Bundle;
import android.net.Uri;
import java.util.ArrayList;
import android.os.ResultReceiver;

final class ImageManager$ImageReceiver extends ResultReceiver
{
    final /* synthetic */ h jC;
    private final ArrayList jD;
    private final Uri mUri;
    
    public void onReceiveResult(final int n, final Bundle bundle) {
        this.jC.jL.execute(new b(this.jC, this.mUri, (ParcelFileDescriptor)bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
    }
}
