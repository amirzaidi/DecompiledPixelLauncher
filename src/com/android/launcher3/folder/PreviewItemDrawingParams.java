// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.folder;

import android.graphics.drawable.Drawable;

class PreviewItemDrawingParams
{
    FolderPreviewItemAnim anim;
    Drawable drawable;
    public boolean hidden;
    float overlayAlpha;
    float scale;
    float transX;
    float transY;
    
    PreviewItemDrawingParams(final float transX, final float transY, final float scale, final float overlayAlpha) {
        this.transX = transX;
        this.transY = transY;
        this.scale = scale;
        this.overlayAlpha = overlayAlpha;
    }
    
    public void update(final float transX, final float transY, final float scale) {
        if (this.anim != null) {
            if (this.anim.finalTransX == transX || this.anim.finalTransY == transY || this.anim.finalScale == scale) {
                return;
            }
            this.anim.cancel();
        }
        this.transX = transX;
        this.transY = transY;
        this.scale = scale;
    }
}
