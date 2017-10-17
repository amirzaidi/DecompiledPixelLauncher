// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.net.URISyntaxException;
import android.content.Intent;
import android.text.TextUtils;
import android.content.res.XmlResourceParser;
import android.content.pm.ApplicationInfo;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.util.Log;
import android.content.pm.ResolveInfo;
import java.util.List;

public class DefaultLayoutParser$AppShortcutWithUriParser extends AutoInstallsLayout$AppShortcutParser
{
    final /* synthetic */ DefaultLayoutParser this$0;
    
    public DefaultLayoutParser$AppShortcutWithUriParser(final DefaultLayoutParser this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    private ResolveInfo getSingleSystemActivity(final List list) {
        final int size = list.size();
        int i = 0;
        ResolveInfo resolveInfo = null;
    Label_0131:
        while (i < size) {
            while (true) {
                while (true) {
                    Label_0134: {
                        try {
                            final DefaultLayoutParser this$0 = this.this$0;
                            try {
                                final PackageManager mPackageManager = this$0.mPackageManager;
                                final ResolveInfo value = list.get(i);
                                try {
                                    final ResolveInfo resolveInfo2 = value;
                                    try {
                                        final ActivityInfo activityInfo = resolveInfo2.activityInfo;
                                        try {
                                            final ApplicationInfo applicationInfo = mPackageManager.getApplicationInfo(activityInfo.packageName, 0);
                                            try {
                                                if ((applicationInfo.flags & 0x1) == 0x0) {
                                                    break Label_0134;
                                                }
                                                if (resolveInfo != null) {
                                                    return null;
                                                }
                                                final ResolveInfo value2 = list.get(i);
                                                try {
                                                    final ResolveInfo resolveInfo3 = value2;
                                                    ++i;
                                                    resolveInfo = resolveInfo3;
                                                }
                                                catch (PackageManager$NameNotFoundException ex) {
                                                    Log.w("DefaultLayoutParser", "Unable to get info about resolve results", (Throwable)ex);
                                                    return null;
                                                }
                                            }
                                            catch (PackageManager$NameNotFoundException ex2) {}
                                        }
                                        catch (PackageManager$NameNotFoundException ex3) {}
                                    }
                                    catch (PackageManager$NameNotFoundException ex4) {}
                                }
                                catch (PackageManager$NameNotFoundException ex5) {}
                            }
                            catch (PackageManager$NameNotFoundException ex6) {}
                        }
                        catch (PackageManager$NameNotFoundException ex7) {}
                        break Label_0131;
                    }
                    final ResolveInfo resolveInfo3 = resolveInfo;
                    continue;
                }
            }
        }
        return resolveInfo;
    }
    
    private boolean wouldLaunchResolverActivity(final ResolveInfo resolveInfo, final List list) {
        for (int i = 0; i < list.size(); ++i) {
            final ResolveInfo resolveInfo2 = list.get(i);
            if (resolveInfo2.activityInfo.name.equals(resolveInfo.activityInfo.name) && resolveInfo2.activityInfo.packageName.equals(resolveInfo.activityInfo.packageName)) {
                return false;
            }
        }
        return true;
    }
    
    protected long invalidPackageOrClass(final XmlResourceParser xmlResourceParser) {
        final int n = 65536;
        final long n2 = -1;
        Object o = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "uri");
        if (TextUtils.isEmpty((CharSequence)o)) {
            Log.e("DefaultLayoutParser", "Skipping invalid <favorite> with no component or uri");
            return n2;
        }
        final CharSequence charSequence = (CharSequence)o;
        try {
            final Intent uri = Intent.parseUri((String)charSequence, 0);
            o = this.this$0.mPackageManager.resolveActivity(uri, n);
            final List queryIntentActivities = this.this$0.mPackageManager.queryIntentActivities(uri, n);
            if (this.wouldLaunchResolverActivity((ResolveInfo)o, queryIntentActivities)) {
                o = this.getSingleSystemActivity(queryIntentActivities);
                if (o == null) {
                    Log.w("DefaultLayoutParser", "No preference or single system activity found for " + uri.toString());
                    return n2;
                }
            }
        }
        catch (URISyntaxException ex) {
            Log.e("DefaultLayoutParser", "Unable to add meta-favorite: " + (String)o, (Throwable)ex);
            return n2;
        }
        final ActivityInfo activityInfo = ((ResolveInfo)o).activityInfo;
        final Intent launchIntentForPackage = this.this$0.mPackageManager.getLaunchIntentForPackage(activityInfo.packageName);
        if (launchIntentForPackage == null) {
            return n2;
        }
        launchIntentForPackage.setFlags(270532608);
        return this.this$0.addShortcut(activityInfo.loadLabel(this.this$0.mPackageManager).toString(), launchIntentForPackage, 0);
    }
}
