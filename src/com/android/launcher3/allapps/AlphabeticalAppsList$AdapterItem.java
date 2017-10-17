// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.AppInfo;

public class AlphabeticalAppsList$AdapterItem
{
    public int appIndex;
    public AppInfo appInfo;
    public int position;
    public int rowAppIndex;
    public int rowIndex;
    public String sectionName;
    public int viewType;
    
    public AlphabeticalAppsList$AdapterItem() {
        this.sectionName = null;
        this.appInfo = null;
        this.appIndex = -1;
    }
    
    public static AlphabeticalAppsList$AdapterItem asApp(final int position, final String sectionName, final AppInfo appInfo, final int appIndex) {
        final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = new AlphabeticalAppsList$AdapterItem();
        alphabeticalAppsList$AdapterItem.viewType = 2;
        alphabeticalAppsList$AdapterItem.position = position;
        alphabeticalAppsList$AdapterItem.sectionName = sectionName;
        alphabeticalAppsList$AdapterItem.appInfo = appInfo;
        alphabeticalAppsList$AdapterItem.appIndex = appIndex;
        return alphabeticalAppsList$AdapterItem;
    }
    
    public static AlphabeticalAppsList$AdapterItem asDiscoveryItem(final int position, final String sectionName, final AppInfo appInfo, final int appIndex) {
        final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = new AlphabeticalAppsList$AdapterItem();
        alphabeticalAppsList$AdapterItem.viewType = 512;
        alphabeticalAppsList$AdapterItem.position = position;
        alphabeticalAppsList$AdapterItem.sectionName = sectionName;
        alphabeticalAppsList$AdapterItem.appInfo = appInfo;
        alphabeticalAppsList$AdapterItem.appIndex = appIndex;
        return alphabeticalAppsList$AdapterItem;
    }
    
    public static AlphabeticalAppsList$AdapterItem asEmptySearch(final int position) {
        final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = new AlphabeticalAppsList$AdapterItem();
        alphabeticalAppsList$AdapterItem.viewType = 8;
        alphabeticalAppsList$AdapterItem.position = position;
        return alphabeticalAppsList$AdapterItem;
    }
    
    public static AlphabeticalAppsList$AdapterItem asLoadingDivider(final int position) {
        final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = new AlphabeticalAppsList$AdapterItem();
        alphabeticalAppsList$AdapterItem.viewType = 256;
        alphabeticalAppsList$AdapterItem.position = position;
        return alphabeticalAppsList$AdapterItem;
    }
    
    public static AlphabeticalAppsList$AdapterItem asMarketDivider(final int position) {
        final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = new AlphabeticalAppsList$AdapterItem();
        alphabeticalAppsList$AdapterItem.viewType = 32;
        alphabeticalAppsList$AdapterItem.position = position;
        return alphabeticalAppsList$AdapterItem;
    }
    
    public static AlphabeticalAppsList$AdapterItem asMarketSearch(final int position) {
        final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = new AlphabeticalAppsList$AdapterItem();
        alphabeticalAppsList$AdapterItem.viewType = 16;
        alphabeticalAppsList$AdapterItem.position = position;
        return alphabeticalAppsList$AdapterItem;
    }
    
    public static AlphabeticalAppsList$AdapterItem asPredictedApp(final int n, final String s, final AppInfo appInfo, final int n2) {
        final AlphabeticalAppsList$AdapterItem app = asApp(n, s, appInfo, n2);
        app.viewType = 4;
        return app;
    }
    
    public static AlphabeticalAppsList$AdapterItem asPredictionDivider(final int position) {
        final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = new AlphabeticalAppsList$AdapterItem();
        alphabeticalAppsList$AdapterItem.viewType = 128;
        alphabeticalAppsList$AdapterItem.position = position;
        return alphabeticalAppsList$AdapterItem;
    }
    
    public static AlphabeticalAppsList$AdapterItem asSearchDivider(final int position) {
        final AlphabeticalAppsList$AdapterItem alphabeticalAppsList$AdapterItem = new AlphabeticalAppsList$AdapterItem();
        alphabeticalAppsList$AdapterItem.viewType = 64;
        alphabeticalAppsList$AdapterItem.position = position;
        return alphabeticalAppsList$AdapterItem;
    }
}
