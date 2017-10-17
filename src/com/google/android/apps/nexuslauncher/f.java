// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import com.google.android.apps.nexuslauncher.reflection.l;
import android.content.DialogInterface;
import android.preference.TwoStatePreference;
import android.content.DialogInterface$OnClickListener;

final class f implements DialogInterface$OnClickListener
{
    final /* synthetic */ a dM;
    final /* synthetic */ TwoStatePreference dN;
    
    f(final a dm, final TwoStatePreference dn) {
        this.dM = dm;
        this.dN = dn;
    }
    
    public void onClick(final DialogInterface dialogInterface, final int n) {
        this.dN.setChecked(false);
        l.getInstance(this.dM.getContext()).cq(false);
    }
}
