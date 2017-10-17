// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.util.Log;
import java.net.URISyntaxException;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.content.res.Resources;

public class DefaultLayoutParser$UriShortcutParser extends AutoInstallsLayout$ShortcutParser
{
    final /* synthetic */ DefaultLayoutParser this$0;
    
    public DefaultLayoutParser$UriShortcutParser(final DefaultLayoutParser this$0, final Resources resources) {
        this.this$0 = this$0;
        super(this$0, resources);
    }
    
    protected Intent parseIntent(final XmlResourceParser xmlResourceParser) {
        final String s = "uri";
        String attributeValue = null;
        try {
            final String string = attributeValue = AutoInstallsLayout.getAttributeValue(xmlResourceParser, s);
            final int n = 0;
            return Intent.parseUri(attributeValue, n);
        }
        catch (URISyntaxException string) {
            string = null;
        }
        while (true) {
            try {
                final int n = 0;
                return Intent.parseUri(attributeValue, n);
                final String string = "Shortcut has malformed uri: " + string;
                Log.w("DefaultLayoutParser", string);
                return null;
            }
            catch (URISyntaxException ex) {
                continue;
            }
            break;
        }
    }
}
