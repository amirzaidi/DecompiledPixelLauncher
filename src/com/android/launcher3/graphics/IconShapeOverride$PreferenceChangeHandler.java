// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.graphics;

import android.provider.Settings$Global;
import android.preference.ListPreference;
import java.lang.reflect.Field;
import android.util.Log;
import android.content.res.Resources;
import android.text.TextUtils;
import com.android.launcher3.Utilities;
import android.content.SharedPreferences;
import com.android.launcher3.util.LooperExecuter;
import com.android.launcher3.LauncherModel;
import android.app.ProgressDialog;
import android.preference.Preference;
import android.content.Context;
import android.preference.Preference$OnPreferenceChangeListener;

class IconShapeOverride$PreferenceChangeHandler implements Preference$OnPreferenceChangeListener
{
    private final Context mContext;
    
    private IconShapeOverride$PreferenceChangeHandler(final Context mContext) {
        this.mContext = mContext;
    }
    
    public boolean onPreferenceChange(final Preference preference, final Object o) {
        final String s = (String)o;
        if (!getAppliedValue(this.mContext).equals(s)) {
            ProgressDialog.show(this.mContext, (CharSequence)null, (CharSequence)this.mContext.getString(2131492956), true, false);
            new LooperExecuter(LauncherModel.getWorkerLooper()).execute(new IconShapeOverride$OverrideApplyHandler(this.mContext, s, null));
        }
        return false;
    }
}
