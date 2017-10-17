// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Scope;
import java.util.Comparator;

class e implements Comparator
{
    public int QK(final Scope scope, final Scope scope2) {
        return scope.gS().compareTo(scope2.gS());
    }
}
