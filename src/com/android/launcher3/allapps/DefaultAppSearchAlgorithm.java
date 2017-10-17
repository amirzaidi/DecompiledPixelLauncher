// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import java.util.Iterator;
import com.android.launcher3.AppInfo;
import com.android.launcher3.util.ComponentKey;
import java.util.ArrayList;
import android.os.Handler;
import java.util.List;

public class DefaultAppSearchAlgorithm
{
    private final List mApps;
    protected final Handler mResultHandler;
    
    public DefaultAppSearchAlgorithm(final List mApps) {
        this.mApps = mApps;
        this.mResultHandler = new Handler();
    }
    
    public void cancel(final boolean b) {
        if (b) {
            this.mResultHandler.removeCallbacksAndMessages((Object)null);
        }
    }
    
    public void doSearch(final String s, final AllAppsSearchBarController$Callbacks allAppsSearchBarController$Callbacks) {
        this.mResultHandler.post((Runnable)new DefaultAppSearchAlgorithm$1(this, allAppsSearchBarController$Callbacks, s, this.getTitleMatchResult(s)));
    }
    
    protected ArrayList getTitleMatchResult(final String s) {
        final String lowerCase = s.toLowerCase();
        final ArrayList<ComponentKey> list = new ArrayList<ComponentKey>();
        for (final AppInfo appInfo : this.mApps) {
            if (this.matches(appInfo, lowerCase)) {
                list.add(appInfo.toComponentKey());
            }
        }
        return list;
    }
    
    protected boolean isBreak(final int n, final int n2, final int n3) {
        boolean b = true;
        switch (n) {
            default: {
                return false;
            }
            case 1: {
                if (n3 == (b ? 1 : 0)) {
                    return b;
                }
            }
            case 3: {
                if (n2 == (b ? 1 : 0)) {
                    b = false;
                }
                return b;
            }
            case 2: {
                if (n2 <= 5 && n2 > 0) {
                    b = false;
                }
                return b;
            }
            case 9:
            case 10:
            case 11: {
                if (n2 != 9 && n2 != 10) {
                    if (n2 == 11) {
                        b = false;
                    }
                }
                else {
                    b = false;
                }
                return b;
            }
            case 20:
            case 24:
            case 25:
            case 26: {
                return b;
            }
        }
    }
    
    protected boolean matches(final AppInfo appInfo, final String s) {
        final int length = s.length();
        final String string = appInfo.title.toString();
        final int length2 = string.length();
        if (length2 < length || length <= 0) {
            return false;
        }
        final int type = Character.getType(string.codePointAt(0));
        final int n = length2 - length;
        int i = 0;
        int n2 = type;
        int n3 = 0;
        while (i <= n) {
            int type2;
            if (i < length2 - 1) {
                type2 = Character.getType(string.codePointAt(i + 1));
            }
            else {
                type2 = 0;
            }
            if (this.isBreak(n2, n3, type2) && string.substring(i, i + length).equalsIgnoreCase(s)) {
                return true;
            }
            ++i;
            n3 = n2;
            n2 = type2;
        }
        return false;
    }
}
