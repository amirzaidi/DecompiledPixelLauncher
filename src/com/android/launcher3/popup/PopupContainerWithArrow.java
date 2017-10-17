// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import java.util.Set;
import com.android.launcher3.notification.NotificationKeyData;
import android.animation.ValueAnimator$AnimatorUpdateListener;
import android.animation.ValueAnimator;
import com.android.launcher3.util.PackageUserKey;
import java.util.Map;
import com.android.launcher3.anim.PropertyResetListener;
import android.os.Looper;
import android.os.Handler;
import com.android.launcher3.LauncherModel;
import java.util.Collections;
import android.view.ViewConfiguration;
import android.view.MotionEvent;
import com.android.launcher3.dragndrop.DragOptions;
import com.android.launcher3.DropTarget$DragObject;
import com.android.launcher3.userevent.nano.LauncherLogProto$Target;
import com.android.launcher3.dragndrop.DragOptions$PreDragCondition;
import com.android.launcher3.graphics.IconPalette;
import com.android.launcher3.badge.BadgeInfo;
import com.android.launcher3.FastBitmapDrawable;
import java.util.List;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.anim.PropertyListBuilder;
import android.util.Property;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.Animator$AnimatorListener;
import android.view.animation.DecelerateInterpolator;
import com.android.launcher3.LogAccelerateInterpolator;
import com.android.launcher3.LauncherAnimUtils;
import android.view.LayoutInflater;
import android.content.res.Resources;
import android.view.View$AccessibilityDelegate;
import android.view.ViewGroup;
import android.graphics.Paint;
import android.view.ViewGroup$LayoutParams;
import android.graphics.drawable.Drawable;
import android.graphics.PathEffect;
import android.graphics.CornerPathEffect;
import android.graphics.drawable.shapes.Shape;
import android.graphics.drawable.ShapeDrawable;
import com.android.launcher3.graphics.TriangleShape;
import android.view.Gravity;
import android.widget.FrameLayout$LayoutParams;
import android.widget.LinearLayout$LayoutParams;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.ShortcutMenuAccessibilityDelegate;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Rect;
import com.android.launcher3.shortcuts.ShortcutsItemView;
import android.animation.AnimatorSet;
import com.android.launcher3.BubbleTextView;
import android.animation.Animator;
import com.android.launcher3.notification.NotificationItemView;
import com.android.launcher3.Launcher;
import android.graphics.PointF;
import android.view.View;
import com.android.launcher3.accessibility.LauncherAccessibilityDelegate;
import com.android.launcher3.dragndrop.DragController$DragListener;
import com.android.launcher3.DragSource;
import com.android.launcher3.AbstractFloatingView;

public class PopupContainerWithArrow extends AbstractFloatingView implements DragSource, DragController$DragListener
{
    private LauncherAccessibilityDelegate mAccessibilityDelegate;
    private View mArrow;
    private boolean mDeferContainerRemoval;
    private PointF mInterceptTouchDown;
    protected boolean mIsAboveIcon;
    private boolean mIsLeftAligned;
    private final boolean mIsRtl;
    protected final Launcher mLauncher;
    private NotificationItemView mNotificationItemView;
    protected Animator mOpenCloseAnimator;
    protected BubbleTextView mOriginalIcon;
    private AnimatorSet mReduceHeightAnimatorSet;
    public ShortcutsItemView mShortcutsItemView;
    private final int mStartDragThreshold;
    private final Rect mTempRect;
    
    public PopupContainerWithArrow(final Context context) {
        this(context, null, 0);
    }
    
    public PopupContainerWithArrow(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public PopupContainerWithArrow(final Context context, final AttributeSet set, final int n) {
        super(context, set, n);
        this.mTempRect = new Rect();
        this.mInterceptTouchDown = new PointF();
        this.mLauncher = Launcher.getLauncher(context);
        this.mStartDragThreshold = this.getResources().getDimensionPixelSize(2131427438);
        this.mAccessibilityDelegate = new ShortcutMenuAccessibilityDelegate(this.mLauncher);
        this.mIsRtl = Utilities.isRtl(this.getResources());
    }
    
    private View addArrowView(final int n, final int n2, final int n3, final int n4) {
        int childCount = 0;
        final LinearLayout$LayoutParams linearLayout$LayoutParams = new LinearLayout$LayoutParams(n3, n4);
        if (this.mIsLeftAligned) {
            linearLayout$LayoutParams.gravity = 3;
            linearLayout$LayoutParams.leftMargin = n;
        }
        else {
            linearLayout$LayoutParams.gravity = 5;
            linearLayout$LayoutParams.rightMargin = n;
        }
        if (this.mIsAboveIcon) {
            linearLayout$LayoutParams.topMargin = n2;
        }
        else {
            linearLayout$LayoutParams.bottomMargin = n2;
        }
        final View view = new View(this.getContext());
        if (Gravity.isVertical(((FrameLayout$LayoutParams)this.getLayoutParams()).gravity)) {
            view.setVisibility(4);
        }
        else {
            final ShapeDrawable background = new ShapeDrawable((Shape)TriangleShape.create(n3, n4, this.mIsAboveIcon ^ true));
            final Paint paint = background.getPaint();
            int n5;
            if (this.mIsAboveIcon) {
                n5 = this.getChildCount() - 1;
            }
            else {
                n5 = 0;
            }
            paint.setColor(((PopupItemView)this.getChildAt(n5)).getArrowColor(this.mIsAboveIcon));
            paint.setPathEffect((PathEffect)new CornerPathEffect((float)this.getResources().getDimensionPixelSize(2131427451)));
            view.setBackground((Drawable)background);
            view.setElevation(this.getElevation());
        }
        if (this.mIsAboveIcon) {
            childCount = this.getChildCount();
        }
        this.addView(view, childCount, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        return view;
    }
    
    private void addDummyViews(final PopupPopulator$Item[] array, final boolean b) {
        final Resources resources = this.getResources();
        final int dimensionPixelSize = resources.getDimensionPixelSize(2131427436);
        final LayoutInflater layoutInflater = this.mLauncher.getLayoutInflater();
        for (int length = array.length, i = 0; i < length; ++i) {
            final PopupPopulator$Item popupPopulator$Item = array[i];
            PopupPopulator$Item popupPopulator$Item2;
            if (i < length - 1) {
                popupPopulator$Item2 = array[i + 1];
            }
            else {
                popupPopulator$Item2 = null;
            }
            final View inflate = layoutInflater.inflate(popupPopulator$Item.layoutId, (ViewGroup)this, false);
            if (popupPopulator$Item == PopupPopulator$Item.NOTIFICATION) {
                this.mNotificationItemView = (NotificationItemView)inflate;
                int dimensionPixelSize2;
                if (b) {
                    dimensionPixelSize2 = resources.getDimensionPixelSize(2131427467);
                }
                else {
                    dimensionPixelSize2 = 0;
                }
                inflate.findViewById(2131624013).getLayoutParams().height = dimensionPixelSize2;
                this.mNotificationItemView.getMainView().setAccessibilityDelegate((View$AccessibilityDelegate)this.mAccessibilityDelegate);
            }
            else if (popupPopulator$Item == PopupPopulator$Item.SHORTCUT) {
                inflate.setAccessibilityDelegate((View$AccessibilityDelegate)this.mAccessibilityDelegate);
            }
            final boolean b2 = popupPopulator$Item2 != null && (popupPopulator$Item.isShortcut ^ popupPopulator$Item2.isShortcut);
            if (popupPopulator$Item.isShortcut) {
                if (this.mShortcutsItemView == null) {
                    this.addView((View)(this.mShortcutsItemView = (ShortcutsItemView)layoutInflater.inflate(2130968619, (ViewGroup)this, false)));
                }
                this.mShortcutsItemView.addShortcutView(inflate, popupPopulator$Item);
                if (b2) {
                    ((LinearLayout$LayoutParams)this.mShortcutsItemView.getLayoutParams()).bottomMargin = dimensionPixelSize;
                }
            }
            else {
                this.addView(inflate);
                if (b2) {
                    ((LinearLayout$LayoutParams)inflate.getLayoutParams()).bottomMargin = dimensionPixelSize;
                }
            }
        }
    }
    
    private void animateOpen() {
        this.setVisibility(0);
        this.mIsOpen = true;
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final int itemCount = this.getItemCount();
        final long duration = this.getResources().getInteger(2131558422);
        final long duration2 = this.getResources().getInteger(2131558423);
        final long n = duration - duration2;
        final long n2 = this.getResources().getInteger(2131558424);
        final LogAccelerateInterpolator interpolator = new LogAccelerateInterpolator(100, 0);
        final DecelerateInterpolator interpolator2 = new DecelerateInterpolator();
        for (int i = 0; i < itemCount; ++i) {
            final PopupItemView itemView = this.getItemViewAt(i);
            itemView.setVisibility(4);
            itemView.setAlpha(0.0f);
            final Animator openAnimation = itemView.createOpenAnimation(this.mIsAboveIcon, this.mIsLeftAligned);
            openAnimation.addListener((Animator$AnimatorListener)new PopupContainerWithArrow$1(this, itemView));
            openAnimation.setDuration(duration);
            int n3;
            if (this.mIsAboveIcon) {
                n3 = itemCount - i - 1;
            }
            else {
                n3 = i;
            }
            openAnimation.setStartDelay(n3 * n2);
            openAnimation.setInterpolator((TimeInterpolator)interpolator2);
            animatorSet.play(openAnimation);
            final Property alpha = View.ALPHA;
            final float[] array;
            (array = new float[1])[0] = 1.0f;
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)itemView, alpha, array);
            ((Animator)ofFloat).setInterpolator((TimeInterpolator)interpolator);
            ((Animator)ofFloat).setDuration(n);
            animatorSet.play((Animator)ofFloat);
        }
        animatorSet.addListener((Animator$AnimatorListener)new PopupContainerWithArrow$2(this));
        this.mArrow.setScaleX(0.0f);
        this.mArrow.setScaleY(0.0f);
        final ObjectAnimator setDuration = this.createArrowScaleAnim(1.0f).setDuration(duration2);
        ((Animator)setDuration).setStartDelay(n);
        animatorSet.play((Animator)setDuration);
        ((AnimatorSet)(this.mOpenCloseAnimator = (Animator)animatorSet)).start();
    }
    
    private ObjectAnimator createArrowScaleAnim(final float n) {
        return LauncherAnimUtils.ofPropertyValuesHolder(this.mArrow, new PropertyListBuilder().scale(n).build());
    }
    
    public static PopupContainerWithArrow getOpen(final Launcher launcher) {
        return (PopupContainerWithArrow)AbstractFloatingView.getOpenView(launcher, 2);
    }
    
    private boolean isAlignedWithStart() {
        return (this.mIsLeftAligned && (this.mIsRtl ^ true)) || (!this.mIsLeftAligned && this.mIsRtl);
    }
    
    private void orientAboutIcon(final BubbleTextView bubbleTextView, final int n) {
        final int measuredWidth = this.getMeasuredWidth();
        final int n2 = this.getMeasuredHeight() + n;
        final DragLayer dragLayer = this.mLauncher.getDragLayer();
        dragLayer.getDescendantRectRelativeToSelf((View)bubbleTextView, this.mTempRect);
        final Rect insets = dragLayer.getInsets();
        final int n3 = this.mTempRect.left + bubbleTextView.getPaddingLeft();
        final int n4 = this.mTempRect.right - measuredWidth - bubbleTextView.getPaddingRight();
        int n5;
        if (n3 + measuredWidth + insets.left < dragLayer.getRight() - insets.right) {
            n5 = 1;
        }
        else {
            n5 = 0;
        }
        int n6;
        if (n4 > dragLayer.getLeft() + insets.left) {
            n6 = 1;
        }
        else {
            n6 = 0;
        }
        int n7 = 0;
        Label_0211: {
            if (n5 != 0) {
                if (!this.mIsRtl) {
                    n7 = n3;
                    break Label_0211;
                }
                if (n6 == 0) {
                    n7 = n3;
                    break Label_0211;
                }
            }
            n7 = n4;
        }
        this.mIsLeftAligned = (n7 == n3);
        int n8;
        if (this.mIsRtl) {
            n8 = n7 - (dragLayer.getWidth() - measuredWidth);
        }
        else {
            n8 = n7;
        }
        final int n9 = (int)((bubbleTextView.getWidth() - bubbleTextView.getTotalPaddingLeft() - bubbleTextView.getTotalPaddingRight()) * bubbleTextView.getScaleX());
        final Resources resources = this.getResources();
        int n10;
        if (this.isAlignedWithStart()) {
            n10 = n9 / 2 - resources.getDimensionPixelSize(2131427439) / 2 - resources.getDimensionPixelSize(2131427442);
        }
        else {
            n10 = n9 / 2 - resources.getDimensionPixelSize(2131427441) / 2 - resources.getDimensionPixelSize(2131427443);
        }
        if (!this.mIsLeftAligned) {
            n10 = -n10;
        }
        final int n11 = n8 + n10;
        final int height = bubbleTextView.getIcon().getBounds().height();
        final int n12 = this.mTempRect.top + bubbleTextView.getPaddingTop() - n2;
        int n13;
        if (!(this.mIsAboveIcon = (n12 > dragLayer.getTop() + insets.top))) {
            n13 = this.mTempRect.top + bubbleTextView.getPaddingTop() + height;
        }
        else {
            n13 = n12;
        }
        int n14;
        if (this.mIsRtl) {
            n14 = insets.right + n11;
        }
        else {
            n14 = n11 - insets.left;
        }
        final int n15 = n13 - insets.top;
        if (n15 < dragLayer.getTop() || n15 + n2 > dragLayer.getBottom()) {
            ((FrameLayout$LayoutParams)this.getLayoutParams()).gravity = 16;
            int n16 = n3 + n9 - insets.left;
            final int n17 = n4 - n9 - insets.left;
            if (!this.mIsRtl) {
                if (n16 + measuredWidth < dragLayer.getRight()) {
                    this.mIsLeftAligned = true;
                }
                else {
                    this.mIsLeftAligned = false;
                    n16 = n17;
                }
            }
            else if (n17 > dragLayer.getLeft()) {
                this.mIsLeftAligned = false;
                n16 = n17;
            }
            else {
                this.mIsLeftAligned = true;
            }
            this.mIsAboveIcon = true;
            n14 = n16;
        }
        if (n14 < dragLayer.getLeft() || n14 + measuredWidth > dragLayer.getRight()) {
            final FrameLayout$LayoutParams frameLayout$LayoutParams = (FrameLayout$LayoutParams)this.getLayoutParams();
            frameLayout$LayoutParams.gravity |= 0x1;
        }
        final int gravity = ((FrameLayout$LayoutParams)this.getLayoutParams()).gravity;
        if (!Gravity.isHorizontal(gravity)) {
            this.setX((float)n14);
        }
        if (!Gravity.isVertical(gravity)) {
            this.setY((float)n15);
        }
    }
    
    public static PopupContainerWithArrow showForIcon(final BubbleTextView bubbleTextView) {
        final Launcher launcher = Launcher.getLauncher(bubbleTextView.getContext());
        if (getOpen(launcher) != null) {
            bubbleTextView.clearFocus();
            return null;
        }
        final ItemInfo itemInfo = (ItemInfo)bubbleTextView.getTag();
        if (!DeepShortcutManager.supportsShortcuts(itemInfo)) {
            return null;
        }
        final PopupDataProvider popupDataProvider = launcher.getPopupDataProvider();
        final List shortcutIdsForItem = popupDataProvider.getShortcutIdsForItem(itemInfo);
        final List notificationKeysForItem = popupDataProvider.getNotificationKeysForItem(itemInfo);
        final List enabledSystemShortcutsForItem = popupDataProvider.getEnabledSystemShortcutsForItem(itemInfo);
        final PopupContainerWithArrow popupContainerWithArrow = (PopupContainerWithArrow)launcher.getLayoutInflater().inflate(2130968608, (ViewGroup)launcher.getDragLayer(), false);
        popupContainerWithArrow.setVisibility(4);
        launcher.getDragLayer().addView((View)popupContainerWithArrow);
        popupContainerWithArrow.populateAndShow(bubbleTextView, shortcutIdsForItem, notificationKeysForItem, enabledSystemShortcutsForItem);
        return popupContainerWithArrow;
    }
    
    private void updateNotificationHeader() {
        final BadgeInfo badgeInfoForItem = this.mLauncher.getPopupDataProvider().getBadgeInfoForItem((ItemInfo)this.mOriginalIcon.getTag());
        if (this.mNotificationItemView != null && badgeInfoForItem != null) {
            IconPalette iconPalette;
            if (this.mOriginalIcon.getIcon() instanceof FastBitmapDrawable) {
                iconPalette = ((FastBitmapDrawable)this.mOriginalIcon.getIcon()).getIconPalette();
            }
            else {
                iconPalette = null;
            }
            this.mNotificationItemView.updateHeader(badgeInfoForItem.getNotificationCount(), iconPalette);
        }
    }
    
    protected void animateClose() {
        if (!this.mIsOpen) {
            return;
        }
        if (this.mOpenCloseAnimator != null) {
            this.mOpenCloseAnimator.cancel();
        }
        this.mIsOpen = false;
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final int itemCount = this.getItemCount();
        int n = 0;
        for (int i = 0; i < itemCount; ++i) {
            if (this.getItemViewAt(i).isOpenOrOpening()) {
                ++n;
            }
        }
        final long n2 = this.getResources().getInteger(2131558425);
        final long duration = this.getResources().getInteger(2131558423);
        final long n3 = this.getResources().getInteger(2131558426);
        final LogAccelerateInterpolator interpolator = new LogAccelerateInterpolator(100, 0);
        int n4;
        if (this.mIsAboveIcon) {
            n4 = itemCount - n;
        }
        else {
            n4 = 0;
        }
        for (int j = n4; j < n4 + n; ++j) {
            final PopupItemView itemView = this.getItemViewAt(j);
            final Animator closeAnimation = itemView.createCloseAnimation(this.mIsAboveIcon, this.mIsLeftAligned, n2);
            int n5;
            if (this.mIsAboveIcon) {
                n5 = j - n4;
            }
            else {
                n5 = n - j - 1;
            }
            closeAnimation.setStartDelay(n5 * n3);
            final Property alpha = View.ALPHA;
            final float[] array;
            (array = new float[1])[0] = 0.0f;
            final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)itemView, alpha, array);
            ((Animator)ofFloat).setStartDelay(n5 * n3 + duration);
            ((Animator)ofFloat).setDuration(n2 - duration);
            ((Animator)ofFloat).setInterpolator((TimeInterpolator)interpolator);
            animatorSet.play((Animator)ofFloat);
            closeAnimation.addListener((Animator$AnimatorListener)new PopupContainerWithArrow$7(this, itemView));
            animatorSet.play(closeAnimation);
        }
        final ObjectAnimator setDuration = this.createArrowScaleAnim(0.0f).setDuration(duration);
        ((Animator)setDuration).setStartDelay(0L);
        animatorSet.play((Animator)setDuration);
        animatorSet.addListener((Animator$AnimatorListener)new PopupContainerWithArrow$8(this));
        ((AnimatorSet)(this.mOpenCloseAnimator = (Animator)animatorSet)).start();
        this.mOriginalIcon.forceHideBadge(false);
    }
    
    protected void closeComplete() {
        if (this.mOpenCloseAnimator != null) {
            this.mOpenCloseAnimator.cancel();
            this.mOpenCloseAnimator = null;
        }
        this.mIsOpen = false;
        this.mDeferContainerRemoval = false;
        boolean b;
        if (((ItemInfo)this.mOriginalIcon.getTag()).container == -101) {
            b = true;
        }
        else {
            b = false;
        }
        this.mOriginalIcon.setTextVisibility(b ^ true);
        this.mOriginalIcon.forceHideBadge(false);
        this.mLauncher.getDragController().removeDragListener(this);
        this.mLauncher.getDragLayer().removeView((View)this);
    }
    
    public DragOptions$PreDragCondition createPreDragCondition() {
        return new PopupContainerWithArrow$3(this);
    }
    
    public void fillInLogContainerData(final View view, final ItemInfo itemInfo, final LauncherLogProto$Target launcherLogProto$Target, final LauncherLogProto$Target launcherLogProto$Target2) {
        launcherLogProto$Target.itemType = 5;
        launcherLogProto$Target2.containerType = 9;
    }
    
    public LauncherAccessibilityDelegate getAccessibilityDelegate() {
        return this.mAccessibilityDelegate;
    }
    
    public View getExtendedTouchView() {
        return (View)this.mOriginalIcon;
    }
    
    public float getIntrinsicIconScaleFactor() {
        return 1.0f;
    }
    
    protected int getItemCount() {
        return this.getChildCount() - 1;
    }
    
    protected PopupItemView getItemViewAt(int n) {
        if (!this.mIsAboveIcon) {
            ++n;
        }
        return (PopupItemView)this.getChildAt(n);
    }
    
    public int getLogContainerType() {
        return 9;
    }
    
    protected void handleClose(final boolean b) {
        if (b) {
            this.animateClose();
        }
        else {
            this.closeComplete();
        }
    }
    
    protected boolean isOfType(final int n) {
        boolean b = false;
        if ((n & 0x2) != 0x0) {
            b = true;
        }
        return b;
    }
    
    public void onDragEnd() {
        if (!this.mIsOpen) {
            if (this.mOpenCloseAnimator != null) {
                this.mDeferContainerRemoval = false;
            }
            else if (this.mDeferContainerRemoval) {
                this.closeComplete();
            }
        }
    }
    
    public void onDragStart(final DropTarget$DragObject dropTarget$DragObject, final DragOptions dragOptions) {
        this.mDeferContainerRemoval = true;
        this.animateClose();
    }
    
    public void onDropCompleted(final View view, final DropTarget$DragObject dropTarget$DragObject, final boolean b, final boolean b2) {
        if (!b2) {
            dropTarget$DragObject.dragView.remove();
            this.mLauncher.showWorkspace(true);
            this.mLauncher.getDropTargetBar().onDragEnd();
        }
    }
    
    public boolean onInterceptTouchEvent(final MotionEvent motionEvent) {
        boolean b = false;
        if (motionEvent.getAction() == 0) {
            this.mInterceptTouchDown.set(motionEvent.getX(), motionEvent.getY());
            return false;
        }
        if (Math.hypot(this.mInterceptTouchDown.x - motionEvent.getX(), this.mInterceptTouchDown.y - motionEvent.getY()) > ViewConfiguration.get(this.getContext()).getScaledTouchSlop()) {
            b = true;
        }
        return b;
    }
    
    protected void onWidgetsBound() {
        if (this.mShortcutsItemView != null) {
            this.mShortcutsItemView.enableWidgetsIfExist(this.mOriginalIcon);
        }
    }
    
    public void populateAndShow(final BubbleTextView mOriginalIcon, final List list, final List list2, final List list3) {
        final Resources resources = this.getResources();
        final int dimensionPixelSize = resources.getDimensionPixelSize(2131427444);
        final int dimensionPixelSize2 = resources.getDimensionPixelSize(2131427445);
        final int dimensionPixelSize3 = resources.getDimensionPixelSize(2131427446);
        this.mOriginalIcon = mOriginalIcon;
        final PopupPopulator$Item[] itemsToPopulate = PopupPopulator.getItemsToPopulate(list, list2, list3);
        this.addDummyViews(itemsToPopulate, list2.size() > 1);
        this.measure(0, 0);
        this.orientAboutIcon(mOriginalIcon, dimensionPixelSize2 + dimensionPixelSize3);
        final boolean mIsAboveIcon = this.mIsAboveIcon;
        if (mIsAboveIcon) {
            this.removeAllViews();
            this.mNotificationItemView = null;
            this.mShortcutsItemView = null;
            this.addDummyViews(PopupPopulator.reverseItems(itemsToPopulate), list2.size() > 1);
            this.measure(0, 0);
            this.orientAboutIcon(mOriginalIcon, dimensionPixelSize2 + dimensionPixelSize3);
        }
        final ItemInfo itemInfo = (ItemInfo)mOriginalIcon.getTag();
        List list4;
        if (this.mShortcutsItemView == null) {
            list4 = Collections.EMPTY_LIST;
        }
        else {
            list4 = this.mShortcutsItemView.getDeepShortcutViews(mIsAboveIcon);
        }
        List list5;
        if (this.mShortcutsItemView == null) {
            list5 = Collections.EMPTY_LIST;
        }
        else {
            list5 = this.mShortcutsItemView.getSystemShortcutViews(mIsAboveIcon);
        }
        if (this.mNotificationItemView != null) {
            this.updateNotificationHeader();
        }
        final int n = list4.size() + list5.size();
        final int size = list2.size();
        if (size == 0) {
            this.setContentDescription((CharSequence)this.getContext().getString(2131492990, new Object[] { n, mOriginalIcon.getContentDescription().toString() }));
        }
        else {
            this.setContentDescription((CharSequence)this.getContext().getString(2131492991, new Object[] { n, size, mOriginalIcon.getContentDescription().toString() }));
        }
        int n2;
        if (this.isAlignedWithStart()) {
            n2 = 2131427449;
        }
        else {
            n2 = 2131427450;
        }
        (this.mArrow = this.addArrowView(resources.getDimensionPixelSize(n2), dimensionPixelSize3, dimensionPixelSize, dimensionPixelSize2)).setPivotX((float)(dimensionPixelSize / 2));
        final View mArrow = this.mArrow;
        int n3;
        if (this.mIsAboveIcon) {
            n3 = 0;
        }
        else {
            n3 = dimensionPixelSize2;
        }
        mArrow.setPivotY((float)n3);
        this.animateOpen();
        this.mLauncher.getDragController().addDragListener(this);
        this.mOriginalIcon.forceHideBadge(true);
        new Handler(LauncherModel.getWorkerLooper()).postAtFrontOfQueue(PopupPopulator.createUpdateRunnable(this.mLauncher, itemInfo, new Handler(Looper.getMainLooper()), this, list, list4, list2, this.mNotificationItemView, list3, list5));
    }
    
    public Animator reduceNotificationViewHeight(final int n, final int n2) {
        if (this.mReduceHeightAnimatorSet != null) {
            this.mReduceHeightAnimatorSet.cancel();
        }
        int n3;
        if (this.mIsAboveIcon) {
            n3 = n;
        }
        else {
            n3 = -n;
        }
        (this.mReduceHeightAnimatorSet = LauncherAnimUtils.createAnimatorSet()).play(this.mNotificationItemView.animateHeightRemoval(n));
        final PropertyResetListener propertyResetListener = new PropertyResetListener(PopupContainerWithArrow.TRANSLATION_Y, 0.0f);
        for (int i = 0; i < this.getItemCount(); ++i) {
            final PopupItemView itemView = this.getItemViewAt(i);
            if (this.mIsAboveIcon || itemView != this.mNotificationItemView) {
                final ObjectAnimator setDuration = ObjectAnimator.ofFloat((Object)itemView, PopupContainerWithArrow.TRANSLATION_Y, new float[] { itemView.getTranslationY() + n3 }).setDuration((long)n2);
                ((ValueAnimator)setDuration).addListener((Animator$AnimatorListener)propertyResetListener);
                this.mReduceHeightAnimatorSet.play((Animator)setDuration);
            }
        }
        this.mReduceHeightAnimatorSet.addListener((Animator$AnimatorListener)new PopupContainerWithArrow$6(this, n3));
        return (Animator)this.mReduceHeightAnimatorSet;
    }
    
    public boolean supportsAppInfoDropTarget() {
        return true;
    }
    
    public boolean supportsDeleteDropTarget() {
        return false;
    }
    
    public void trimNotifications(final Map map) {
        final float n = 1.0f;
        final int n2 = 1;
        if (this.mNotificationItemView == null) {
            return;
        }
        final BadgeInfo badgeInfo = map.get(PackageUserKey.fromItemInfo((ItemInfo)this.mOriginalIcon.getTag()));
        if (badgeInfo == null || badgeInfo.getNotificationKeys().size() == 0) {
            final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
            final int integer = this.getResources().getInteger(2131558427);
            final int dimensionPixelSize = this.getResources().getDimensionPixelSize(2131427436);
            animatorSet.play(this.reduceNotificationViewHeight(this.mNotificationItemView.getHeightMinusFooter() + dimensionPixelSize, integer));
            PopupItemView popupItemView;
            if (this.mIsAboveIcon) {
                popupItemView = this.getItemViewAt(this.getItemCount() - 2);
            }
            else {
                popupItemView = this.mNotificationItemView;
            }
            if (popupItemView != null) {
                final float[] array = { n, 0.0f };
                array[n2] = 0.0f;
                final ValueAnimator setDuration = ValueAnimator.ofFloat(array).setDuration((long)integer);
                setDuration.addUpdateListener((ValueAnimator$AnimatorUpdateListener)new PopupContainerWithArrow$4(this, (View)popupItemView, dimensionPixelSize));
                animatorSet.play((Animator)setDuration);
            }
            final NotificationItemView mNotificationItemView = this.mNotificationItemView;
            final Property alpha = PopupContainerWithArrow.ALPHA;
            final float[] array2 = new float[n2];
            array2[0] = 0.0f;
            final ObjectAnimator setDuration2 = ObjectAnimator.ofFloat((Object)mNotificationItemView, alpha, array2).setDuration((long)integer);
            ((Animator)setDuration2).addListener((Animator$AnimatorListener)new PopupContainerWithArrow$5(this));
            animatorSet.play((Animator)setDuration2);
            final long n3 = this.getResources().getInteger(2131558423);
            final ObjectAnimator setDuration3 = this.createArrowScaleAnim(0.0f).setDuration(n3);
            ((Animator)setDuration3).setStartDelay(0L);
            final ObjectAnimator setDuration4 = this.createArrowScaleAnim(n).setDuration(n3);
            ((Animator)setDuration4).setStartDelay((long)(integer - n3 * 1.5));
            final Animator[] array3 = { setDuration3, null };
            array3[n2] = (Animator)setDuration4;
            animatorSet.playSequentially(array3);
            animatorSet.start();
            return;
        }
        this.mNotificationItemView.trimNotifications(NotificationKeyData.extractKeysOnly(badgeInfo.getNotificationKeys()));
    }
    
    public void updateNotificationHeader(final Set set) {
        if (set.contains(PackageUserKey.fromItemInfo((ItemInfo)this.mOriginalIcon.getTag()))) {
            this.updateNotificationHeader();
        }
    }
}
