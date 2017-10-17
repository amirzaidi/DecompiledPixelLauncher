// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import org.xmlpull.v1.XmlPullParser;
import android.content.res.XmlResourceParser;

class DefaultLayoutParser$MyFolderParser extends AutoInstallsLayout$FolderParser
{
    final /* synthetic */ DefaultLayoutParser this$0;
    
    DefaultLayoutParser$MyFolderParser(final DefaultLayoutParser this$0) {
        this.this$0 = this$0;
        super(this$0);
    }
    
    public long parseAndAdd(XmlResourceParser xml) {
        final int attributeResourceValue = AutoInstallsLayout.getAttributeResourceValue(xml, "folderItems", 0);
        if (attributeResourceValue != 0) {
            xml = this.this$0.mSourceRes.getXml(attributeResourceValue);
            AutoInstallsLayout.beginDocument((XmlPullParser)xml, "folder");
        }
        return super.parseAndAdd(xml);
    }
}
