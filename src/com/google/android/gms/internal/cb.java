// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.internal.l;
import com.google.android.gms.common.api.y;
import com.google.android.gms.common.api.b;
import com.google.android.gms.common.api.w;
import java.lang.ref.WeakReference;
import com.google.android.gms.common.api.v;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.c;
import android.util.Log;
import android.os.Message;
import android.os.Handler;

final class cB extends Handler
{
    final /* synthetic */ d xC;
    
    public void handleMessage(final Message message) {
        switch (message.what) {
            default: {
                Log.e("TransformedResultImpl", new StringBuilder(70).append("TransformationResultHandler received unknown message type: ").append(message.what).toString());
                break;
            }
            case 0: {
                final c c = (c)message.obj;
                final Object ra = this.xC.ny;
                // monitorenter(ra)
                while (true) {
                    Label_0145: {
                        if (c == null) {
                            break Label_0145;
                        }
                        if (c instanceof bs) {
                            this.xC.nx.rC(((bs)c).yJ());
                            break Label_0133;
                        }
                        try {
                            this.xC.nx.rF(c);
                            break;
                        }
                        finally {
                        }
                        // monitorexit(ra)
                    }
                    this.xC.nx.rC(new Status(13, "Transform returned null"));
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
