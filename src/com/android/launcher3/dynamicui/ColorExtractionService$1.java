// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dynamicui;

import android.os.HandlerThread;
import android.os.Handler;
import android.app.job.JobService;
import com.android.launcher3.LauncherSettings$Settings;
import android.os.Bundle;
import android.support.v7.a.a;
import android.content.Context;
import android.app.WallpaperManager;
import android.app.job.JobParameters;

final class ColorExtractionService$1 implements Runnable
{
    final /* synthetic */ ColorExtractionService this$0;
    final /* synthetic */ JobParameters val$jobParameters;
    
    ColorExtractionService$1(final ColorExtractionService this$0, final JobParameters val$jobParameters) {
        this.this$0 = this$0;
        this.val$jobParameters = val$jobParameters;
    }
    
    public void run() {
        final WallpaperManager instance = WallpaperManager.getInstance((Context)this.this$0);
        final int wallpaperId = ExtractionUtils.getWallpaperId(instance);
        final ExtractedColors extractedColors = new ExtractedColors();
        if (instance.getWallpaperInfo() != null) {
            extractedColors.updateHotseatPalette(null);
            extractedColors.updateWallpaperThemePalette(null);
        }
        else {
            extractedColors.updateHotseatPalette(this.this$0.getHotseatPalette());
            extractedColors.updateWallpaperThemePalette(this.this$0.getWallpaperPalette());
        }
        final String encodeAsString = extractedColors.encodeAsString();
        final Bundle bundle = new Bundle();
        bundle.putInt("extra_wallpaperId", wallpaperId);
        bundle.putString("extra_extractedColors", encodeAsString);
        this.this$0.getContentResolver().call(LauncherSettings$Settings.CONTENT_URI, "set_extracted_colors_and_wallpaper_id_setting", (String)null, bundle);
        this.this$0.jobFinished(this.val$jobParameters, false);
    }
}
