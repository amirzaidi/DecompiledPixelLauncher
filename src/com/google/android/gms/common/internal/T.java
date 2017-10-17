// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import android.net.Uri$Builder;
import android.text.TextUtils;
import android.content.Intent;
import android.net.Uri;

public class t
{
    private static final Uri iC;
    private static final Uri iD;
    
    static {
        iC = Uri.parse("http://plus.google.com/");
        iD = t.iC.buildUpon().appendPath("circles").appendPath("find").build();
    }
    
    public static Intent kr(final String s) {
        final Uri fromParts = Uri.fromParts("package", s, (String)null);
        final Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(fromParts);
        return intent;
    }
    
    public static Intent ks(final String s, final String s2) {
        final Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(kt(s, s2));
        intent.setPackage("com.android.vending");
        intent.addFlags(524288);
        return intent;
    }
    
    private static Uri kt(final String s, final String s2) {
        final Uri$Builder appendQueryParameter = Uri.parse("market://details").buildUpon().appendQueryParameter("id", s);
        if (!TextUtils.isEmpty((CharSequence)s2)) {
            appendQueryParameter.appendQueryParameter("pcampaignid", s2);
        }
        return appendQueryParameter.build();
    }
    
    public static Intent ku() {
        final Intent intent = new Intent("com.google.android.clockwork.home.UPDATE_ANDROID_WEAR_ACTION");
        intent.setPackage("com.google.android.wearable.app");
        return intent;
    }
}
