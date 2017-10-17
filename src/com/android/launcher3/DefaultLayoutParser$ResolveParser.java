// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.net.URISyntaxException;
import android.content.Intent;
import android.text.TextUtils;
import android.content.pm.ApplicationInfo;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager$NameNotFoundException;
import android.content.pm.ResolveInfo;
import java.util.List;
import android.util.Log;
import android.content.res.XmlResourceParser;

public class DefaultLayoutParser$ResolveParser implements AutoInstallsLayout$TagParser
{
    private final DefaultLayoutParser$AppShortcutWithUriParser mChildParser;
    final /* synthetic */ DefaultLayoutParser this$0;
    
    public DefaultLayoutParser$ResolveParser(final DefaultLayoutParser this$0) {
        this.this$0 = this$0;
        this.mChildParser = new DefaultLayoutParser$AppShortcutWithUriParser(this.this$0);
    }
    
    public long parseAndAdd(final XmlResourceParser xmlResourceParser) {
        final long n = -1;
        final int depth = xmlResourceParser.getDepth();
        long andAdd = n;
        while (true) {
            final int next = xmlResourceParser.next();
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                break;
            }
            if (next != 2 || andAdd > n) {
                continue;
            }
            final String name = xmlResourceParser.getName();
            if ("favorite".equals(name)) {
                andAdd = this.mChildParser.parseAndAdd(xmlResourceParser);
            }
            else {
                Log.e("DefaultLayoutParser", "Fallback groups can contain only favorites, found " + name);
            }
        }
        return andAdd;
    }
}
