// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.g;
import com.google.android.gms.signin.internal.e;
import com.google.android.gms.common.api.c;
import com.google.android.gms.common.api.d;
import com.google.android.gms.common.internal.a;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.api.j;

class cj extends j
{
    public e Ce(final Context context, final Looper looper, final a a, final bX bx, final d d, final c c) {
        bX wr;
        if (bx != null) {
            wr = bx;
        }
        else {
            wr = bX.wr;
        }
        return new e(context, looper, true, a, wr, d, c);
    }
}
