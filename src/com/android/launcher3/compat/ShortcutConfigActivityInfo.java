// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

import android.content.ActivityNotFoundException;
import android.util.Log;
import android.content.Context;
import android.widget.Toast;
import android.content.Intent;
import android.app.Activity;
import android.graphics.drawable.Drawable;
import com.android.launcher3.IconCache;
import com.android.launcher3.ShortcutInfo;
import android.os.UserHandle;
import android.content.ComponentName;

public abstract class ShortcutConfigActivityInfo
{
    private static final String TAG = "SCActivityInfo";
    private final ComponentName mCn;
    private final UserHandle mUser;
    
    protected ShortcutConfigActivityInfo(final ComponentName mCn, final UserHandle mUser) {
        this.mCn = mCn;
        this.mUser = mUser;
    }
    
    public ShortcutInfo createShortcutInfo() {
        return null;
    }
    
    public ComponentName getComponent() {
        return this.mCn;
    }
    
    public abstract Drawable getFullResIcon(final IconCache p0);
    
    public int getItemType() {
        return 1;
    }
    
    public abstract CharSequence getLabel();
    
    public UserHandle getUser() {
        return this.mUser;
    }
    
    public boolean isPersistable() {
        return true;
    }
    
    public boolean startConfigActivity(final Activity activity, final int n) {
        final int n2 = 2131492897;
        final Intent setComponent = new Intent("android.intent.action.CREATE_SHORTCUT").setComponent(this.getComponent());
        try {
            activity.startActivityForResult(setComponent, n);
            return true;
        }
        catch (SecurityException ex) {
            Toast.makeText((Context)activity, n2, 0).show();
            Log.e("SCActivityInfo", "Launcher does not have the permission to launch " + setComponent + ". Make sure to create a MAIN intent-filter for the corresponding activity " + "or use the exported attribute for this activity.", (Throwable)ex);
        }
        catch (ActivityNotFoundException ex2) {
            Toast.makeText((Context)activity, n2, 0).show();
            goto Label_0113;
        }
    }
}
