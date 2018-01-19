// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.apps.nexuslauncher.search;

import com.android.launcher3.util.PackageManagerHelper;
import android.content.Intent;
import android.content.ComponentName;
import com.android.launcher3.logging.UserEventDispatcher;
import com.android.launcher3.Workspace$State;
import com.android.launcher3.Workspace;
import com.android.launcher3.LauncherModel$Callbacks;
import com.android.launcher3.LauncherModel;
import android.os.UserHandle;
import android.content.pm.PackageManager;
import com.android.launcher3.AppInfo;
import com.android.launcher3.util.ComponentKey;
import android.os.Bundle;
import com.android.launcher3.compat.LauncherAppsCompat;
import com.android.launcher3.ItemInfo;
import com.google.android.apps.nexuslauncher.logging.UserEventDispatcherImpl;
import android.text.TextUtils;
import com.android.launcher3.Launcher;
import com.android.launcher3.LauncherAppState;
import android.view.View;
import android.os.Process;
import android.widget.Toast;
import com.android.launcher3.Utilities;
import android.content.Context;
import android.net.Uri;
import com.android.launcher3.BaseActivity;

public class AppLaunchActivity extends BaseActivity
{
    private void eq(final Uri uri) {
        while (true) {
            while (true) {
                String queryParameter = null;
                try {
                    final ComponentKey es = AppSearchProvider.es(uri, (Context)this);
                    final AppInfo ep = b.ep((Context)this, es);
                    try {
                        final PackageManager packageManager = this.getPackageManager();
                        try {
                            Label_0074: {
                                if (!packageManager.isSafeMode() || !(Utilities.isSystemApp((Context)this, ep.getIntent()) ^ true)) {
                                    break Label_0074;
                                }
                                final Toast text = Toast.makeText((Context)this, 2131492898, 0);
                                try {
                                    text.show();
                                    return;
                                    final UserHandle user = es.user;
                                    try {
                                        Label_0243: {
                                            if (!user.equals((Object)Process.myUserHandle())) {
                                                break Label_0243;
                                            }
                                            this.startActivity(ep.getIntent());
                                            while (true) {
                                                final View view2;
                                                final View view = view2 = new View((Context)this);
                                                try {
                                                    view2.setTag((Object)ep);
                                                    int containerType = 2;
                                                    final LauncherAppState instance = LauncherAppState.getInstance((Context)this);
                                                    try {
                                                        final LauncherModel model = instance.getModel();
                                                        try {
                                                            final LauncherModel$Callbacks callback = model.getCallback();
                                                            Label_0180: {
                                                                if (!(callback instanceof Launcher)) {
                                                                    break Label_0180;
                                                                }
                                                                final Launcher launcher = (Launcher)callback;
                                                                try {
                                                                    final Workspace workspace = launcher.getWorkspace();
                                                                    try {
                                                                        final Workspace$State state = workspace.getState();
                                                                        try {
                                                                            containerType = state.containerType;
                                                                            queryParameter = uri.getQueryParameter("predictionRank");
                                                                            try {
                                                                                try {
                                                                                    if (!TextUtils.isEmpty((CharSequence)queryParameter)) {
                                                                                        break;
                                                                                    }
                                                                                    final int int1 = -1;
                                                                                    final c c = new c((Context)this, int1);
                                                                                    try {
                                                                                        c.addView(view);
                                                                                        final UserEventDispatcher userEventDispatcher = this.getUserEventDispatcher();
                                                                                        try {
                                                                                            ((UserEventDispatcherImpl)userEventDispatcher).eV(view, ep, containerType);
                                                                                            return;
                                                                                            final LauncherAppsCompat instance2 = LauncherAppsCompat.getInstance((Context)this);
                                                                                            try {
                                                                                                final ComponentName componentName = es.componentName;
                                                                                                try {
                                                                                                    final UserHandle user2 = es.user;
                                                                                                    try {
                                                                                                        final Intent intent = this.getIntent();
                                                                                                        try {
                                                                                                            instance2.startActivityForProfile(componentName, user2, intent.getSourceBounds(), null);
                                                                                                        }
                                                                                                        catch (Exception ex) {
                                                                                                            Toast.makeText((Context)this, 2131492896, 0).show();
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
                                                                                catch (Exception ex7) {}
                                                                            }
                                                                            catch (Exception ex8) {}
                                                                        }
                                                                        catch (Exception ex9) {}
                                                                    }
                                                                    catch (Exception ex10) {}
                                                                }
                                                                catch (Exception ex11) {}
                                                            }
                                                        }
                                                        catch (Exception ex12) {}
                                                    }
                                                    catch (Exception ex13) {}
                                                }
                                                catch (Exception ex14) {}
                                            }
                                        }
                                    }
                                    catch (Exception ex15) {}
                                }
                                catch (Exception ex16) {}
                            }
                        }
                        catch (Exception ex17) {}
                    }
                    catch (Exception ex18) {}
                }
                catch (Exception ex19) {}
                final int int1 = Integer.parseInt(queryParameter);
                continue;
            }
        }
    }
    
    protected void onCreate(final Bundle bundle) {
        super.onCreate(bundle);
        this.mDeviceProfile = LauncherAppState.getIDP((Context)this).getDeviceProfile((Context)this);
        final Uri data = this.getIntent().getData();
        if (data != null) {
            this.eq(data);
        }
        else {
            final String stringExtra = this.getIntent().getStringExtra("query");
            if (!TextUtils.isEmpty((CharSequence)stringExtra)) {
                this.startActivity(PackageManagerHelper.getMarketSearchIntent((Context)this, stringExtra));
            }
        }
        this.finish();
    }
}
