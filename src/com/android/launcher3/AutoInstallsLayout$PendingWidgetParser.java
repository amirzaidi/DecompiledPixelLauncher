// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.Intent;
import android.content.ComponentName;
import android.os.Bundle;
import android.text.TextUtils;
import android.content.res.XmlResourceParser;

class AutoInstallsLayout$PendingWidgetParser implements AutoInstallsLayout$TagParser
{
    final /* synthetic */ AutoInstallsLayout this$0;
    
    protected AutoInstallsLayout$PendingWidgetParser(final AutoInstallsLayout this$0) {
        this.this$0 = this$0;
    }
    
    public long parseAndAdd(final XmlResourceParser xmlResourceParser) {
        final String attributeValue = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "packageName");
        final String attributeValue2 = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "className");
        if (TextUtils.isEmpty((CharSequence)attributeValue) || TextUtils.isEmpty((CharSequence)attributeValue2)) {
            return -1;
        }
        this.this$0.mValues.put("spanX", AutoInstallsLayout.getAttributeValue(xmlResourceParser, "spanX"));
        this.this$0.mValues.put("spanY", AutoInstallsLayout.getAttributeValue(xmlResourceParser, "spanY"));
        this.this$0.mValues.put("itemType", 4);
        final Bundle bundle = new Bundle();
        final int depth = xmlResourceParser.getDepth();
        while (true) {
            final int next = xmlResourceParser.next();
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                return this.verifyAndInsert(new ComponentName(attributeValue, attributeValue2), bundle);
            }
            if (next != 2) {
                continue;
            }
            if (!"extra".equals(xmlResourceParser.getName())) {
                throw new RuntimeException("Widgets can contain only extras");
            }
            final String attributeValue3 = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "key");
            final String attributeValue4 = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "value");
            if (attributeValue3 == null || attributeValue4 == null) {
                throw new RuntimeException("Widget extras must have a key and value");
            }
            bundle.putString(attributeValue3, attributeValue4);
        }
    }
    
    protected long verifyAndInsert(final ComponentName componentName, final Bundle bundle) {
        this.this$0.mValues.put("appWidgetProvider", componentName.flattenToString());
        this.this$0.mValues.put("restored", 35);
        this.this$0.mValues.put("_id", this.this$0.mCallback.generateNewItemId());
        if (!bundle.isEmpty()) {
            this.this$0.mValues.put("intent", new Intent().putExtras(bundle).toUri(0));
        }
        final long insertAndCheck = this.this$0.mCallback.insertAndCheck(this.this$0.mDb, this.this$0.mValues);
        if (insertAndCheck < 0L) {
            return -1;
        }
        return insertAndCheck;
    }
}
