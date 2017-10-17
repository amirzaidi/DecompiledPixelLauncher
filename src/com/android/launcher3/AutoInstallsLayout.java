// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.ArrayList;
import java.util.HashMap;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.util.Log;
import java.util.Locale;
import android.util.Pair;
import android.text.TextUtils;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParser;
import android.content.ContentValues;
import android.content.res.Resources;
import android.content.pm.PackageManager;
import android.database.sqlite.SQLiteDatabase;
import android.content.Context;
import android.appwidget.AppWidgetHost;

public class AutoInstallsLayout
{
    private static final String HOTSEAT_CONTAINER_NAME;
    final AppWidgetHost mAppWidgetHost;
    protected final AutoInstallsLayout$LayoutParserCallback mCallback;
    private final int mColumnCount;
    final Context mContext;
    protected SQLiteDatabase mDb;
    private final InvariantDeviceProfile mIdp;
    protected final int mLayoutId;
    protected final PackageManager mPackageManager;
    protected final String mRootTag;
    private final int mRowCount;
    protected final Resources mSourceRes;
    private final long[] mTemp;
    final ContentValues mValues;
    
    static {
        HOTSEAT_CONTAINER_NAME = LauncherSettings$Favorites.containerToString(-101);
    }
    
    public AutoInstallsLayout(final Context mContext, final AppWidgetHost mAppWidgetHost, final AutoInstallsLayout$LayoutParserCallback mCallback, final Resources mSourceRes, final int mLayoutId, final String mRootTag) {
        this.mTemp = new long[2];
        this.mContext = mContext;
        this.mAppWidgetHost = mAppWidgetHost;
        this.mCallback = mCallback;
        this.mPackageManager = mContext.getPackageManager();
        this.mValues = new ContentValues();
        this.mRootTag = mRootTag;
        this.mSourceRes = mSourceRes;
        this.mLayoutId = mLayoutId;
        this.mIdp = LauncherAppState.getIDP(mContext);
        this.mRowCount = this.mIdp.numRows;
        this.mColumnCount = this.mIdp.numColumns;
    }
    
    protected static final void beginDocument(final XmlPullParser xmlPullParser, final String s) {
        final int n = 2;
        int next;
        do {
            next = xmlPullParser.next();
        } while (next != n && next != 1);
        if (next != n) {
            throw new XmlPullParserException("No start tag found");
        }
        if (!xmlPullParser.getName().equals(s)) {
            throw new XmlPullParserException("Unexpected start tag: found " + xmlPullParser.getName() + ", expected " + s);
        }
    }
    
    private static String convertToDistanceFromEnd(final String s, final int n) {
        if (!TextUtils.isEmpty((CharSequence)s)) {
            final int int1 = Integer.parseInt(s);
            if (int1 < 0) {
                return Integer.toString(int1 + n);
            }
        }
        return s;
    }
    
    static void copyInteger(final ContentValues contentValues, final ContentValues contentValues2, final String s) {
        contentValues2.put(s, contentValues.getAsInteger(s));
    }
    
    static AutoInstallsLayout get(final Context context, final AppWidgetHost appWidgetHost, final AutoInstallsLayout$LayoutParserCallback autoInstallsLayout$LayoutParserCallback) {
        final Pair systemApk = Utilities.findSystemApk("android.autoinstalls.config.action.PLAY_AUTO_INSTALL", context.getPackageManager());
        if (systemApk == null) {
            return null;
        }
        return get(context, (String)systemApk.first, (Resources)systemApk.second, appWidgetHost, autoInstallsLayout$LayoutParserCallback);
    }
    
    static AutoInstallsLayout get(final Context context, final String s, final Resources resources, final AppWidgetHost appWidgetHost, final AutoInstallsLayout$LayoutParserCallback autoInstallsLayout$LayoutParserCallback) {
        final int n = 2;
        final int n2 = 1;
        final InvariantDeviceProfile idp = LauncherAppState.getIDP(context);
        final Locale english = Locale.ENGLISH;
        final Object[] array = { idp.numColumns, null, null };
        array[n2] = idp.numRows;
        array[n] = idp.numHotseatIcons;
        String s2 = String.format(english, "default_layout_%dx%d_h%s", array);
        int n3 = resources.getIdentifier(s2, "xml", s);
        if (n3 == 0) {
            Log.d("AutoInstalls", "Formatted layout: " + s2 + " not found. Trying layout without hosteat");
            final Locale english2 = Locale.ENGLISH;
            final String s3 = "default_layout_%dx%d";
            final Object[] array2 = new Object[n];
            array2[0] = idp.numColumns;
            array2[n2] = idp.numRows;
            s2 = String.format(english2, s3, array2);
            n3 = resources.getIdentifier(s2, "xml", s);
        }
        if (n3 == 0) {
            Log.d("AutoInstalls", "Formatted layout: " + s2 + " not found. Trying the default layout");
            n3 = resources.getIdentifier("default_layout", "xml", s);
        }
        if (n3 == 0) {
            Log.e("AutoInstalls", "Layout definition not found in package: " + s);
            return null;
        }
        return new AutoInstallsLayout(context, appWidgetHost, autoInstallsLayout$LayoutParserCallback, resources, n3, "workspace");
    }
    
    protected static int getAttributeResourceValue(final XmlResourceParser xmlResourceParser, final String s, final int n) {
        int n2 = xmlResourceParser.getAttributeResourceValue("http://schemas.android.com/apk/res-auto/com.android.launcher3", s, n);
        if (n2 == n) {
            n2 = xmlResourceParser.getAttributeResourceValue((String)null, s, n);
        }
        return n2;
    }
    
    protected static String getAttributeValue(final XmlResourceParser xmlResourceParser, final String s) {
        String s2 = xmlResourceParser.getAttributeValue("http://schemas.android.com/apk/res-auto/com.android.launcher3", s);
        if (s2 == null) {
            s2 = xmlResourceParser.getAttributeValue((String)null, s);
        }
        return s2;
    }
    
    protected long addShortcut(final String s, final Intent intent, final int n) {
        final int n2 = 1;
        final long generateNewItemId = this.mCallback.generateNewItemId();
        this.mValues.put("intent", intent.toUri(0));
        this.mValues.put("title", s);
        this.mValues.put("itemType", n);
        this.mValues.put("spanX", n2);
        this.mValues.put("spanY", n2);
        this.mValues.put("_id", generateNewItemId);
        if (this.mCallback.insertAndCheck(this.mDb, this.mValues) < 0L) {
            return -1;
        }
        return generateNewItemId;
    }
    
    protected HashMap getFolderElementsMap() {
        final HashMap<String, AutoInstallsLayout$AppShortcutParser> hashMap = new HashMap<String, AutoInstallsLayout$AppShortcutParser>();
        hashMap.put("appicon", new AutoInstallsLayout$AppShortcutParser(this));
        hashMap.put("autoinstall", (AutoInstallsLayout$AppShortcutParser)new AutoInstallsLayout$AutoInstallParser(this));
        hashMap.put("shortcut", (AutoInstallsLayout$AppShortcutParser)new AutoInstallsLayout$ShortcutParser(this, this.mSourceRes));
        return hashMap;
    }
    
    protected HashMap getLayoutElementsMap() {
        final HashMap<String, AutoInstallsLayout$AppShortcutParser> hashMap = new HashMap<String, AutoInstallsLayout$AppShortcutParser>();
        hashMap.put("appicon", new AutoInstallsLayout$AppShortcutParser(this));
        hashMap.put("autoinstall", (AutoInstallsLayout$AppShortcutParser)new AutoInstallsLayout$AutoInstallParser(this));
        hashMap.put("folder", (AutoInstallsLayout$AppShortcutParser)new AutoInstallsLayout$FolderParser(this));
        hashMap.put("appwidget", (AutoInstallsLayout$AppShortcutParser)new AutoInstallsLayout$PendingWidgetParser(this));
        hashMap.put("shortcut", (AutoInstallsLayout$AppShortcutParser)new AutoInstallsLayout$ShortcutParser(this, this.mSourceRes));
        return hashMap;
    }
    
    public int loadLayout(final SQLiteDatabase mDb, final ArrayList list) {
        this.mDb = mDb;
        try {
            return this.parseLayout(this.mLayoutId, list);
        }
        catch (Exception ex) {
            Log.e("AutoInstalls", "Error parsing layout: " + ex);
            return -1;
        }
    }
    
    protected int parseAndAddNode(final XmlResourceParser xmlResourceParser, final HashMap hashMap, final ArrayList list) {
        final int n = 1;
        if ("include".equals(xmlResourceParser.getName())) {
            final int attributeResourceValue = getAttributeResourceValue(xmlResourceParser, "workspace", 0);
            if (attributeResourceValue != 0) {
                return this.parseLayout(attributeResourceValue, list);
            }
            return 0;
        }
        else {
            this.mValues.clear();
            this.parseContainerAndScreen(xmlResourceParser, this.mTemp);
            final long n2 = this.mTemp[0];
            final long n3 = this.mTemp[n];
            this.mValues.put("container", n2);
            this.mValues.put("screen", n3);
            this.mValues.put("cellX", convertToDistanceFromEnd(getAttributeValue(xmlResourceParser, "x"), this.mColumnCount));
            this.mValues.put("cellY", convertToDistanceFromEnd(getAttributeValue(xmlResourceParser, "y"), this.mRowCount));
            final AutoInstallsLayout$TagParser autoInstallsLayout$TagParser = hashMap.get(xmlResourceParser.getName());
            if (autoInstallsLayout$TagParser == null) {
                return 0;
            }
            if (autoInstallsLayout$TagParser.parseAndAdd(xmlResourceParser) >= 0L) {
                if (!list.contains(n3) && n2 == -100) {
                    list.add(n3);
                }
                return n;
            }
            return 0;
        }
    }
    
    protected void parseContainerAndScreen(final XmlResourceParser xmlResourceParser, final long[] array) {
        final int n = 1;
        if (AutoInstallsLayout.HOTSEAT_CONTAINER_NAME.equals(getAttributeValue(xmlResourceParser, "container"))) {
            array[0] = -101;
            array[n] = Long.parseLong(getAttributeValue(xmlResourceParser, "rank"));
        }
        else {
            array[0] = -100;
            array[n] = Long.parseLong(getAttributeValue(xmlResourceParser, "screen"));
        }
    }
    
    protected int parseLayout(final int n, final ArrayList list) {
        final XmlResourceParser xml = this.mSourceRes.getXml(n);
        beginDocument((XmlPullParser)xml, this.mRootTag);
        final int depth = xml.getDepth();
        final HashMap layoutElementsMap = this.getLayoutElementsMap();
        int n2 = 0;
        while (true) {
            final int next = xml.next();
            if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                break;
            }
            if (next != 2) {
                continue;
            }
            n2 += this.parseAndAddNode(xml, layoutElementsMap, list);
        }
        return n2;
    }
}
