// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import java.util.Comparator;

final class InvariantDeviceProfile$1 implements Comparator
{
    final /* synthetic */ InvariantDeviceProfile this$0;
    final /* synthetic */ float val$height;
    final /* synthetic */ float val$width;
    
    InvariantDeviceProfile$1(final InvariantDeviceProfile this$0, final float val$width, final float val$height) {
        this.this$0 = this$0;
        this.val$width = val$width;
        this.val$height = val$height;
    }
    
    public int compare(final InvariantDeviceProfile invariantDeviceProfile, final InvariantDeviceProfile invariantDeviceProfile2) {
        return Float.compare(this.this$0.dist(this.val$width, this.val$height, invariantDeviceProfile.minWidthDps, invariantDeviceProfile.minHeightDps), this.this$0.dist(this.val$width, this.val$height, invariantDeviceProfile2.minWidthDps, invariantDeviceProfile2.minHeightDps));
    }
}
