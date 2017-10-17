// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.allapps;

import com.android.launcher3.PromiseAppInfo;
import com.android.launcher3.BubbleTextView;
import android.os.UserHandle;
import com.android.launcher3.util.PackageUserKey;
import java.util.Set;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.InsetDrawable;
import com.android.launcher3.Utilities;
import android.view.MotionEvent;
import android.view.ViewGroup$LayoutParams;
import android.view.ViewGroup$MarginLayoutParams;
import android.graphics.Rect;
import com.android.launcher3.dragndrop.DragController;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.dragndrop.DragController$DragListener;
import android.graphics.drawable.Drawable;
import android.support.v7.widget.o;
import com.android.launcher3.keyboard.FocusedItemDecorator;
import com.android.launcher3.config.FeatureFlags;
import android.support.v7.widget.b;
import android.support.v7.widget.q;
import android.support.v7.widget.p;
import com.android.launcher3.folder.Folder;
import com.android.launcher3.DeleteDropTarget;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.DeviceProfile;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.ItemInfo;
import android.view.KeyEvent;
import java.util.List;
import android.text.Spannable;
import android.text.Selection;
import android.view.View$OnClickListener;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.anim.SpringAnimationHandler;
import android.text.SpannableStringBuilder;
import android.support.v7.widget.N;
import com.android.launcher3.Launcher;
import com.android.launcher3.Insettable;
import android.view.View$OnLongClickListener;
import com.android.launcher3.DragSource;
import com.android.launcher3.BaseContainerView;
import android.view.View;
import android.view.View$OnFocusChangeListener;

final class AllAppsContainerView$1 implements View$OnFocusChangeListener
{
    final /* synthetic */ AllAppsContainerView this$0;
    
    AllAppsContainerView$1(final AllAppsContainerView this$0) {
        this.this$0 = this$0;
    }
    
    public void onFocusChange(final View view, final boolean b) {
        if (b) {
            this.this$0.mAppsRecyclerView.requestFocus();
        }
    }
}
