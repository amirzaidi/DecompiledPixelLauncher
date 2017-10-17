// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.app.Activity;
import com.android.launcher3.LauncherAppState;
import android.content.pm.LauncherApps;
import android.graphics.drawable.Drawable;
import com.android.launcher3.IconCache;
import com.android.launcher3.compat.LauncherAppsCompat;
import android.content.ComponentName;
import com.android.launcher3.compat.PinItemRequestCompat;
import android.content.pm.ShortcutInfo;
import android.content.Context;
import com.android.launcher3.compat.ShortcutConfigActivityInfo;

class PinShortcutRequestActivityInfo extends ShortcutConfigActivityInfo
{
    private final Context mContext;
    private final ShortcutInfo mInfo;
    private final PinItemRequestCompat mRequest;
    
    public PinShortcutRequestActivityInfo(final PinItemRequestCompat mRequest, final Context mContext) {
        super(new ComponentName(mRequest.getShortcutInfo().getPackage(), "pinned-shortcut"), mRequest.getShortcutInfo().getUserHandle());
        this.mRequest = mRequest;
        this.mInfo = mRequest.getShortcutInfo();
        this.mContext = mContext;
    }
    
    public com.android.launcher3.ShortcutInfo createShortcutInfo() {
        return LauncherAppsCompat.createShortcutInfoFromPinItemRequest(this.mContext, this.mRequest, this.mContext.getResources().getInteger(2131558416) + 500 + this.mContext.getResources().getInteger(2131558409) / 2);
    }
    
    public Drawable getFullResIcon(final IconCache iconCache) {
        return ((LauncherApps)this.mContext.getSystemService((Class)LauncherApps.class)).getShortcutIconDrawable(this.mInfo, LauncherAppState.getIDP(this.mContext).fillResIconDpi);
    }
    
    public int getItemType() {
        return 6;
    }
    
    public CharSequence getLabel() {
        return this.mInfo.getShortLabel();
    }
    
    public boolean isPersistable() {
        return false;
    }
    
    public boolean startConfigActivity(final Activity activity, final int n) {
        return false;
    }
}
