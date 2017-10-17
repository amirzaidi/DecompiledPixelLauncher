// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.net.Uri;
import android.content.Intent;
import android.text.Editable;
import com.android.launcher3.ExtendedEditText;
import android.os.CountDownTimer;
import com.android.launcher3.allapps.DefaultAppSearchController;

public class b extends DefaultAppSearchController
{
    private boolean dw;
    private CountDownTimer dx;
    
    private void cV() {
        this.dx = new h(this, 3030L, 30);
    }
    
    private void cW() {
        this.dw = true;
        this.mInput.setEnabled(false);
        this.mInput.setCursorVisible(false);
        this.hideKeyboard();
    }
    
    private void cX(final boolean b) {
        final boolean b2 = true;
        this.mInput.setEnabled(b2);
        this.mInput.setCursorVisible(b2);
        this.mInput.setText((CharSequence)"");
        if (b) {
            this.focusSearchField();
        }
        this.dw = false;
    }
    
    public void afterTextChanged(final Editable editable) {
        if (this.dw) {
            return;
        }
        if (editable.toString().equals("\u2b06\ufe0f\u2b06\ufe0f\u2b07\ufe0f\u2b07\ufe0f\u2b05\ufe0f\u27a1\ufe0f\u2b05\ufe0f\u27a1\ufe0f")) {
            if (this.dx == null) {
                this.cV();
            }
            editable.clear();
            this.dx.cancel();
            this.dx.start();
        }
        super.afterTextChanged(editable);
    }
    
    public Intent createMarketSearchIntent(final String s) {
        return new Intent("android.intent.action.VIEW").setData(Uri.parse("market://search").buildUpon().appendQueryParameter("c", "apps").appendQueryParameter("pcampaignid", "nxl_search_12613299").appendQueryParameter("q", s).build()).setPackage("com.android.vending");
    }
    
    public void reset() {
        if (this.dx != null && this.dw) {
            this.dx.cancel();
            this.cX(false);
        }
        super.reset();
    }
}
