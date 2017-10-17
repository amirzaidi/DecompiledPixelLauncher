// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.compat;

public class WallpaperColorsCompat
{
    public static final int HINT_SUPPORTS_DARK_TEXT = 1;
    public static final int HINT_SUPPORTS_DARK_THEME = 2;
    private final int mColorHints;
    private final int mPrimaryColor;
    private final int mSecondaryColor;
    private final int mTertiaryColor;
    
    public WallpaperColorsCompat(final int mPrimaryColor, final int mSecondaryColor, final int mTertiaryColor, final int mColorHints) {
        this.mPrimaryColor = mPrimaryColor;
        this.mSecondaryColor = mSecondaryColor;
        this.mTertiaryColor = mTertiaryColor;
        this.mColorHints = mColorHints;
    }
    
    public int getColorHints() {
        return this.mColorHints;
    }
    
    public int getPrimaryColor() {
        return this.mPrimaryColor;
    }
    
    public int getSecondaryColor() {
        return this.mSecondaryColor;
    }
    
    public int getTertiaryColor() {
        return this.mTertiaryColor;
    }
}
