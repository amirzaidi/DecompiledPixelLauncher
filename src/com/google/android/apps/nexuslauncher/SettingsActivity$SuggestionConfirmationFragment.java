// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher;

import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.preference.Preference;
import com.google.android.apps.nexuslauncher.reflection.c;
import android.preference.TwoStatePreference;
import android.preference.PreferenceFragment;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.app.DialogFragment;

public class SettingsActivity$SuggestionConfirmationFragment extends DialogFragment implements DialogInterface$OnClickListener
{
    public void onClick(final DialogInterface dialogInterface, final int n) {
        if (this.getTargetFragment() instanceof PreferenceFragment) {
            final Preference preference = ((PreferenceFragment)this.getTargetFragment()).findPreference((CharSequence)"pref_show_predictions");
            if (preference instanceof TwoStatePreference) {
                ((TwoStatePreference)preference).setChecked(false);
            }
        }
        c.getInstance(this.getContext()).aD(false);
    }
    
    public Dialog onCreateDialog(final Bundle bundle) {
        return (Dialog)new AlertDialog$Builder(this.getContext()).setTitle(2131493008).setMessage(2131493009).setNegativeButton(17039360, (DialogInterface$OnClickListener)null).setPositiveButton(2131493010, (DialogInterface$OnClickListener)this).create();
    }
}
