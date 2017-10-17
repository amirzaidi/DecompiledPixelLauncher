// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.ContentUris;
import android.text.TextUtils;
import android.net.Uri;

class LauncherProvider$SqlArguments
{
    public final String[] args;
    public final String table;
    public final String where;
    
    LauncherProvider$SqlArguments(final Uri uri) {
        if (uri.getPathSegments().size() == 1) {
            this.table = uri.getPathSegments().get(0);
            this.where = null;
            this.args = null;
            return;
        }
        throw new IllegalArgumentException("Invalid URI: " + uri);
    }
    
    LauncherProvider$SqlArguments(final Uri uri, final String where, final String[] args) {
        if (uri.getPathSegments().size() == 1) {
            this.table = uri.getPathSegments().get(0);
            this.where = where;
            this.args = args;
        }
        else {
            if (uri.getPathSegments().size() != 2) {
                throw new IllegalArgumentException("Invalid URI: " + uri);
            }
            if (!TextUtils.isEmpty((CharSequence)where)) {
                throw new UnsupportedOperationException("WHERE clause not supported: " + uri);
            }
            this.table = uri.getPathSegments().get(0);
            this.where = "_id=" + ContentUris.parseId(uri);
            this.args = null;
        }
    }
}
