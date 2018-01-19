// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import android.view.View;
import android.view.View$OnClickListener;

final class i implements View$OnClickListener
{
    final /* synthetic */ c eR;
    
    i(final c er) {
        this.eR = er;
    }
    
    public void onClick(final View view) {
        b.get(view.getContext()).do();
    }
}
