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
import android.os.ResultReceiver;
import com.google.android.gms.common.internal.m;
import java.util.ArrayList;
import android.os.SystemClock;
import android.net.Uri;
import android.graphics.Bitmap;
import java.util.concurrent.CountDownLatch;

final class a implements Runnable
{
    private boolean js;
    final /* synthetic */ h jt;
    private final CountDownLatch ju;
    private final Bitmap mBitmap;
    private final Uri mUri;
    
    public a(final h jt, final Uri mUri, final Bitmap mBitmap, final boolean js, final CountDownLatch ju) {
        this.jt = jt;
        this.mUri = mUri;
        this.mBitmap = mBitmap;
        this.js = js;
        this.ju = ju;
    }
    
    private void mw(final ImageManager$ImageReceiver imageManager$ImageReceiver, final boolean b) {
        final ArrayList mh = imageManager$ImageReceiver.jD;
        for (int size = mh.size(), i = 0; i < size; ++i) {
            final i j = mh.get(i);
            if (!b) {
                this.jt.jH.put(this.mUri, SystemClock.elapsedRealtime());
                j.mT(this.jt.mContext, this.jt.jK, false);
            }
            else {
                j.mV(this.jt.mContext, this.mBitmap, false);
            }
            if (!(j instanceof g)) {
                this.jt.jM.remove(j);
            }
        }
    }
    
    public void run() {
        m.hy("OnBitmapLoadedRunnable must be executed in the main thread");
        Bitmap mBitmap = this.mBitmap;
        while (true) {
        Label_0104_Outer:
            while (true) {
            Label_0034:
                while (true) {
                    Label_0020: {
                        if (mBitmap == null) {
                            final boolean b = false;
                            mBitmap = null;
                            break Label_0020;
                        }
                        Label_0099: {
                            break Label_0099;
                            while (true) {
                                this.ju.countDown();
                                synchronized (h.jI) {
                                    h.jF.remove(this.mUri);
                                    return;
                                    Label_0163: {
                                        this.jt.jG.agX();
                                    }
                                    System.gc();
                                    this.js = false;
                                    this.jt.mHandler.post((Runnable)this);
                                    return;
                                    // iftrue(Label_0163:, this.js)
                                    // iftrue(Label_0034:, !b)
                                    Block_5: {
                                        break Block_5;
                                        final boolean b = true;
                                        break;
                                    }
                                    this.jt.jG.put(new f(this.mUri), this.mBitmap);
                                    break Label_0034;
                                    final boolean b;
                                    final ImageManager$ImageReceiver imageManager$ImageReceiver;
                                    this.mw(imageManager$ImageReceiver, b);
                                }
                            }
                        }
                    }
                    if (this.jt.jG != null) {
                        continue;
                    }
                    break;
                }
                final ImageManager$ImageReceiver imageManager$ImageReceiver = this.jt.jJ.remove(this.mUri);
                if (imageManager$ImageReceiver == null) {
                    continue Label_0104_Outer;
                }
                break;
            }
            continue;
        }
    }
}
