// 
// Decompiled by Procyon v0.5.30
// 

package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.Collection;
import java.util.Arrays;
import android.database.Cursor;
import java.util.TreeMap;
import java.util.Map;
import android.util.Log;
import android.content.ContentResolver;
import java.util.HashSet;
import java.util.HashMap;
import java.util.regex.Pattern;
import android.net.Uri;
import android.os.Handler;
import android.database.ContentObserver;

class bd extends ContentObserver
{
    final /* synthetic */ aB tw;
    
    bd(final aB tw, final Handler handler) {
        this.tw = tw;
        super(handler);
    }
    
    public void onChange(final boolean b) {
        final Class<aY> clazz = aY.class;
        synchronized (aY.class) {
            aY.tr.clear();
            aY.tq = new Object();
            if (!aY.ts.isEmpty()) {
                aY.xo(this.tw.sn, (String[])aY.ts.toArray(new String[aY.ts.size()]));
            }
        }
    }
}
