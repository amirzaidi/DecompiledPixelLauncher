// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.provider.Settings$Global;
import android.preference.Preference$OnPreferenceChangeListener;
import android.preference.ListPreference;
import java.lang.reflect.Field;
import android.util.Log;
import android.content.res.Resources;
import android.text.TextUtils;
import com.android.launcher3.Utilities;
import android.content.SharedPreferences;
import android.content.Context;

public class IconShapeOverride
{
    public static void apply(final Context context) {
        if (!Utilities.isAtLeastO()) {
            return;
        }
        final String appliedValue = getAppliedValue(context);
        if (TextUtils.isEmpty((CharSequence)appliedValue)) {
            return;
        }
        if (!isSupported(context)) {
            return;
        }
        try {
            try {
                final Resources system = Resources.getSystem();
                try {
                    getSystemResField().set(null, new IconShapeOverride$ResourcesOverride(system, getConfigResId(), appliedValue));
                }
                catch (Exception ex) {
                    Log.e("IconShapeOverride", "Unable to override icon shape", (Throwable)ex);
                    prefs(context).edit().remove("pref_override_icon_shape").apply();
                }
            }
            catch (Exception ex2) {}
        }
        catch (Exception ex3) {}
    }
    
    private static String getAppliedValue(final Context context) {
        return prefs(context).getString("pref_override_icon_shape", "");
    }
    
    private static int getConfigResId() {
        return Resources.getSystem().getIdentifier("config_icon_mask", "string", "android");
    }
    
    private static Field getSystemResField() {
        final Field declaredField = Resources.class.getDeclaredField("mSystem");
        declaredField.setAccessible(true);
        return declaredField;
    }
    
    public static void handlePreferenceUi(final ListPreference listPreference) {
        final Context context = listPreference.getContext();
        listPreference.setValue(getAppliedValue(context));
        listPreference.setOnPreferenceChangeListener((Preference$OnPreferenceChangeListener)new IconShapeOverride$PreferenceChangeHandler(context, null));
    }
    
    public static boolean isSupported(final Context context) {
        boolean b = true;
        if (!Utilities.isAtLeastO()) {
            return false;
        }
        if (Settings$Global.getInt(context.getContentResolver(), "development_settings_enabled", 0) != (b ? 1 : 0)) {
            return false;
        }
        try {
            final Object value = getSystemResField().get(null);
            try {
                if (value != Resources.getSystem()) {
                    return false;
                }
            }
            catch (Exception ex) {
                return false;
            }
        }
        catch (Exception ex2) {}
        if (getConfigResId() == 0) {
            b = false;
        }
        return b;
    }
    
    private static SharedPreferences prefs(final Context context) {
        return context.getSharedPreferences("com.android.launcher3.device.prefs", 0);
    }
}
