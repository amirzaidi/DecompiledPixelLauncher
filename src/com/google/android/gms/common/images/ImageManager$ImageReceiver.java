// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.images;

import android.os.Handler;
import java.util.concurrent.ExecutorService;
import android.content.Context;
import com.google.android.gms.internal.cy;
import java.util.Map;
import java.util.HashSet;
import android.os.ParcelFileDescriptor;
import android.os.Bundle;
import java.util.ArrayList;
import android.net.Uri;
import android.os.ResultReceiver;

final class ImageManager$ImageReceiver extends ResultReceiver
{
    private final Uri mUri;
    final /* synthetic */ h mu;
    private final ArrayList mv;
    
    public void onReceiveResult(final int n, final Bundle bundle) {
        this.mu.mD.execute(new a(this.mu, this.mUri, (ParcelFileDescriptor)bundle.getParcelable("com.google.android.gms.extra.fileDescriptor")));
    }
}
