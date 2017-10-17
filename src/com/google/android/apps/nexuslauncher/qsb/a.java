// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.qsb;

import android.os.Parcelable;
import android.os.Bundle;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager$NameNotFoundException;
import android.os.SystemClock;
import android.content.Context;
import android.widget.RemoteViews;

public class a
{
    static long VALIDITY_DURATION;
    public final long a;
    public final int b;
    public final long c;
    public final RemoteViews d;
    
    static {
        a.VALIDITY_DURATION = 7200000L;
    }
    
    public a(final Context context, final RemoteViews d) {
        PackageInfo packageInfo = null;
        this.d = d;
        while (true) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo("com.google.android.googlequicksearchbox", 0);
                if (packageInfo != null) {
                    this.a = packageInfo.lastUpdateTime;
                    this.b = packageInfo.versionCode;
                }
                else {
                    this.a = 0L;
                    this.b = 0;
                }
                this.c = SystemClock.uptimeMillis();
            }
            catch (PackageManager$NameNotFoundException ex) {
                continue;
            }
            break;
        }
    }
    
    public a(final Bundle bundle) {
        final long n = 0L;
        this.b = bundle.getInt("gsa_version", 0);
        this.a = bundle.getLong("gsa_update_time", n);
        this.c = bundle.getLong("publish_time", n);
        this.d = (RemoteViews)bundle.getParcelable("views");
    }
    
    public long a() {
        return com.google.android.apps.nexuslauncher.qsb.a.VALIDITY_DURATION + this.c - SystemClock.uptimeMillis();
    }
    
    public Bundle b() {
        final Bundle bundle = new Bundle();
        bundle.putInt("gsa_version", this.b);
        bundle.putLong("gsa_update_time", this.a);
        bundle.putLong("publish_time", this.c);
        bundle.putParcelable("views", (Parcelable)this.d);
        return bundle;
    }
}
