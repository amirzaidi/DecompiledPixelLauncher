// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.ComponentName;
import android.net.Uri;
import android.content.Intent;
import android.text.TextUtils;
import android.content.res.XmlResourceParser;

class AutoInstallsLayout$AutoInstallParser implements AutoInstallsLayout$TagParser
{
    final /* synthetic */ AutoInstallsLayout this$0;
    
    protected AutoInstallsLayout$AutoInstallParser(final AutoInstallsLayout this$0) {
        this.this$0 = this$0;
    }
    
    public long parseAndAdd(final XmlResourceParser xmlResourceParser) {
        final String attributeValue = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "packageName");
        final String attributeValue2 = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "className");
        if (TextUtils.isEmpty((CharSequence)attributeValue) || TextUtils.isEmpty((CharSequence)attributeValue2)) {
            return -1;
        }
        this.this$0.mValues.put("restored", 2);
        return this.this$0.addShortcut(this.this$0.mContext.getString(2131492957), new Intent("android.intent.action.MAIN", (Uri)null).addCategory("android.intent.category.LAUNCHER").setComponent(new ComponentName(attributeValue, attributeValue2)).setFlags(270532608), 0);
    }
}
