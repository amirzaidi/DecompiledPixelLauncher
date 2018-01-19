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

public class e
{
    public final boolean eF;
    public final b eG;
    public final PackageInfo eH;
    public final long eI;
    public final Intent intent;
    
    public e(final b eg, final Intent intent, final boolean ef, final long ei, final PackageInfo eh) {
        this.eG = eg;
        this.eF = ef;
        this.intent = intent;
        this.eI = ei;
        this.eH = eh;
    }
    
    private static Object dL(final String s, final Intent intent) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            return intent.getParcelableExtra(s);
        }
        return null;
    }
    
    public Bitmap dM(final Context context) {
        final f dw = this.eG.dw;
        if (dw == null) {
            return null;
        }
        final Bitmap bitmap = (Bitmap)dL(dw.dN, this.intent);
        if (bitmap != null) {
            return bitmap;
        }
        try {
            final String do1 = dw.dO;
            try {
                Label_0082: {
                    if (TextUtils.isEmpty((CharSequence)do1)) {
                        break Label_0082;
                    }
                    final String do2 = dw.dO;
                    try {
                        final Uri parse = Uri.parse(do2);
                        try {
                            return MediaStore$Images$Media.getBitmap(context.getContentResolver(), parse);
                            final String dm = dw.dM;
                            try {
                                if (TextUtils.isEmpty((CharSequence)dm)) {
                                    return null;
                                }
                                final Resources resourcesForApplication = context.getPackageManager().getResourcesForApplication("com.google.android.googlequicksearchbox");
                                try {
                                    final int identifier = resourcesForApplication.getIdentifier(dw.dM, (String)null, (String)null);
                                    try {
                                        final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
                                        try {
                                            return LauncherIcons.createIconBitmap(resourcesForApplication.getDrawableForDensity(identifier, idp.fillResIconDpi), context);
                                        }
                                        catch (Exception ex) {
                                            Log.e("NewCardInfo", "retrieving bitmap uri=" + dw.dO + " gsaRes=" + dw.dM);
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
