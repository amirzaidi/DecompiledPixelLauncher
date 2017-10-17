// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.app.Activity;
import android.app.AlertDialog$Builder;
import android.app.Dialog;
import android.os.Bundle;
import android.content.Context;
import android.content.ComponentName;
import com.android.launcher3.notification.NotificationListener;
import android.content.Intent;
import android.content.DialogInterface;
import android.content.DialogInterface$OnClickListener;
import android.app.DialogFragment;

public class SettingsActivity$NotificationAccessConfirmation extends DialogFragment implements DialogInterface$OnClickListener
{
    public void onClick(final DialogInterface dialogInterface, final int n) {
        this.getActivity().startActivity(new Intent("android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS").addFlags(268435456).putExtra(":settings:fragment_args_key", new ComponentName((Context)this.getActivity(), (Class)NotificationListener.class).flattenToString()));
    }
    
    public Dialog onCreateDialog(final Bundle bundle) {
        final Activity activity = this.getActivity();
        return (Dialog)new AlertDialog$Builder((Context)activity).setTitle(2131492954).setMessage((CharSequence)((Context)activity).getString(2131492955, new Object[] { ((Context)activity).getString(2131492886) })).setNegativeButton(17039360, (DialogInterface$OnClickListener)null).setPositiveButton(2131492956, (DialogInterface$OnClickListener)this).create();
    }
}
