// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.res.Resources;
import org.xmlpull.v1.XmlPullParser;
import android.content.res.XmlResourceParser;

class DefaultLayoutParser$PartnerFolderParser implements AutoInstallsLayout$TagParser
{
    final /* synthetic */ DefaultLayoutParser this$0;
    
    DefaultLayoutParser$PartnerFolderParser(final DefaultLayoutParser this$0) {
        this.this$0 = this$0;
    }
    
    public long parseAndAdd(final XmlResourceParser xmlResourceParser) {
        final Partner value = Partner.get(this.this$0.mPackageManager);
        if (value != null) {
            final Resources resources = value.getResources();
            final int identifier = resources.getIdentifier("partner_folder", "xml", value.getPackageName());
            if (identifier != 0) {
                final XmlResourceParser xml = resources.getXml(identifier);
                AutoInstallsLayout.beginDocument((XmlPullParser)xml, "folder");
                return new AutoInstallsLayout$FolderParser(this.this$0, this.this$0.getFolderElementsMap(resources)).parseAndAdd(xml);
            }
        }
        return -1;
    }
}
