// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.shortcuts;

import android.animation.AnimatorSet;
import com.android.launcher3.anim.PropertyListBuilder;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import android.graphics.Rect;
import com.android.launcher3.LauncherAnimUtils;
import android.util.Log;
import android.view.MotionEvent;
import com.android.launcher3.AbstractFloatingView;
import com.android.launcher3.graphics.DragPreviewProvider;
import com.android.launcher3.DragSource;
import com.android.launcher3.dragndrop.DragOptions;
import java.util.Collections;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import java.util.Iterator;
import android.view.View$OnClickListener;
import com.android.launcher3.popup.PopupContainerWithArrow;
import com.android.launcher3.popup.SystemShortcut;
import com.android.launcher3.popup.PopupPopulator;
import com.android.launcher3.popup.SystemShortcut$Widgets;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.BubbleTextView;
import android.animation.ObjectAnimator;
import android.animation.Animator;
import android.view.ViewGroup;
import com.android.launcher3.popup.PopupPopulator$Item;
import android.view.View;
import java.util.ArrayList;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.Launcher;
import android.graphics.Point;
import java.util.List;
import android.widget.LinearLayout;
import com.android.launcher3.logging.UserEventDispatcher$LogContainerProvider;
import android.view.View$OnTouchListener;
import android.view.View$OnLongClickListener;
import com.android.launcher3.popup.PopupItemView;

public class ShortcutsItemView extends PopupItemView implements View$OnLongClickListener, View$OnTouchListener, UserEventDispatcher$LogContainerProvider
{
    private LinearLayout mContent;
    private final List mDeepShortcutViews;
    private int mHiddenShortcutsHeight;
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
        int n2 = 0;
        if (popupPopulator$Item == PopupPopulator$Item.SHORTCUT) {
            this.mDeepShortcutViews.add(view);
        }
        else {
            this.mSystemShortcutViews.add(view);
        }
        if (popupPopulator$Item == PopupPopulator$Item.SYSTEM_SHORTCUT_ICON) {
            if (this.mSystemShortcutIcons == null) {
                this.mSystemShortcutIcons = (LinearLayout)this.mLauncher.getLayoutInflater().inflate(2130968624, (ViewGroup)this.mContent, false);
                int n3;
                if (this.mShortcutsLayout.getChildCount() > 0) {
                    n3 = 1;
                }
                else {
                    n3 = 0;
                }
                final LinearLayout mContent = this.mContent;
                final LinearLayout mSystemShortcutIcons = this.mSystemShortcutIcons;
                if (n3 != 0) {
                    n2 = -1;
                }
                mContent.addView((View)mSystemShortcutIcons, n2);
            }
            this.mSystemShortcutIcons.addView(view, n);
        }
        else {
            if (this.mShortcutsLayout.getChildCount() > 0) {
                final View child = this.mShortcutsLayout.getChildAt(this.mShortcutsLayout.getChildCount() - 1);
                if (child instanceof DeepShortcutView) {
                    child.findViewById(2131624003).setVisibility(0);
                }
            }
            this.mShortcutsLayout.addView(view, n);
        }
    }
    
    private Animator translateYFrom(final View view, final int n) {
        final float translationY = view.getTranslationY();
        return (Animator)ObjectAnimator.ofFloat((Object)view, ShortcutsItemView.TRANSLATION_Y, new float[] { n + translationY, translationY });
    }
    
    public void addShortcutView(final View view, final PopupPopulator$Item popupPopulator$Item) {
        this.addShortcutView(view, popupPopulator$Item, -1);
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
    
    public List getDeepShortcutViews(final boolean b) {
        if (b) {
            Collections.reverse(this.mDeepShortcutViews);
        }
        return this.mDeepShortcutViews;
    }
    
    public int getHiddenShortcutsHeight() {
        return this.mHiddenShortcutsHeight;
    }
    
    public List getSystemShortcutViews(final boolean b) {
        if (b || this.mSystemShortcutIcons != null) {
            Collections.reverse(this.mSystemShortcutViews);
        }
        return this.mSystemShortcutViews;
    }
    
    public void hideShortcuts(final boolean b, final int n) {
        final int n2 = 8;
        this.mHiddenShortcutsHeight = (this.getResources().getDimensionPixelSize(2131427445) - this.mShortcutsLayout.getChildAt(0).getLayoutParams().height) * this.mShortcutsLayout.getChildCount();
        final int n3 = this.mShortcutsLayout.getChildCount() - n;
        if (n3 <= 0) {
            return;
        }
        final int childCount = this.mShortcutsLayout.getChildCount();
        int n4;
        if (b) {
            n4 = 1;
        }
        else {
            n4 = -1;
        }
        int n5;
        int n6;
        if (b) {
            n5 = n3;
            n6 = 0;
        }
        else {
            final int n7 = childCount - 1;
            n5 = n3;
            n6 = n7;
        }
        while (n6 >= 0 && n6 < childCount) {
            final View child = this.mShortcutsLayout.getChildAt(n6);
            if (child instanceof DeepShortcutView) {
                this.mHiddenShortcutsHeight += child.getLayoutParams().height;
                child.setVisibility(n2);
                final int n8 = n6 + n4;
                if (!b && n8 >= 0 && n8 < childCount) {
                    this.mShortcutsLayout.getChildAt(n8).findViewById(2131624003).setVisibility(n2);
                }
                --n5;
                if (n5 == 0) {
                    break;
                }
            }
            n6 += n4;
        }
    }
    
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mContent = (LinearLayout)this.findViewById(2131624048);
        this.mShortcutsLayout = (LinearLayout)this.findViewById(2131624049);
    }
    
    public boolean onLongClick(final View view) {
        if (!(view.getParent() instanceof DeepShortcutView)) {
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
    
    public Animator showAllShortcuts(final boolean b) {
        final int childCount = this.mShortcutsLayout.getChildCount();
        if (childCount == 0) {
            Log.w("ShortcutsItem", "Tried to show all shortcuts but there were no shortcuts to show");
            return null;
        }
        final int height = this.mShortcutsLayout.getChildAt(0).getLayoutParams().height;
        final int dimensionPixelSize = this.getResources().getDimensionPixelSize(2131427445);
        for (int i = 0; i < childCount; ++i) {
            final DeepShortcutView deepShortcutView = (DeepShortcutView)this.mShortcutsLayout.getChildAt(i);
            deepShortcutView.getLayoutParams().height = dimensionPixelSize;
            deepShortcutView.requestLayout();
            deepShortcutView.setVisibility(0);
            if (i < childCount - 1) {
                deepShortcutView.findViewById(2131624003).setVisibility(0);
            }
        }
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        if (b) {
            animatorSet.play(this.translateYFrom((View)this.mShortcutsLayout, -this.mHiddenShortcutsHeight));
        }
        else if (this.mSystemShortcutIcons != null) {
            animatorSet.play(this.translateYFrom((View)this.mSystemShortcutIcons, -this.mHiddenShortcutsHeight));
            final Rect rect = new Rect(this.mPillRect);
            final Rect rect2 = new Rect(this.mPillRect);
            rect2.bottom += this.mHiddenShortcutsHeight;
            animatorSet.play((Animator)new RoundedRectRevealOutlineProvider(this.getBackgroundRadius(), this.getBackgroundRadius(), rect, rect2, this.mRoundedCorners).createRevealAnimator((View)this, false));
        }
        for (int j = 0; j < childCount; ++j) {
            final DeepShortcutView deepShortcutView2 = (DeepShortcutView)this.mShortcutsLayout.getChildAt(j);
            final int n = dimensionPixelSize - height;
            int n2;
            if (b) {
                n2 = childCount - j - 1;
            }
            else {
                n2 = j;
            }
            int n3;
            if (b) {
                n3 = 1;
            }
            else {
                n3 = -1;
            }
            animatorSet.play(this.translateYFrom((View)deepShortcutView2, n2 * n * n3));
            animatorSet.play(this.translateYFrom((View)deepShortcutView2.getBubbleText(), n / 2 * n3));
            animatorSet.play(this.translateYFrom(deepShortcutView2.getIconView(), n3 * (n / 2)));
            animatorSet.play((Animator)LauncherAnimUtils.ofPropertyValuesHolder(deepShortcutView2.getIconView(), new PropertyListBuilder().scale(1.0f).build()));
        }
        return (Animator)animatorSet;
    }
}
