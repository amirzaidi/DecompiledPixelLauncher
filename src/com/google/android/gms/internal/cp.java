// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import com.google.android.gms.common.api.i;
import com.google.android.gms.signin.internal.e;
import com.google.android.gms.common.api.f;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.internal.a;
import android.os.Looper;
import android.content.Context;
import com.google.android.gms.common.api.l;

class cp extends l
{
    public e Cf(final Context context, final Looper looper, final a a, final cd cd, final g g, final f f) {
        cd wl;
        if (cd != null) {
            wl = cd;
        }
        else {
            wl = cd.wl;
        }
        return new e(context, looper, true, a, wl, g, f);
    }
}
