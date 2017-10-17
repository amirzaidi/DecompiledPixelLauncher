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
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.m;
import java.util.ArrayList;
import android.os.SystemClock;
import java.util.concurrent.CountDownLatch;
import android.net.Uri;
import android.graphics.Bitmap;

final class b implements Runnable
{
    private final Bitmap mBitmap;
    private final Uri mUri;
    private boolean mm;
    final /* synthetic */ h mn;
    private final CountDownLatch mo;
    
    public b(final h mn, final Uri mUri, final Bitmap mBitmap, final boolean mm, final CountDownLatch mo) {
        this.mn = mn;
        this.mUri = mUri;
        this.mBitmap = mBitmap;
        this.mm = mm;
        this.mo = mo;
    }
    
    private void pk(final ImageManager$ImageReceiver imageManager$ImageReceiver, final boolean b) {
        final ArrayList pv = imageManager$ImageReceiver.mv;
        for (int size = pv.size(), i = 0; i < size; ++i) {
            final i j = pv.get(i);
            if (!b) {
                this.mn.mz.put(this.mUri, SystemClock.elapsedRealtime());
                j.pH(this.mn.mContext, this.mn.mC, false);
            }
            else {
                j.pJ(this.mn.mContext, this.mBitmap, false);
            }
            if (!(j instanceof g)) {
                this.mn.mE.remove(j);
            }
        }
    }
    
    public void run() {
        m.km("OnBitmapLoadedRunnable must be executed in the main thread");
        Bitmap mBitmap = this.mBitmap;
        while (true) {
        Label_0104_Outer:
            while (true) {
                Label_0034: {
                    while (true) {
                        Label_0020: {
                            if (mBitmap == null) {
                                final boolean b = false;
                                mBitmap = null;
                                break Label_0020;
                            }
                            Label_0099: {
                                break Label_0099;
                            Block_4_Outer:
                                while (true) {
                                    this.mo.countDown();
                                    synchronized (h.mA) {
                                        h.mx.remove(this.mUri);
                                        return;
                                        // iftrue(Label_0034:, !b)
                                        // iftrue(Label_0163:, this.mm)
                                        while (true) {
                                            while (true) {
                                                this.mn.my.put(new f(this.mUri), this.mBitmap);
                                                break Label_0034;
                                                continue Block_4_Outer;
                                            }
                                            continue Label_0104_Outer;
                                        }
                                        Label_0163: {
                                            this.mn.my.ait();
                                        }
                                        System.gc();
                                        this.mm = false;
                                        this.mn.mHandler.post((Runnable)this);
                                        return;
                                        final boolean b = true;
                                        break;
                                        final ImageManager$ImageReceiver imageManager$ImageReceiver;
                                        this.pk(imageManager$ImageReceiver, b);
                                    }
                                }
                            }
                        }
                        if (this.mn.my != null) {
                            continue;
                        }
                        break;
                    }
                }
                final ImageManager$ImageReceiver imageManager$ImageReceiver = this.mn.mB.remove(this.mUri);
                if (imageManager$ImageReceiver == null) {
                    continue;
                }
                break;
            }
            continue;
        }
    }
}
