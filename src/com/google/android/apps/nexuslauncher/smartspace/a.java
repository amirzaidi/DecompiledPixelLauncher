// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.smartspace;

import com.android.launcher3.InvariantDeviceProfile;
import android.content.res.Resources;
import com.google.android.apps.nexuslauncher.smartspace.b.f;
import android.util.Log;
import com.android.launcher3.graphics.LauncherIcons;
import com.android.launcher3.LauncherAppState;
import android.provider.MediaStore$Images$Media;
import android.net.Uri;
import android.graphics.Bitmap;
import android.content.Context;
import android.text.TextUtils;
import android.content.Intent;
import android.content.pm.PackageInfo;
import com.google.android.apps.nexuslauncher.smartspace.b.b;

public class a
{
    public final b di;
    public final boolean dj;
    public final PackageInfo dk;
    public final long dl;
    public final Intent intent;
    
    public a(final b di, final Intent intent, final boolean dj, final long dl, final PackageInfo dk) {
        this.di = di;
        this.dj = dj;
        this.intent = intent;
        this.dl = dl;
        this.dk = dk;
    }
    
    private static Object ch(final String s, final Intent intent) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            return intent.getParcelableExtra(s);
        }
        return null;
    }
    
    public Bitmap ci(final Context context) {
        final f cx = this.di.cx;
        if (cx == null) {
            return null;
        }
        final Bitmap bitmap = (Bitmap)ch(cx.cV, this.intent);
        if (bitmap != null) {
            return bitmap;
        }
        try {
            final String cw = cx.cW;
            try {
                Label_0082: {
                    if (TextUtils.isEmpty((CharSequence)cw)) {
                        break Label_0082;
                    }
                    final String cw2 = cx.cW;
                    try {
                        final Uri parse = Uri.parse(cw2);
                        try {
                            return MediaStore$Images$Media.getBitmap(context.getContentResolver(), parse);
                            final String cx2 = cx.cX;
                            try {
                                if (TextUtils.isEmpty((CharSequence)cx2)) {
                                    return null;
                                }
                                final Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication("com.google.android.googlequicksearchbox");
                                try {
                                    final int identifier = resourcesForApplication.getIdentifier(cx.cX, (String)null, (String)null);
                                    try {
                                        final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
                                        try {
                                            return LauncherIcons.createIconBitmap(resourcesForApplication.getDrawableForDensity(identifier, idp.fillResIconDpi), context);
                                        }
                                        catch (Exception ex) {
                                            Log.e("NewCardInfo", "retrieving bitmap uri=" + cx.cW + " gsaRes=" + cx.cX);
                                        }
                                    }
                                    catch (Exception ex2) {}
                                }
                                catch (Exception ex3) {}
                            }
                            catch (Exception ex4) {}
                        }
                        catch (Exception ex5) {}
                    }
                    catch (Exception ex6) {}
                }
            }
            catch (Exception ex7) {}
        }
        catch (Exception ex8) {}
        return null;
    }
}
