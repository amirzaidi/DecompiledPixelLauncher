// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.dragndrop;

import android.view.View;
import com.android.launcher3.DeviceProfile;
import android.graphics.Canvas;
import android.graphics.Bitmap$Config;
import android.view.View$MeasureSpec;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.graphics.Bitmap;
import com.android.launcher3.LauncherAppWidgetProviderInfo;
import com.android.launcher3.BaseActivity;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.RemoteViews;
import com.android.launcher3.widget.WidgetCell;

public class LivePreviewWidgetCell extends WidgetCell
{
    private RemoteViews mPreview;
    
    public LivePreviewWidgetCell(final Context context) {
        this(context, null);
    }
    
    public LivePreviewWidgetCell(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public LivePreviewWidgetCell(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
    }
    
    public static Bitmap generateFromRemoteViews(final BaseActivity baseActivity, final RemoteViews remoteViews, final LauncherAppWidgetProviderInfo launcherAppWidgetProviderInfo, int n, final int[] array) {
        while (true) {
            final DeviceProfile deviceProfile = baseActivity.getDeviceProfile();
            final int n2 = deviceProfile.cellWidthPx * launcherAppWidgetProviderInfo.spanX;
            final int n3 = deviceProfile.cellHeightPx * launcherAppWidgetProviderInfo.spanY;
            while (true) {
                int measuredWidth = 0;
                try {
                    final View apply = remoteViews.apply((Context)baseActivity, (ViewGroup)new FrameLayout((Context)baseActivity));
                    apply.measure(View$MeasureSpec.makeMeasureSpec(n2, 1073741824), View$MeasureSpec.makeMeasureSpec(n3, 1073741824));
                    measuredWidth = apply.getMeasuredWidth();
                    try {
                        int measuredHeight = apply.getMeasuredHeight();
                        apply.layout(0, 0, measuredWidth, measuredHeight);
                        array[0] = measuredWidth;
                        if (measuredWidth > n) {
                            final float n4 = n / measuredWidth;
                            measuredHeight *= (int)n4;
                            final Bitmap bitmap = Bitmap.createBitmap(n, measuredHeight, Bitmap$Config.ARGB_8888);
                            final Canvas canvas = new Canvas(bitmap);
                            canvas.scale(n4, n4);
                            apply.draw(canvas);
                            canvas.setBitmap((Bitmap)null);
                            return bitmap;
                        }
                    }
                    catch (Exception ex) {
                        return null;
                    }
                }
                catch (Exception ex2) {}
                final float n5 = 1.0f;
                n = measuredWidth;
                final float n4 = n5;
                continue;
            }
        }
    }
    
    public void ensurePreview() {
        if (this.mPreview != null && this.mActiveRequest == null) {
            final Bitmap generateFromRemoteViews = generateFromRemoteViews(this.mActivity, this.mPreview, this.mItem.widgetInfo, this.mPresetPreviewSize, new int[1]);
            if (generateFromRemoteViews != null) {
                this.applyPreview(generateFromRemoteViews);
                return;
            }
        }
        super.ensurePreview();
    }
    
    public void setPreview(final RemoteViews mPreview) {
        this.mPreview = mPreview;
    }
}
