// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.net.Uri;
import android.util.Patterns;
import android.text.TextUtils;
import android.graphics.drawable.Drawable;
import android.content.Intent;
import com.android.launcher3.graphics.LauncherIcons;
import android.content.res.XmlResourceParser;
import android.content.res.Resources;

class AutoInstallsLayout$ShortcutParser implements AutoInstallsLayout$TagParser
{
    private final Resources mIconRes;
    final /* synthetic */ AutoInstallsLayout this$0;
    
    public AutoInstallsLayout$ShortcutParser(final AutoInstallsLayout this$0, final Resources mIconRes) {
        this.this$0 = this$0;
        this.mIconRes = mIconRes;
    }
    
    public long parseAndAdd(final XmlResourceParser xmlResourceParser) {
        final long n = -1;
        final int attributeResourceValue = AutoInstallsLayout.getAttributeResourceValue(xmlResourceParser, "title", 0);
        final int attributeResourceValue2 = AutoInstallsLayout.getAttributeResourceValue(xmlResourceParser, "icon", 0);
        if (attributeResourceValue == 0 || attributeResourceValue2 == 0) {
            return n;
        }
        final Intent intent = this.parseIntent(xmlResourceParser);
        if (intent == null) {
            return n;
        }
        final Drawable drawable = this.mIconRes.getDrawable(attributeResourceValue2);
        if (drawable == null) {
            return n;
        }
        this.this$0.mValues.put("icon", Utilities.flattenBitmap(LauncherIcons.createIconBitmap(drawable, this.this$0.mContext)));
        this.this$0.mValues.put("iconPackage", this.mIconRes.getResourcePackageName(attributeResourceValue2));
        this.this$0.mValues.put("iconResource", this.mIconRes.getResourceName(attributeResourceValue2));
        intent.setFlags(270532608);
        return this.this$0.addShortcut(this.this$0.mSourceRes.getString(attributeResourceValue), intent, 1);
    }
    
    protected Intent parseIntent(final XmlResourceParser xmlResourceParser) {
        final String attributeValue = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "url");
        if (TextUtils.isEmpty((CharSequence)attributeValue) || (Patterns.WEB_URL.matcher(attributeValue).matches() ^ true)) {
            return null;
        }
        return new Intent("android.intent.action.VIEW", (Uri)null).setData(Uri.parse(attributeValue));
    }
}
