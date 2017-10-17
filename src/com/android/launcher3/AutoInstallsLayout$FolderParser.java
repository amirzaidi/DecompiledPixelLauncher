// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;
import android.content.ContentValues;
import android.content.res.XmlResourceParser;
import java.util.HashMap;

class AutoInstallsLayout$FolderParser implements AutoInstallsLayout$TagParser
{
    private final HashMap mFolderElements;
    final /* synthetic */ AutoInstallsLayout this$0;
    
    public AutoInstallsLayout$FolderParser(final AutoInstallsLayout autoInstallsLayout) {
        this(autoInstallsLayout, autoInstallsLayout.getFolderElementsMap());
    }
    
    public AutoInstallsLayout$FolderParser(final AutoInstallsLayout this$0, final HashMap mFolderElements) {
        this.this$0 = this$0;
        this.mFolderElements = mFolderElements;
    }
    
    public long parseAndAdd(final XmlResourceParser xmlResourceParser) {
        final int attributeResourceValue = AutoInstallsLayout.getAttributeResourceValue(xmlResourceParser, "title", 0);
        String s;
        if (attributeResourceValue != 0) {
            s = this.this$0.mSourceRes.getString(attributeResourceValue);
        }
        else {
            s = this.this$0.mContext.getResources().getString(2131492893);
        }
        this.this$0.mValues.put("title", s);
        this.this$0.mValues.put("itemType", 2);
        this.this$0.mValues.put("spanX", 1);
        this.this$0.mValues.put("spanY", 1);
        this.this$0.mValues.put("_id", this.this$0.mCallback.generateNewItemId());
        final long insertAndCheck = this.this$0.mCallback.insertAndCheck(this.this$0.mDb, this.this$0.mValues);
        if (insertAndCheck < 0L) {
            return -1;
        }
        final ContentValues contentValues = new ContentValues(this.this$0.mValues);
        final ArrayList<Long> list = new ArrayList<Long>();
        final int depth = xmlResourceParser.getDepth();
        int n = 0;
        while (true) {
            final int next = xmlResourceParser.next();
            if (next == 3 && xmlResourceParser.getDepth() <= depth) {
                long longValue;
                if (list.size() < 2) {
                    final LauncherProvider$SqlArguments launcherProvider$SqlArguments = new LauncherProvider$SqlArguments(LauncherSettings$Favorites.getContentUri(insertAndCheck), null, null);
                    this.this$0.mDb.delete(launcherProvider$SqlArguments.table, launcherProvider$SqlArguments.where, launcherProvider$SqlArguments.args);
                    longValue = -1;
                    if (list.size() == 1) {
                        final ContentValues contentValues2 = new ContentValues();
                        AutoInstallsLayout.copyInteger(contentValues, contentValues2, "container");
                        AutoInstallsLayout.copyInteger(contentValues, contentValues2, "screen");
                        AutoInstallsLayout.copyInteger(contentValues, contentValues2, "cellX");
                        AutoInstallsLayout.copyInteger(contentValues, contentValues2, "cellY");
                        longValue = list.get(0);
                        this.this$0.mDb.update("favorites", contentValues2, "_id=" + longValue, (String[])null);
                    }
                }
                else {
                    longValue = insertAndCheck;
                }
                return longValue;
            }
            if (next != 2) {
                continue;
            }
            this.this$0.mValues.clear();
            this.this$0.mValues.put("container", insertAndCheck);
            this.this$0.mValues.put("rank", n);
            final AutoInstallsLayout$TagParser autoInstallsLayout$TagParser = this.mFolderElements.get(xmlResourceParser.getName());
            if (autoInstallsLayout$TagParser == null) {
                throw new RuntimeException("Invalid folder item " + xmlResourceParser.getName());
            }
            final long andAdd = autoInstallsLayout$TagParser.parseAndAdd(xmlResourceParser);
            int n2;
            if (andAdd >= 0L) {
                list.add(andAdd);
                n2 = n + 1;
            }
            else {
                n2 = n;
            }
            n = n2;
        }
    }
}
