// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.compat.UserManagerCompat;
import android.text.TextUtils;
import com.android.launcher3.util.ContentWriter;
import android.content.Context;
import com.android.launcher3.shortcuts.ShortcutInfoCompat;
import android.content.Intent;
import android.content.Intent$ShortcutIconResource;

public class ShortcutInfo extends ItemInfoWithIcon
{
    CharSequence disabledMessage;
    public Intent$ShortcutIconResource iconResource;
    public Intent intent;
    public int isDisabled;
    private int mInstallProgress;
    public int status;
    
    public ShortcutInfo() {
        this.isDisabled = 0;
        this.itemType = 1;
    }
    
    public ShortcutInfo(final AppInfo appInfo) {
        super(appInfo);
        this.isDisabled = 0;
        this.title = Utilities.trim(appInfo.title);
        this.intent = new Intent(appInfo.intent);
        this.isDisabled = appInfo.isDisabled;
    }
    
    public ShortcutInfo(final ShortcutInfo shortcutInfo) {
        super(shortcutInfo);
        this.isDisabled = 0;
        this.title = shortcutInfo.title;
        this.intent = new Intent(shortcutInfo.intent);
        this.iconResource = shortcutInfo.iconResource;
        this.status = shortcutInfo.status;
        this.mInstallProgress = shortcutInfo.mInstallProgress;
        this.isDisabled = shortcutInfo.isDisabled;
    }
    
    public ShortcutInfo(final ShortcutInfoCompat shortcutInfoCompat, final Context context) {
        this.isDisabled = 0;
        this.user = shortcutInfoCompat.getUserHandle();
        this.itemType = 6;
        this.updateFromDeepShortcutInfo(shortcutInfoCompat, context);
    }
    
    public String getDeepShortcutId() {
        String stringExtra;
        if (this.itemType == 6) {
            stringExtra = this.getIntent().getStringExtra("shortcut_id");
        }
        else {
            stringExtra = null;
        }
        return stringExtra;
    }
    
    public int getInstallProgress() {
        return this.mInstallProgress;
    }
    
    public Intent getIntent() {
        return this.intent;
    }
    
    public boolean hasStatusFlag(final int n) {
        boolean b = false;
        if ((this.status & n) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public boolean isDisabled() {
        boolean b = false;
        if (this.isDisabled != 0) {
            b = true;
        }
        return b;
    }
    
    public final boolean isPromise() {
        return this.hasStatusFlag(3);
    }
    
    public void onAddToDatabase(final ContentWriter contentWriter) {
        super.onAddToDatabase(contentWriter);
        contentWriter.put("title", this.title).put("intent", this.getIntent()).put("restored", Integer.valueOf(this.status));
        if (!this.usingLowResIcon) {
            contentWriter.putIcon(this.iconBitmap, this.user);
        }
        if (this.iconResource != null) {
            contentWriter.put("iconPackage", this.iconResource.packageName).put("iconResource", this.iconResource.resourceName);
        }
    }
    
    public void setInstallProgress(final int mInstallProgress) {
        this.mInstallProgress = mInstallProgress;
        this.status |= 0x4;
    }
    
    public void updateFromDeepShortcutInfo(final ShortcutInfoCompat shortcutInfoCompat, final Context context) {
        this.intent = shortcutInfoCompat.makeIntent();
        this.title = shortcutInfoCompat.getShortLabel();
        CharSequence charSequence = shortcutInfoCompat.getLongLabel();
        if (TextUtils.isEmpty(charSequence)) {
            charSequence = shortcutInfoCompat.getShortLabel();
        }
        this.contentDescription = UserManagerCompat.getInstance(context).getBadgedLabelForUser(charSequence, this.user);
        if (shortcutInfoCompat.isEnabled()) {
            this.isDisabled &= 0xFFFFFFEF;
        }
        else {
            this.isDisabled |= 0x10;
        }
        this.disabledMessage = shortcutInfoCompat.getDisabledMessage();
    }
}
