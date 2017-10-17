// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.res.XmlResourceParser;
import java.util.HashMap;
import android.content.res.Resources;
import android.appwidget.AppWidgetHost;
import android.content.Context;

public class DefaultLayoutParser extends AutoInstallsLayout
{
    public DefaultLayoutParser(final Context context, final AppWidgetHost appWidgetHost, final AutoInstallsLayout$LayoutParserCallback autoInstallsLayout$LayoutParserCallback, final Resources resources, final int n) {
        super(context, appWidgetHost, autoInstallsLayout$LayoutParserCallback, resources, n, "favorites");
    }
    
    protected HashMap getFolderElementsMap() {
        return this.getFolderElementsMap(this.mSourceRes);
    }
    
    HashMap getFolderElementsMap(final Resources resources) {
        final HashMap<String, DefaultLayoutParser$AppShortcutWithUriParser> hashMap = new HashMap<String, DefaultLayoutParser$AppShortcutWithUriParser>();
        hashMap.put("favorite", new DefaultLayoutParser$AppShortcutWithUriParser(this));
        hashMap.put("shortcut", (DefaultLayoutParser$AppShortcutWithUriParser)new DefaultLayoutParser$UriShortcutParser(this, resources));
        return hashMap;
    }
    
    protected HashMap getLayoutElementsMap() {
        final HashMap<String, DefaultLayoutParser$AppShortcutWithUriParser> hashMap = new HashMap<String, DefaultLayoutParser$AppShortcutWithUriParser>();
        hashMap.put("favorite", new DefaultLayoutParser$AppShortcutWithUriParser(this));
        hashMap.put("appwidget", (DefaultLayoutParser$AppShortcutWithUriParser)new DefaultLayoutParser$AppWidgetParser(this));
        hashMap.put("shortcut", (DefaultLayoutParser$AppShortcutWithUriParser)new DefaultLayoutParser$UriShortcutParser(this, this.mSourceRes));
        hashMap.put("resolve", (DefaultLayoutParser$AppShortcutWithUriParser)new DefaultLayoutParser$ResolveParser(this));
        hashMap.put("folder", (DefaultLayoutParser$AppShortcutWithUriParser)new DefaultLayoutParser$MyFolderParser(this));
        hashMap.put("partner-folder", (DefaultLayoutParser$AppShortcutWithUriParser)new DefaultLayoutParser$PartnerFolderParser(this));
        return hashMap;
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
