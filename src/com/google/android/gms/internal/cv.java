// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.api.w;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.u;
import com.google.android.gms.common.api.v;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.f;
import android.util.Log;
import android.os.Message;
import android.os.Handler;

final class cv extends Handler
{
    final /* synthetic */ d xI;
    
    public void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                Log.e("TransformedResultImpl", new StringBuilder(70).append("TransformationResultHandler received unknown message type: ").append(message.what).toString());
                break;
            }
            case 0: {
                final f f = (f)message.obj;
                final Object rc = this.xI.oa;
                // monitorenter(rc)
                while (true) {
                    Label_0145: {
                        if (f == null) {
                            break Label_0145;
                        }
                        if (f instanceof bm) {
                            this.xI.nZ.rE(((bm)f).yI());
                            break Label_0133;
                        }
                        try {
                            this.xI.nZ.rH(f);
                            break;
                        }
                        finally {
                        }
                        // monitorexit(rc)
                    }
                    this.xI.nZ.rE(new Status(13, "Transform returned null"));
                    continue;
                }
            }
            case 1: {
                final RuntimeException ex = (RuntimeException)message.obj;
                final String value = String.valueOf(ex.getMessage());
                final int length = value.length();
                final String s = "TransformedResultImpl";
                final String s2 = "Runtime exception on the transformation worker thread: ";
                String concat;
                if (length == 0) {
                    concat = new String(s2);
                }
                else {
                    concat = s2.concat(value);
                }
                Log.e(s, concat);
                throw ex;
            }
        }
    }
}
