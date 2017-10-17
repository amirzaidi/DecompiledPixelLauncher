// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import org.json.JSONException;
import android.os.Process;
import com.android.launcher3.compat.UserManagerCompat;
import android.content.Context;
import android.os.UserHandle;
import android.content.Intent;
import org.json.JSONObject;

class InstallShortcutReceiver$Decoder extends JSONObject
{
    public final Intent launcherIntent;
    public final UserHandle user;
    
    private InstallShortcutReceiver$Decoder(final String s, final Context context) {
        super(s);
        this.launcherIntent = Intent.parseUri(this.getString("intent.launch"), 0);
        UserHandle user;
        if (this.has("userHandle")) {
            user = UserManagerCompat.getInstance(context).getUserForSerialNumber(this.getLong("userHandle"));
        }
        else {
            user = Process.myUserHandle();
        }
        this.user = user;
        if (this.user == null) {
            throw new JSONException("Invalid user");
        }
    }
}
