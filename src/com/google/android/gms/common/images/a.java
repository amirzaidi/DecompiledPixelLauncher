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
import java.io.FileDescriptor;
import android.graphics.Bitmap;
import java.io.IOException;
import android.util.Log;
import android.graphics.BitmapFactory;
import java.util.concurrent.CountDownLatch;
import com.google.android.gms.common.internal.m;
import android.os.ParcelFileDescriptor;
import android.net.Uri;

final class a implements Runnable
{
    private final Uri mUri;
    private final ParcelFileDescriptor mk;
    final /* synthetic */ h ml;
    
    public a(final h ml, final Uri mUri, final ParcelFileDescriptor mk) {
        this.ml = ml;
        this.mUri = mUri;
        this.mk = mk;
    }
    
    public void run() {
        Bitmap decodeFileDescriptor = null;
        final boolean b = true;
        m.kn("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        boolean b2 = false;
        Label_0089: {
            if (this.mk != null) {
                break Label_0089;
            }
            while (true) {
                final CountDownLatch countDownLatch = new CountDownLatch(b ? 1 : 0);
                this.ml.mHandler.post((Runnable)new b(this.ml, this.mUri, decodeFileDescriptor, b2, countDownLatch));
                try {
                    countDownLatch.await();
                    return;
                    try {
                        final ParcelFileDescriptor mk = this.mk;
                        try {
                            final FileDescriptor fileDescriptor = mk.getFileDescriptor();
                            try {
                                decodeFileDescriptor = BitmapFactory.decodeFileDescriptor(fileDescriptor);
                                try {
                                    final ParcelFileDescriptor mk2 = this.mk;
                                    try {
                                        mk2.close();
                                        continue;
                                    }
                                    catch (IOException ex) {
                                        Log.e("ImageManager", "closed failed", (Throwable)ex);
                                        continue;
                                    }
                                }
                                catch (IOException ex2) {}
                            }
                            catch (OutOfMemoryError outOfMemoryError) {
                                final String value = String.valueOf(this.mUri);
                                Log.e("ImageManager", new StringBuilder(String.valueOf(value).length() + 34).append("OOM while loading bitmap for uri: ").append(value).toString(), (Throwable)outOfMemoryError);
                                b2 = b;
                            }
                        }
                        catch (OutOfMemoryError outOfMemoryError2) {}
                    }
                    catch (OutOfMemoryError outOfMemoryError3) {}
                }
                catch (InterruptedException ex3) {
                    final String value2 = String.valueOf(this.mUri);
                    Log.w("ImageManager", new StringBuilder(String.valueOf(value2).length() + 32).append("Latch interrupted while posting ").append(value2).toString());
                }
            }
        }
    }
}
