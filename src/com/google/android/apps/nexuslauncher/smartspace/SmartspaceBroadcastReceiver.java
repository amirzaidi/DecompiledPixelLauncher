// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import com.google.protobuf.nano.InvalidProtocolBufferNanoException;
import android.util.Log;
import com.google.android.apps.nexuslauncher.smartspace.b.a;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.SystemClock;
import android.content.Intent;
import android.content.Context;
import com.google.android.apps.nexuslauncher.smartspace.b.b;
import android.content.BroadcastReceiver;

public class SmartspaceBroadcastReceiver extends BroadcastReceiver
{
    private void dk(final b b, final Context context, final Intent intent, final boolean b2) {
        PackageInfo packageInfo = null;
        if (b.dz) {
            b.get(context).dl(null);
            return;
        }
        final long uptimeMillis = SystemClock.uptimeMillis();
        while (true) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo("com.google.android.googlequicksearchbox", 0);
                b.get(context).dl(new e(b, intent, b2, uptimeMillis, packageInfo));
            }
            catch (PackageManager$NameNotFoundException ex) {
                continue;
            }
            break;
        }
    }
    
    public void onReceive(final Context context, final Intent intent) {
        final boolean b = true;
        final byte[] byteArrayExtra = intent.getByteArrayExtra("com.google.android.apps.nexuslauncher.extra.SMARTSPACE_CARD");
        if (byteArrayExtra != null) {
            final a a = new a();
            try {
                com.google.protobuf.nano.a.mergeFrom(a, byteArrayExtra);
                final b[] dn = a.dn;
                try {
                    final int length = dn.length;
                    int i = 0;
                    while (i < length) {
                        final b b2 = dn[i];
                        try {
                            final boolean b3 = b2.dq == (b ? 1 : 0) && b;
                            final boolean b4 = b2.dq == 2 && b;
                            if (b3 || b4) {
                                this.dk(b2, context, intent, b3);
                            }
                            else {
                                Log.w("SmartspaceReceiver", "unrecognized card priority");
                            }
                            ++i;
                        }
                        catch (InvalidProtocolBufferNanoException ex) {
                            Log.e("SmartspaceReceiver", "proto", (Throwable)ex);
                        }
                    }
                }
                catch (InvalidProtocolBufferNanoException ex2) {}
            }
            catch (InvalidProtocolBufferNanoException ex3) {}
        }
        else {
            Log.e("SmartspaceReceiver", "receiving update with no proto: " + intent.getExtras());
        }
    }
}
