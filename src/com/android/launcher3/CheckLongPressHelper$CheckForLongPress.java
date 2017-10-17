// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

class CheckLongPressHelper$CheckForLongPress implements Runnable
{
    final /* synthetic */ CheckLongPressHelper this$0;
    
    CheckLongPressHelper$CheckForLongPress(final CheckLongPressHelper this$0) {
        this.this$0 = this$0;
    }
    
    public void run() {
        if (this.this$0.mView.getParent() != null && this.this$0.mView.hasWindowFocus() && (this.this$0.mHasPerformedLongPress ^ true)) {
            boolean b;
            if (this.this$0.mListener != null) {
                b = this.this$0.mListener.onLongClick(this.this$0.mView);
            }
            else {
                b = this.this$0.mView.performLongClick();
            }
            if (b) {
                this.this$0.mView.setPressed(false);
                this.this$0.mHasPerformedLongPress = true;
            }
        }
    }
}
