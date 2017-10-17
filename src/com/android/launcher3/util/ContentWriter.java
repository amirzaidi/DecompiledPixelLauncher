// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.util;

import com.android.launcher3.compat.UserManagerCompat;
import android.content.Intent;
import com.android.launcher3.Utilities;
import com.android.launcher3.LauncherAppState;
import android.content.ContentValues;
import android.os.UserHandle;
import android.graphics.Bitmap;
import android.content.Context;

public class ContentWriter
{
    private ContentWriter$CommitParams mCommitParams;
    private final Context mContext;
    private Bitmap mIcon;
    private UserHandle mUser;
    private final ContentValues mValues;
    
    public ContentWriter(final ContentValues mValues, final Context mContext) {
        this.mValues = mValues;
        this.mContext = mContext;
    }
    
    public ContentWriter(final Context context) {
        this(new ContentValues(), context);
    }
    
    public ContentWriter(final Context context, final ContentWriter$CommitParams mCommitParams) {
        this(context);
        this.mCommitParams = mCommitParams;
    }
    
    public int commit() {
        if (this.mCommitParams != null) {
            return this.mContext.getContentResolver().update(this.mCommitParams.mUri, this.getValues(this.mContext), this.mCommitParams.mWhere, this.mCommitParams.mSelectionArgs);
        }
        return 0;
    }
    
    public ContentValues getValues(final Context context) {
        Preconditions.assertNonUiThread();
        if (this.mIcon != null && (LauncherAppState.getInstance(context).getIconCache().isDefaultIcon(this.mIcon, this.mUser) ^ true)) {
            this.mValues.put("icon", Utilities.flattenBitmap(this.mIcon));
            this.mIcon = null;
        }
        return this.mValues;
    }
    
    public ContentWriter put(final String s, final Intent intent) {
        String uri = null;
        final ContentValues mValues = this.mValues;
        if (intent != null) {
            uri = intent.toUri(0);
        }
        mValues.put(s, uri);
        return this;
    }
    
    public ContentWriter put(final String s, final UserHandle userHandle) {
        return this.put(s, Long.valueOf(UserManagerCompat.getInstance(this.mContext).getSerialNumberForUser(userHandle)));
    }
    
    public ContentWriter put(final String s, final CharSequence charSequence) {
        String string = null;
        final ContentValues mValues = this.mValues;
        if (charSequence != null) {
            string = charSequence.toString();
        }
        mValues.put(s, string);
        return this;
    }
    
    public ContentWriter put(final String s, final Integer n) {
        this.mValues.put(s, n);
        return this;
    }
    
    public ContentWriter put(final String s, final Long n) {
        this.mValues.put(s, n);
        return this;
    }
    
    public ContentWriter put(final String s, final String s2) {
        this.mValues.put(s, s2);
        return this;
    }
    
    public ContentWriter putIcon(final Bitmap mIcon, final UserHandle mUser) {
        this.mIcon = mIcon;
        this.mUser = mUser;
        return this;
    }
}
