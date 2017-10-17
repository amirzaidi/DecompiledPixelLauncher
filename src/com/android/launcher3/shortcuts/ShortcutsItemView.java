// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.shortcuts;

import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.DragSource;
import com.android.launcher3.dragndrop.DragOptions;
import java.util.Collections;
import android.support.v4.c.a;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import java.util.Iterator;
import android.view.View$OnClickListener;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.popup.PopupPopulator;
import com.android.launcher3.popup.SystemShortcut$Widgets;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.BubbleTextView;
import android.animation.AnimatorSet;
import com.android.launcher3.anim.PropertyListBuilder;
import com.android.launcher3.LauncherAnimUtils;
import android.animation.Animator;
import android.view.ViewGroup;
import com.android.launcher3.popup.PopupPopulator$Item;
import android.view.View;
import java.util.ArrayList;
import android.util.AttributeSet;
import android.content.Context;
import android.widget.LinearLayout;
import com.android.launcher3.Launcher;
import android.graphics.Point;
import java.util.List;
import com.android.launcher3.logging.UserEventDispatcher$LogContainerProvider;
import android.view.View$OnTouchListener;
import android.view.View$OnLongClickListener;
import com.android.launcher3.popup.PopupItemView;

public class ShortcutsItemView extends PopupItemView implements View$OnLongClickListener, View$OnTouchListener, UserEventDispatcher$LogContainerProvider
{
    private final List mDeepShortcutViews;
    private final Point mIconLastTouchPos;
    private final Point mIconShift;
    private Launcher mLauncher;
    private LinearLayout mShortcutsLayout;
    private LinearLayout mSystemShortcutIcons;
    private final List mSystemShortcutViews;
    
    public ShortcutsItemView(final Context context) {
        this(context, null, 0);
    }
    
    public ShortcutsItemView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public ShortcutsItemView(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mIconShift = new Point();
        this.mIconLastTouchPos = new Point();
        this.mDeepShortcutViews = new ArrayList();
        this.mSystemShortcutViews = new ArrayList();
        this.mLauncher = Launcher.getLauncher(context);
    }
    
    private void addShortcutView(final View view, final PopupPopulator$Item popupPopulator$Item, final int n) {
        if (popupPopulator$Item == PopupPopulator$Item.SHORTCUT) {
            this.mDeepShortcutViews.add(view);
        }
        else {
            this.mSystemShortcutViews.add(view);
        }
        if (popupPopulator$Item == PopupPopulator$Item.SYSTEM_SHORTCUT_ICON) {
            if (this.mSystemShortcutIcons == null) {
                this.mSystemShortcutIcons = (LinearLayout)this.mLauncher.getLayoutInflater().inflate(2130968622, (ViewGroup)this.mShortcutsLayout, false);
                this.mShortcutsLayout.addView((View)this.mSystemShortcutIcons, 0);
            }
            this.mSystemShortcutIcons.addView(view, n);
        }
        else {
            if (this.mShortcutsLayout.getChildCount() > 0) {
                final View child = this.mShortcutsLayout.getChildAt(this.mShortcutsLayout.getChildCount() - 1);
                if (child instanceof DeepShortcutView) {
                    child.findViewById(2131623995).setVisibility(0);
                }
            }
            this.mShortcutsLayout.addView(view, n);
        }
    }
    
    public void addShortcutView(final View view, final PopupPopulator$Item popupPopulator$Item) {
        this.addShortcutView(view, popupPopulator$Item, -1);
    }
    
    public Animator createCloseAnimation(final boolean b, final boolean b2, final long n) {
        final float n2 = 1.0f;
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        animatorSet.play(super.createCloseAnimation(b, b2, n));
        for (int i = 0; i < this.mShortcutsLayout.getChildCount(); ++i) {
            if (this.mShortcutsLayout.getChildAt(i) instanceof DeepShortcutView) {
                final View iconView = ((DeepShortcutView)this.mShortcutsLayout.getChildAt(i)).getIconView();
                iconView.setScaleX(n2);
                iconView.setScaleY(n2);
                animatorSet.play((Animator)LauncherAnimUtils.ofPropertyValuesHolder(iconView, new PropertyListBuilder().scale(0.0f).build()));
            }
        }
        return (Animator)animatorSet;
    }
    
    public Animator createOpenAnimation(final boolean b, final boolean b2) {
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        animatorSet.play(super.createOpenAnimation(b, b2));
        for (int i = 0; i < this.mShortcutsLayout.getChildCount(); ++i) {
            if (this.mShortcutsLayout.getChildAt(i) instanceof DeepShortcutView) {
                final View iconView = ((DeepShortcutView)this.mShortcutsLayout.getChildAt(i)).getIconView();
                iconView.setScaleX(0.0f);
                iconView.setScaleY(0.0f);
                animatorSet.play((Animator)LauncherAnimUtils.ofPropertyValuesHolder(iconView, new PropertyListBuilder().scale(1.0f).build()));
            }
        }
        return (Animator)animatorSet;
    }
    
    public void enableWidgetsIfExist(final BubbleTextView bubbleTextView) {
        final ItemInfo itemInfo = (ItemInfo)bubbleTextView.getTag();
        final SystemShortcut$Widgets systemShortcut$Widgets = new SystemShortcut$Widgets();
        final View$OnClickListener onClickListener = systemShortcut$Widgets.getOnClickListener(this.mLauncher, itemInfo);
        while (true) {
            for (final View view : this.mSystemShortcutViews) {
                if (view.getTag() instanceof SystemShortcut$Widgets) {
                    PopupPopulator$Item popupPopulator$Item;
                    if (this.mSystemShortcutIcons == null) {
                        popupPopulator$Item = PopupPopulator$Item.SYSTEM_SHORTCUT;
                    }
                    else {
                        popupPopulator$Item = PopupPopulator$Item.SYSTEM_SHORTCUT_ICON;
                    }
                    if (onClickListener != null && view == null) {
                        final View inflate = this.mLauncher.getLayoutInflater().inflate(popupPopulator$Item.layoutId, (ViewGroup)this, false);
                        PopupPopulator.initializeSystemShortcut(this.getContext(), inflate, systemShortcut$Widgets);
                        inflate.setOnClickListener(onClickListener);
                        if (popupPopulator$Item == PopupPopulator$Item.SYSTEM_SHORTCUT_ICON) {
                            this.addShortcutView(inflate, popupPopulator$Item, 0);
                        }
                        else {
                            ((PopupContainerWithArrow)this.getParent()).close(false);
                            PopupContainerWithArrow.showForIcon(bubbleTextView);
                        }
                    }
                    else if (onClickListener == null && view != null) {
                        if (popupPopulator$Item == PopupPopulator$Item.SYSTEM_SHORTCUT_ICON) {
                            this.mSystemShortcutViews.remove(view);
                            this.mSystemShortcutIcons.removeView(view);
                        }
                        else {
                            ((PopupContainerWithArrow)this.getParent()).close(false);
                            PopupContainerWithArrow.showForIcon(bubbleTextView);
                        }
                    }
                    return;
                }
            }
            View view = null;
            continue;
        }
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target.itemType = 5;
        launcherLogProto$Target.rank = itemInfo.rank;
        launcherLogProto$Target2.containerType = 9;
    }
    
    public int getArrowColor(final boolean b) {
        final Context context = this.getContext();
        int n;
        if (b || this.mSystemShortcutIcons == null) {
            n = 2131361824;
        }
        else {
            n = 2131361823;
        }
        return a.arj(context, n);
    }
    
    public List getDeepShortcutViews(final boolean b) {
        if (b) {
            Collections.reverse(this.mDeepShortcutViews);
        }
        return this.mDeepShortcutViews;
    }
    
    public List getSystemShortcutViews(final boolean b) {
        if (b || this.mSystemShortcutIcons != null) {
            Collections.reverse(this.mSystemShortcutViews);
        }
        return this.mSystemShortcutViews;
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mShortcutsLayout = (LinearLayout)this.findViewById(2131624037);
    }
    
    public boolean onLongClick(final View view) {
        if (!view.isInTouchMode() || (view.getParent() instanceof DeepShortcutView ^ true)) {
            return false;
        }
        if (!this.mLauncher.isDraggingEnabled()) {
            return false;
        }
        if (this.mLauncher.getDragController().isDragging()) {
            return false;
        }
        final DeepShortcutView deepShortcutView = (DeepShortcutView)view.getParent();
        deepShortcutView.setWillDrawIcon(false);
        this.mIconShift.x = this.mIconLastTouchPos.x - deepShortcutView.getIconCenter().x;
        this.mIconShift.y = this.mIconLastTouchPos.y - this.mLauncher.getDeviceProfile().iconSizePx;
        this.mLauncher.getWorkspace().beginDragShared(deepShortcutView.getIconView(), (DragSource)this.getParent(), deepShortcutView.getFinalInfo(), new ShortcutDragPreviewProvider(deepShortcutView.getIconView(), this.mIconShift), new DragOptions()).animateShift(-this.mIconShift.x, -this.mIconShift.y);
        AbstractFloatingView.closeOpenContainer(this.mLauncher, 1);
        return false;
    }
    
    public boolean onTouch(final View view, final MotionEvent motionEvent) {
        switch (motionEvent.getAction()) {
            case 0:
            case 2: {
                this.mIconLastTouchPos.set((int)motionEvent.getX(), (int)motionEvent.getY());
                break;
            }
        }
        return false;
    }
}
