// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.content.res.XmlResourceParser;
import org.xmlpull.v1.XmlPullParserException;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import android.util.Xml;
import java.util.Comparator;
import java.util.List;
import java.util.Collections;
import java.util.ArrayList;
import android.view.Display;
import android.util.DisplayMetrics;
import android.view.WindowManager;
import android.content.Context;
import android.graphics.Point;

public class InvariantDeviceProfile
{
    private static float DEFAULT_ICON_SIZE_DP;
    private static float KNEARESTNEIGHBOR;
    private static float WEIGHT_EFFICIENT;
    private static float WEIGHT_POWER;
    int defaultLayoutId;
    public Point defaultWallpaperSize;
    public int fillResIconDpi;
    public int iconBitmapSize;
    public float iconSize;
    public float iconTextSize;
    public float landscapeIconSize;
    public DeviceProfile landscapeProfile;
    int minAllAppsPredictionColumns;
    float minHeightDps;
    float minWidthDps;
    String name;
    public int numColumns;
    public int numFolderColumns;
    public int numFolderRows;
    public int numHotseatIcons;
    public int numRows;
    public DeviceProfile portraitProfile;
    
    static {
        InvariantDeviceProfile.DEFAULT_ICON_SIZE_DP = 60.0f;
        InvariantDeviceProfile.KNEARESTNEIGHBOR = 3.0f;
        InvariantDeviceProfile.WEIGHT_POWER = 5.0f;
        InvariantDeviceProfile.WEIGHT_EFFICIENT = 100000.0f;
    }
    
    public InvariantDeviceProfile() {
    }
    
    InvariantDeviceProfile(final Context context) {
        final Display defaultDisplay = ((WindowManager)context.getSystemService("window")).getDefaultDisplay();
        final DisplayMetrics displayMetrics = new DisplayMetrics();
        defaultDisplay.getMetrics(displayMetrics);
        final Point point = new Point();
        final Point point2 = new Point();
        defaultDisplay.getCurrentSizeRange(point, point2);
        this.minWidthDps = Utilities.dpiFromPx(Math.min(point.x, point.y), displayMetrics);
        this.minHeightDps = Utilities.dpiFromPx(Math.min(point2.x, point2.y), displayMetrics);
        final ArrayList closestDeviceProfiles = this.findClosestDeviceProfiles(this.minWidthDps, this.minHeightDps, this.getPredefinedDeviceProfiles(context));
        final InvariantDeviceProfile invDistWeightedInterpolate = this.invDistWeightedInterpolate(this.minWidthDps, this.minHeightDps, closestDeviceProfiles);
        final InvariantDeviceProfile invariantDeviceProfile = closestDeviceProfiles.get(0);
        this.numRows = invariantDeviceProfile.numRows;
        this.numColumns = invariantDeviceProfile.numColumns;
        this.numHotseatIcons = invariantDeviceProfile.numHotseatIcons;
        this.defaultLayoutId = invariantDeviceProfile.defaultLayoutId;
        this.numFolderRows = invariantDeviceProfile.numFolderRows;
        this.numFolderColumns = invariantDeviceProfile.numFolderColumns;
        this.minAllAppsPredictionColumns = invariantDeviceProfile.minAllAppsPredictionColumns;
        this.iconSize = invDistWeightedInterpolate.iconSize;
        this.landscapeIconSize = invDistWeightedInterpolate.landscapeIconSize;
        this.iconBitmapSize = Utilities.pxFromDp(this.iconSize, displayMetrics);
        this.iconTextSize = invDistWeightedInterpolate.iconTextSize;
        this.fillResIconDpi = this.getLauncherIconDensity(this.iconBitmapSize);
        this.applyPartnerDeviceProfileOverrides(context, displayMetrics);
        final Point point3 = new Point();
        defaultDisplay.getRealSize(point3);
        final int min = Math.min(point3.x, point3.y);
        final int max = Math.max(point3.x, point3.y);
        this.landscapeProfile = new DeviceProfile(context, this, point, point2, max, min, true);
        this.portraitProfile = new DeviceProfile(context, this, point, point2, min, max, false);
        if (context.getResources().getConfiguration().smallestScreenWidthDp >= 720) {
            this.defaultWallpaperSize = new Point((int)(max * wallpaperTravelToScreenWidthRatio(max, min)), max);
        }
        else {
            this.defaultWallpaperSize = new Point(Math.max(min * 2, max), max);
        }
    }
    
    public InvariantDeviceProfile(final InvariantDeviceProfile invariantDeviceProfile) {
        this(invariantDeviceProfile.name, invariantDeviceProfile.minWidthDps, invariantDeviceProfile.minHeightDps, invariantDeviceProfile.numRows, invariantDeviceProfile.numColumns, invariantDeviceProfile.numFolderRows, invariantDeviceProfile.numFolderColumns, invariantDeviceProfile.minAllAppsPredictionColumns, invariantDeviceProfile.iconSize, invariantDeviceProfile.landscapeIconSize, invariantDeviceProfile.iconTextSize, invariantDeviceProfile.numHotseatIcons, invariantDeviceProfile.defaultLayoutId);
    }
    
    InvariantDeviceProfile(final String name, final float minWidthDps, final float minHeightDps, final int numRows, final int numColumns, final int numFolderRows, final int numFolderColumns, final int minAllAppsPredictionColumns, final float iconSize, final float landscapeIconSize, final float iconTextSize, final int numHotseatIcons, final int defaultLayoutId) {
        this.name = name;
        this.minWidthDps = minWidthDps;
        this.minHeightDps = minHeightDps;
        this.numRows = numRows;
        this.numColumns = numColumns;
        this.numFolderRows = numFolderRows;
        this.numFolderColumns = numFolderColumns;
        this.minAllAppsPredictionColumns = minAllAppsPredictionColumns;
        this.iconSize = iconSize;
        this.landscapeIconSize = landscapeIconSize;
        this.iconTextSize = iconTextSize;
        this.numHotseatIcons = numHotseatIcons;
        this.defaultLayoutId = defaultLayoutId;
    }
    
    private void add(final InvariantDeviceProfile invariantDeviceProfile) {
        this.iconSize += invariantDeviceProfile.iconSize;
        this.landscapeIconSize += invariantDeviceProfile.landscapeIconSize;
        this.iconTextSize += invariantDeviceProfile.iconTextSize;
    }
    
    private void applyPartnerDeviceProfileOverrides(final Context context, final DisplayMetrics displayMetrics) {
        final Partner value = Partner.get(context.getPackageManager());
        if (value != null) {
            value.applyInvariantDeviceProfileOverrides(this, displayMetrics);
        }
    }
    
    private int getLauncherIconDensity(final int n) {
        final int[] array2;
        final int[] array = array2 = new int[7];
        array2[0] = 120;
        array2[1] = 160;
        array2[2] = 213;
        array2[3] = 240;
        array2[4] = 320;
        array2[5] = 480;
        array2[6] = 640;
        final int n2 = array.length - 1;
        int n3 = 640;
        for (int i = n2; i >= 0; --i) {
            if (array[i] * 48.0f / 160.0f >= n) {
                n3 = array[i];
            }
        }
        return n3;
    }
    
    private InvariantDeviceProfile multiply(final float n) {
        this.iconSize *= n;
        this.landscapeIconSize *= n;
        this.iconTextSize *= n;
        return this;
    }
    
    private static float wallpaperTravelToScreenWidthRatio(final int n, final int n2) {
        return n / n2 * 0.30769226f + 1.0076923f;
    }
    
    private float weight(final float n, final float n2, final float n3, final float n4, final float n5) {
        final float dist = this.dist(n, n2, n3, n4);
        if (Float.compare(dist, 0.0f) == 0) {
            return 1.0f / 0.0f;
        }
        return (float)(InvariantDeviceProfile.WEIGHT_EFFICIENT / Math.pow(dist, n5));
    }
    
    float dist(final float n, final float n2, final float n3, final float n4) {
        return (float)Math.hypot(n3 - n, n4 - n2);
    }
    
    ArrayList findClosestDeviceProfiles(final float n, final float n2, final ArrayList list) {
        Collections.sort((List<Object>)list, new InvariantDeviceProfile$1(this, n, n2));
        return list;
    }
    
    public int getAllAppsButtonRank() {
        return this.numHotseatIcons / 2;
    }
    
    public DeviceProfile getDeviceProfile(final Context context) {
        DeviceProfile deviceProfile;
        if (context.getResources().getConfiguration().orientation == 2) {
            deviceProfile = this.landscapeProfile;
        }
        else {
            deviceProfile = this.portraitProfile;
        }
        return deviceProfile;
    }
    
    ArrayList getPredefinedDeviceProfiles(final Context context) {
        final ArrayList<InvariantDeviceProfile> list = new ArrayList<InvariantDeviceProfile>();
        final Object o = null;
        Object o2 = null;
        while (true) {
            try {
                final XmlResourceParser xml = context.getResources().getXml(2131230725);
                Label_0493: {
                    try {
                        final int depth = xml.getDepth();
                        while (true) {
                            final int next = xml.next();
                            if ((next == 3 && xml.getDepth() <= depth) || next == 1) {
                                break Label_0493;
                            }
                            if (next != 2) {
                                continue;
                            }
                            final String s = "profile";
                            o2 = xml.getName();
                            if (!s.equals(o2)) {
                                continue;
                            }
                            final AttributeSet attributeSet = Xml.asAttributeSet((XmlPullParser)xml);
                            o2 = R$styleable.InvariantDeviceProfile;
                            final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, (int[])o2);
                            final int n = 3;
                            o2 = null;
                            final int int1 = obtainStyledAttributes.getInt(n, 0);
                            final int n2 = 4;
                            o2 = null;
                            final int int2 = obtainStyledAttributes.getInt(n2, 0);
                            final float float1 = obtainStyledAttributes.getFloat(9, 0.0f);
                            o2 = null;
                            o2 = obtainStyledAttributes.getString(0);
                            list.add(new InvariantDeviceProfile((String)o2, obtainStyledAttributes.getFloat(1, 0.0f), obtainStyledAttributes.getFloat(2, 0.0f), int1, int2, obtainStyledAttributes.getInt(5, int1), obtainStyledAttributes.getInt(6, int2), obtainStyledAttributes.getInt(7, int2), float1, obtainStyledAttributes.getFloat(10, float1), obtainStyledAttributes.getFloat(11, 0.0f), obtainStyledAttributes.getInt(8, int2), obtainStyledAttributes.getResourceId(12, 0)));
                            obtainStyledAttributes.recycle();
                        }
                    }
                    finally {
                        o2 = xml;
                    }
                    try {
                        throw;
                    }
                    finally {
                        final String s2 = (String)o2;
                        Throwable t = null;
                        o2 = t;
                        final String s3;
                        t = (Throwable)s3;
                        while (true) {
                            if (s2 == null) {
                                break Label_0468;
                            }
                            try {
                                ((XmlResourceParser)s2).close();
                                if (o2 != null) {
                                    try {
                                        throw o2;
                                    }
                                    catch (IOException | XmlPullParserException ex) {
                                        final String s4;
                                        t = (Throwable)s4;
                                        o2 = new RuntimeException(t);
                                        throw o2;
                                    }
                                    Label_0505: {
                                        if (xml == null) {
                                            break Label_0505;
                                        }
                                        try {
                                            xml.close();
                                            if (o != null) {
                                                throw o;
                                            }
                                            return list;
                                        }
                                        finally {}
                                    }
                                }
                            }
                            finally {
                                final Throwable t2;
                                if (o2 == null) {
                                    o2 = t2;
                                    continue;
                                }
                                if (o2 != t2) {
                                    ((Throwable)o2).addSuppressed(t2);
                                }
                                continue;
                            }
                            break;
                        }
                    }
                }
                return list;
            }
            finally {
                continue;
            }
            break;
        }
    }
    
    InvariantDeviceProfile invDistWeightedInterpolate(final float n, final float n2, final ArrayList list) {
        final InvariantDeviceProfile invariantDeviceProfile = list.get(0);
        if (this.dist(n, n2, invariantDeviceProfile.minWidthDps, invariantDeviceProfile.minHeightDps) == 0.0f) {
            return invariantDeviceProfile;
        }
        final InvariantDeviceProfile invariantDeviceProfile2 = new InvariantDeviceProfile();
        int n3 = 0;
        float n4 = 0.0f;
        while (n3 < list.size() && n3 < InvariantDeviceProfile.KNEARESTNEIGHBOR) {
            final InvariantDeviceProfile invariantDeviceProfile3 = new InvariantDeviceProfile(list.get(n3));
            final float weight = this.weight(n, n2, invariantDeviceProfile3.minWidthDps, invariantDeviceProfile3.minHeightDps, InvariantDeviceProfile.WEIGHT_POWER);
            final float n5 = n4 + weight;
            invariantDeviceProfile2.add(invariantDeviceProfile3.multiply(weight));
            ++n3;
            n4 = n5;
        }
        return invariantDeviceProfile2.multiply(1.0f / n4);
    }
    
    public boolean isAllAppsButtonRank(final int n) {
        return n == this.getAllAppsButtonRank();
    }
}
