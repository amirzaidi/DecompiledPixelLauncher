// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.common.internal;

import com.google.android.gms.common.a.c;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.n;
import android.content.res.Resources;
import com.google.android.gms.R$string;
import android.content.Context;
import android.support.v4.a.b;

public final class I
{
    private static final b jz;
    
    static {
        jz = new b();
    }
    
    public static String lt(final Context context, final int n) {
        final Resources resources = context.getResources();
        switch (n) {
            default: {
                return resources.getString(17039370);
            }
            case 1: {
                return resources.getString(R$string.common_google_play_services_install_button);
            }
            case 3: {
                return resources.getString(R$string.common_google_play_services_enable_button);
            }
            case 2: {
                return resources.getString(R$string.common_google_play_services_update_button);
            }
        }
    }
    
    private static String lu(final Context context, final String s) {
        synchronized (I.jz) {
            final String s2 = (String)I.jz.get(s);
            if (s2 != null) {
                return s2;
            }
            final Resources rj = n.rj(context);
            if (rj == null) {
                return null;
            }
            final int identifier = rj.getIdentifier(s, "string", "com.google.android.gms");
            if (identifier == 0) {
                final String value = String.valueOf(s);
                final int length = value.length();
                final String s3 = "GoogleApiAvailability";
                final String s4 = "Missing resource: ";
                String concat;
                if (length == 0) {
                    concat = new String(s4);
                }
                else {
                    concat = s4.concat(value);
                }
                Log.w(s3, concat);
                return null;
            }
            final String string = rj.getString(identifier);
            if (!TextUtils.isEmpty((CharSequence)string)) {
                I.jz.put(s, string);
                return string;
            }
            final String value2 = String.valueOf(s);
            final int length2 = value2.length();
            final String s5 = "GoogleApiAvailability";
            final String s6 = "Got empty resource: ";
            String concat2;
            if (length2 == 0) {
                concat2 = new String(s6);
            }
            else {
                concat2 = s6.concat(value2);
            }
            Log.w(s5, concat2);
            return null;
        }
    }
    
    public static String lv(final Context context, final int n, final String s) {
        final int n2 = 1;
        final Resources resources = context.getResources();
        switch (n) {
            default: {
                final int common_google_play_services_unknown_issue = R$string.common_google_play_services_unknown_issue;
                final Object[] array = new Object[n2];
                array[0] = s;
                return resources.getString(common_google_play_services_unknown_issue, array);
            }
            case 1: {
                if (!c.mk(resources)) {
                    final int common_google_play_services_install_text_phone = R$string.common_google_play_services_install_text_phone;
                    final Object[] array2 = new Object[n2];
                    array2[0] = s;
                    return resources.getString(common_google_play_services_install_text_phone, array2);
                }
                final int common_google_play_services_install_text_tablet = R$string.common_google_play_services_install_text_tablet;
                final Object[] array3 = new Object[n2];
                array3[0] = s;
                return resources.getString(common_google_play_services_install_text_tablet, array3);
            }
            case 3: {
                final int common_google_play_services_enable_text = R$string.common_google_play_services_enable_text;
                final Object[] array4 = new Object[n2];
                array4[0] = s;
                return resources.getString(common_google_play_services_enable_text, array4);
            }
            case 18: {
                final int common_google_play_services_updating_text = R$string.common_google_play_services_updating_text;
                final Object[] array5 = new Object[n2];
                array5[0] = s;
                return resources.getString(common_google_play_services_updating_text, array5);
            }
            case 2: {
                final int common_google_play_services_update_text = R$string.common_google_play_services_update_text;
                final Object[] array6 = new Object[n2];
                array6[0] = s;
                return resources.getString(common_google_play_services_update_text, array6);
            }
            case 42: {
                return resources.getString(R$string.common_google_play_services_wear_update_text);
            }
            case 9: {
                final int common_google_play_services_unsupported_text = R$string.common_google_play_services_unsupported_text;
                final Object[] array7 = new Object[n2];
                array7[0] = s;
                return resources.getString(common_google_play_services_unsupported_text, array7);
            }
            case 7: {
                return ly(context, "common_google_play_services_network_error_text", s);
            }
            case 5: {
                return ly(context, "common_google_play_services_invalid_account_text", s);
            }
            case 16: {
                return ly(context, "common_google_play_services_api_unavailable_text", s);
            }
            case 17: {
                return ly(context, "common_google_play_services_sign_in_failed_text", s);
            }
            case 20: {
                return ly(context, "common_google_play_services_restricted_profile_text", s);
            }
        }
    }
    
    public static String lw(final Context context, final int n, final String s) {
        if (n != 6) {
            return lv(context, n, s);
        }
        return ly(context, "common_google_play_services_resolution_required_text", s);
    }
    
    public static String lx(final Context context, final int n) {
        final Resources resources = context.getResources();
        switch (n) {
            default: {
                Log.e("GoogleApiAvailability", new StringBuilder(33).append("Unexpected error code ").append(n).toString());
                return null;
            }
            case 4:
            case 6: {
                return null;
            }
            case 1: {
                return resources.getString(R$string.common_google_play_services_install_title);
            }
            case 3: {
                return resources.getString(R$string.common_google_play_services_enable_title);
            }
            case 18: {
                return resources.getString(R$string.common_google_play_services_updating_title);
            }
            case 2:
            case 42: {
                return resources.getString(R$string.common_google_play_services_update_title);
            }
            case 9: {
                Log.e("GoogleApiAvailability", "Google Play services is invalid. Cannot recover.");
                return resources.getString(R$string.common_google_play_services_unsupported_title);
            }
            case 7: {
                Log.e("GoogleApiAvailability", "Network error occurred. Please retry request later.");
                return lu(context, "common_google_play_services_network_error_title");
            }
            case 8: {
                Log.e("GoogleApiAvailability", "Internal error occurred. Please see logs for detailed information");
                return null;
            }
            case 10: {
                Log.e("GoogleApiAvailability", "Developer error occurred. Please see logs for detailed information");
                return null;
            }
            case 5: {
                Log.e("GoogleApiAvailability", "An invalid account was specified when connecting. Please provide a valid account.");
                return lu(context, "common_google_play_services_invalid_account_title");
            }
            case 11: {
                Log.e("GoogleApiAvailability", "The application is not licensed to the user.");
                return null;
            }
            case 16: {
                Log.e("GoogleApiAvailability", "One of the API components you attempted to connect to is not available.");
                return null;
            }
            case 17: {
                Log.e("GoogleApiAvailability", "The specified account could not be signed in.");
                return lu(context, "common_google_play_services_sign_in_failed_title");
            }
            case 20: {
                Log.e("GoogleApiAvailability", "The current user profile is restricted and could not use authenticated features.");
                return lu(context, "common_google_play_services_restricted_profile_title");
            }
        }
    }
    
    private static String ly(final Context context, final String s, final String s2) {
        final Resources resources = context.getResources();
        String s3 = lu(context, s);
        if (s3 == null) {
            s3 = resources.getString(R$string.common_google_play_services_unknown_issue);
        }
        return String.format(resources.getConfiguration().locale, s3, s2);
    }
    
    public static String lz(final Context context, final int n) {
        if (n != 6) {
            return lx(context, n);
        }
        return lu(context, "common_google_play_services_resolution_required_title");
    }
}
