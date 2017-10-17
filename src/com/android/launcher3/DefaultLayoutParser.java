// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.res.XmlResourceParser;
import android.util.ArrayMap;
import android.content.res.Resources;
import android.appwidget.AppWidgetHost;
import android.content.Context;

public class DefaultLayoutParser extends AutoInstallsLayout
{
    public DefaultLayoutParser(final Context context, final AppWidgetHost appWidgetHost, final AutoInstallsLayout$LayoutParserCallback autoInstallsLayout$LayoutParserCallback, final Resources resources, final int n) {
        super(context, appWidgetHost, autoInstallsLayout$LayoutParserCallback, resources, n, "favorites");
    }
    
    protected ArrayMap getFolderElementsMap() {
        return this.getFolderElementsMap(this.mSourceRes);
    }
    
    ArrayMap getFolderElementsMap(final Resources resources) {
        final ArrayMap arrayMap = new ArrayMap();
        arrayMap.put((Object)"favorite", (Object)new DefaultLayoutParser$AppShortcutWithUriParser(this));
        arrayMap.put((Object)"shortcut", (Object)new DefaultLayoutParser$UriShortcutParser(this, resources));
        return arrayMap;
    }
    
    protected ArrayMap getLayoutElementsMap() {
        final ArrayMap arrayMap = new ArrayMap();
        arrayMap.put((Object)"favorite", (Object)new DefaultLayoutParser$AppShortcutWithUriParser(this));
        arrayMap.put((Object)"appwidget", (Object)new DefaultLayoutParser$AppWidgetParser(this));
        arrayMap.put((Object)"shortcut", (Object)new DefaultLayoutParser$UriShortcutParser(this, this.mSourceRes));
        arrayMap.put((Object)"resolve", (Object)new DefaultLayoutParser$ResolveParser(this));
        arrayMap.put((Object)"folder", (Object)new DefaultLayoutParser$MyFolderParser(this));
        arrayMap.put((Object)"partner-folder", (Object)new DefaultLayoutParser$PartnerFolderParser(this));
        return arrayMap;
    }
    
    protected void parseContainerAndScreen(final XmlResourceParser xmlResourceParser, final long[] array) {
        array[0] = -100;
        final String attributeValue = AutoInstallsLayout.getAttributeValue(xmlResourceParser, "container");
        if (attributeValue != null) {
            array[0] = Long.valueOf(attributeValue);
        }
        array[1] = Long.parseLong(AutoInstallsLayout.getAttributeValue(xmlResourceParser, "screen"));
    }
}
