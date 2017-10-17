// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.view.View$AccessibilityDelegate;
import android.content.ContextWrapper;
import android.content.Context;
import com.android.launcher3.logging.UserEventDispatcher;
import android.app.Activity;

public abstract class BaseActivity extends Activity
{
    protected DeviceProfile mDeviceProfile;
    protected UserEventDispatcher mUserEventDispatcher;
    
    public static BaseActivity fromContext(final Context context) {
        if (context instanceof BaseActivity) {
            return (BaseActivity)context;
        }
        return (BaseActivity)((ContextWrapper)context).getBaseContext();
    }
    
    public View$AccessibilityDelegate getAccessibilityDelegate() {
        return null;
    }
    
    public DeviceProfile getDeviceProfile() {
        return this.mDeviceProfile;
    }
    
    public final UserEventDispatcher getUserEventDispatcher() {
        if (this.mUserEventDispatcher == null) {
            this.mUserEventDispatcher = UserEventDispatcher.newInstance((Context)this, this.mDeviceProfile.isLandscape, this.isInMultiWindowModeCompat());
        }
        return this.mUserEventDispatcher;
    }
    
    public boolean isInMultiWindowModeCompat() {
        return Utilities.ATLEAST_NOUGAT && this.isInMultiWindowMode();
    }
}
