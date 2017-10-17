// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import java.util.Iterator;
import android.util.Pair;
import com.android.launcher3.compat.WallpaperColorsCompat;
import android.content.Context;
import com.android.launcher3.compat.WallpaperManagerCompat;
import java.util.ArrayList;
import com.android.launcher3.compat.WallpaperManagerCompat$OnColorsChangedListenerCompat;

public class WallpaperColorInfo implements WallpaperManagerCompat$OnColorsChangedListenerCompat
{
    private static WallpaperColorInfo sInstance;
    private static final Object sInstanceLock;
    private final ColorExtractionAlgorithm mExtractionType;
    private boolean mIsDark;
    private final ArrayList mListeners;
    private int mMainColor;
    private WallpaperColorInfo$OnThemeChangeListener mOnThemeChangeListener;
    private int mSecondaryColor;
    private boolean mSupportsDarkText;
    private final WallpaperManagerCompat mWallpaperManager;
    
    static {
        sInstanceLock = new Object();
    }
    
    private WallpaperColorInfo(final Context context) {
        this.mListeners = new ArrayList();
        (this.mWallpaperManager = WallpaperManagerCompat.getInstance(context)).addOnColorsChangedListener(this);
        this.mExtractionType = ColorExtractionAlgorithm.newInstance(context);
        this.update(this.mWallpaperManager.getWallpaperColors(1));
    }
    
    public static WallpaperColorInfo getInstance(final Context context) {
        synchronized (WallpaperColorInfo.sInstanceLock) {
            if (WallpaperColorInfo.sInstance == null) {
                WallpaperColorInfo.sInstance = new WallpaperColorInfo(context.getApplicationContext());
            }
            return WallpaperColorInfo.sInstance;
        }
    }
    
    private void update(final WallpaperColorsCompat wallpaperColorsCompat) {
        final boolean b = true;
        final int n = -1;
        boolean mIsDark = false;
        final Pair into = this.mExtractionType.extractInto(wallpaperColorsCompat);
        if (into != null) {
            this.mMainColor = (int)into.first;
            this.mSecondaryColor = (int)into.second;
        }
        else {
            this.mMainColor = n;
            this.mSecondaryColor = n;
        }
        this.mSupportsDarkText = (wallpaperColorsCompat != null && (wallpaperColorsCompat.getColorHints() & 0x1) > 0 && b);
        if (wallpaperColorsCompat != null && (wallpaperColorsCompat.getColorHints() & 0x2) > 0) {
            mIsDark = b;
        }
        this.mIsDark = mIsDark;
    }
    
    public void addOnChangeListener(final WallpaperColorInfo$OnChangeListener wallpaperColorInfo$OnChangeListener) {
        this.mListeners.add(wallpaperColorInfo$OnChangeListener);
    }
    
    public int getMainColor() {
        return this.mMainColor;
    }
    
    public int getSecondaryColor() {
        return this.mSecondaryColor;
    }
    
    public boolean isDark() {
        return this.mIsDark;
    }
    
    public void notifyChange(final boolean b) {
        if (b) {
            if (this.mOnThemeChangeListener != null) {
                this.mOnThemeChangeListener.onThemeChanged();
            }
        }
        else {
            final Iterator iterator = this.mListeners.iterator();
            while (iterator.hasNext()) {
                iterator.next().onExtractedColorsChanged(this);
            }
        }
    }
    
    public void onColorsChanged(final WallpaperColorsCompat wallpaperColorsCompat, final int n) {
        boolean b = true;
        if ((n & 0x1) != 0x0) {
            final boolean mIsDark = this.mIsDark;
            final boolean mSupportsDarkText = this.mSupportsDarkText;
            this.update(wallpaperColorsCompat);
            if (mIsDark == this.mIsDark && mSupportsDarkText == this.mSupportsDarkText) {
                b = false;
            }
            this.notifyChange(b);
        }
    }
    
    public void removeOnChangeListener(final WallpaperColorInfo$OnChangeListener wallpaperColorInfo$OnChangeListener) {
        this.mListeners.remove(wallpaperColorInfo$OnChangeListener);
    }
    
    public void setOnThemeChangeListener(final WallpaperColorInfo$OnThemeChangeListener mOnThemeChangeListener) {
        this.mOnThemeChangeListener = mOnThemeChangeListener;
    }
    
    public boolean supportsDarkText() {
        return this.mSupportsDarkText;
    }
}
