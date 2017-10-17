// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.view.View;
import android.app.AlertDialog$Builder;
import android.webkit.WebViewClient;
import android.content.Context;
import android.webkit.WebView;
import android.app.Dialog;
import android.os.Bundle;
import android.app.DialogFragment;

public class SettingsActivity$OpenSourceLicensesFragment extends DialogFragment
{
    public Dialog onCreateDialog(final Bundle bundle) {
        final WebView view = new WebView((Context)this.getActivity());
        view.setWebViewClient(new WebViewClient());
        view.getSettings().setBuiltInZoomControls(true);
        view.loadUrl("file:///android_res/raw/license.html");
        return (Dialog)new AlertDialog$Builder((Context)this.getActivity()).setTitle(2131493024).setView((View)view).create();
    }
}
