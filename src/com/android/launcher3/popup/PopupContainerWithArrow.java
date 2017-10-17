// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3.popup;

import java.util.Set;
import com.android.launcher3.notification.NotificationKeyData;
import com.android.launcher3.util.PackageUserKey;
import java.util.Map;
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
import android.graphics.Outline;
import android.util.Property;
import com.android.launcher3.anim.PropertyResetListener;
import com.android.launcher3.badge.BadgeInfo;
import java.util.List;
import com.android.launcher3.shortcuts.DeepShortcutManager;
import com.android.launcher3.ItemInfo;
import com.android.launcher3.dragndrop.DragLayer;
import com.android.launcher3.anim.PropertyListBuilder;
import android.animation.ValueAnimator;
import android.graphics.Point;
import android.animation.Animator$AnimatorListener;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import com.android.launcher3.anim.RoundedRectRevealOutlineProvider;
import android.view.animation.AccelerateDecelerateInterpolator;
import com.android.launcher3.LauncherAnimUtils;
import android.view.LayoutInflater;
import android.content.res.Resources;
import com.android.launcher3.shortcuts.DeepShortcutView;
import android.view.View$AccessibilityDelegate;
import android.view.ViewGroup;
import android.graphics.Paint;
import android.view.ViewGroup$LayoutParams;
import android.graphics.drawable.Drawable;
import android.graphics.PathEffect;
import android.graphics.CornerPathEffect;
import com.android.launcher3.util.Themes;
import android.graphics.drawable.shapes.Shape;
import android.graphics.drawable.ShapeDrawable;
import com.android.launcher3.graphics.TriangleShape;
import android.view.Gravity;
import android.widget.LinearLayout$LayoutParams;
import com.android.launcher3.Utilities;
import com.android.launcher3.accessibility.ShortcutMenuAccessibilityDelegate;
import android.util.AttributeSet;
import android.content.Context;
import com.android.launcher3.shortcuts.ShortcutsItemView;
import android.animation.AnimatorSet;
import com.android.launcher3.BubbleTextView;
import android.animation.Animator;
import com.android.launcher3.notification.NotificationItemView;
import com.android.launcher3.Launcher;
import android.graphics.PointF;
import android.graphics.Rect;
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
    private final Rect mEndRect;
    private int mGravity;
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
    private final Rect mStartRect;
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
        this.mStartRect = new Rect();
        this.mEndRect = new Rect();
        this.mLauncher = Launcher.getLauncher(context);
        this.mStartDragThreshold = this.getResources().getDimensionPixelSize(2131427448);
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
        if (Gravity.isVertical(this.mGravity)) {
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
            final PopupItemView popupItemView = (PopupItemView)this.getChildAt(n5);
            paint.setColor(Themes.getAttrColor((Context)this.mLauncher, 2130772007));
            paint.setPathEffect((PathEffect)new CornerPathEffect((float)this.getResources().getDimensionPixelSize(2131427461)));
            view.setBackground((Drawable)background);
            view.setElevation(this.getElevation());
        }
        if (this.mIsAboveIcon) {
            childCount = this.getChildCount();
        }
        this.addView(view, childCount, (ViewGroup$LayoutParams)linearLayout$LayoutParams);
        return view;
    }
    
    private void addDummyViews(final PopupPopulator$Item[] array, final int n) {
        final Resources resources = this.getResources();
        final LayoutInflater layoutInflater = this.mLauncher.getLayoutInflater();
        int n2 = 3;
        for (int length = array.length, i = 0; i < length; ++i) {
            final PopupPopulator$Item popupPopulator$Item = array[i];
            PopupPopulator$Item popupPopulator$Item2;
            if (i > 0) {
                popupPopulator$Item2 = array[i - 1];
            }
            else {
                popupPopulator$Item2 = null;
            }
            PopupPopulator$Item popupPopulator$Item3;
            if (i < length - 1) {
                popupPopulator$Item3 = array[i + 1];
            }
            else {
                popupPopulator$Item3 = null;
            }
            final View inflate = layoutInflater.inflate(popupPopulator$Item.layoutId, (ViewGroup)this, false);
            final boolean b = popupPopulator$Item2 != null && (popupPopulator$Item2.isShortcut ^ popupPopulator$Item.isShortcut);
            final boolean b2 = popupPopulator$Item3 != null && (popupPopulator$Item3.isShortcut ^ popupPopulator$Item.isShortcut);
            if (popupPopulator$Item == PopupPopulator$Item.NOTIFICATION) {
                this.mNotificationItemView = (NotificationItemView)inflate;
                final boolean b3 = n > 1 && true;
                int dimensionPixelSize;
                if (b3) {
                    dimensionPixelSize = resources.getDimensionPixelSize(2131427477);
                }
                else {
                    dimensionPixelSize = 0;
                }
                inflate.findViewById(2131624022).getLayoutParams().height = dimensionPixelSize;
                if (b3) {
                    this.mNotificationItemView.findViewById(2131624003).setVisibility(0);
                }
                int n3 = 3;
                if (b) {
                    n3 = 2;
                    this.mNotificationItemView.findViewById(2131624017).setVisibility(0);
                }
                if (b2) {
                    n3 &= 0xFFFFFFFD;
                    this.mNotificationItemView.findViewById(2131624023).setVisibility(0);
                }
                this.mNotificationItemView.setBackgroundWithCorners(Themes.getAttrColor((Context)this.mLauncher, 2130772009), n3);
                this.mNotificationItemView.getMainView().setAccessibilityDelegate((View$AccessibilityDelegate)this.mAccessibilityDelegate);
            }
            else if (popupPopulator$Item == PopupPopulator$Item.SHORTCUT) {
                inflate.setAccessibilityDelegate((View$AccessibilityDelegate)this.mAccessibilityDelegate);
            }
            if (popupPopulator$Item.isShortcut) {
                if (this.mShortcutsItemView == null) {
                    this.addView((View)(this.mShortcutsItemView = (ShortcutsItemView)layoutInflater.inflate(2130968619, (ViewGroup)this, false)));
                    if (b) {
                        n2 &= 0xFFFFFFFE;
                    }
                }
                if (popupPopulator$Item != PopupPopulator$Item.SYSTEM_SHORTCUT_ICON && n > 0) {
                    final int height = inflate.getLayoutParams().height;
                    inflate.getLayoutParams().height = resources.getDimensionPixelSize(2131427446);
                    if (inflate instanceof DeepShortcutView) {
                        final float n4 = inflate.getLayoutParams().height / height;
                        ((DeepShortcutView)inflate).getIconView().setScaleX(n4);
                        ((DeepShortcutView)inflate).getIconView().setScaleY(n4);
                    }
                }
                this.mShortcutsItemView.addShortcutView(inflate, popupPopulator$Item);
                if (b2) {
                    n2 &= 0xFFFFFFFD;
                }
            }
            else {
                this.addView(inflate);
            }
        }
        this.mShortcutsItemView.setBackgroundWithCorners(Themes.getAttrColor((Context)this.mLauncher, 2130772007), n2);
        if (n > 0) {
            this.mShortcutsItemView.hideShortcuts(this.mIsAboveIcon, 2);
        }
    }
    
    private void animateOpen() {
        this.setVisibility(0);
        this.mIsOpen = true;
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final Resources resources = this.getResources();
        final long n = resources.getInteger(2131558423);
        final AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        int n2 = 0;
        for (int i = 0; i < this.getItemCount(); ++i) {
            n2 += this.getItemViewAt(i).getMeasuredHeight();
        }
        final Point computeAnimStartPoint = this.computeAnimStartPoint(n2);
        int n3;
        if (this.mIsAboveIcon) {
            n3 = this.getPaddingTop();
        }
        else {
            n3 = computeAnimStartPoint.y;
        }
        final float backgroundRadius = this.getItemViewAt(0).getBackgroundRadius();
        this.mStartRect.set(computeAnimStartPoint.x, computeAnimStartPoint.y, computeAnimStartPoint.x, computeAnimStartPoint.y);
        this.mEndRect.set(0, n3, this.getMeasuredWidth(), n2 + n3);
        final ValueAnimator revealAnimator = new RoundedRectRevealOutlineProvider(backgroundRadius, backgroundRadius, this.mStartRect, this.mEndRect).createRevealAnimator((View)this, false);
        revealAnimator.setDuration(n);
        revealAnimator.setInterpolator((TimeInterpolator)accelerateDecelerateInterpolator);
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this, PopupContainerWithArrow.ALPHA, new float[] { 0.0f, 1.0f });
        ((Animator)ofFloat).setDuration(n);
        ((Animator)ofFloat).setInterpolator((TimeInterpolator)accelerateDecelerateInterpolator);
        animatorSet.play((Animator)ofFloat);
        this.mArrow.setScaleX(0.0f);
        this.mArrow.setScaleY(0.0f);
        final ObjectAnimator setDuration = this.createArrowScaleAnim(1.0f).setDuration((long)resources.getInteger(2131558424));
        animatorSet.addListener((Animator$AnimatorListener)new PopupContainerWithArrow$1(this));
        ((AnimatorSet)(this.mOpenCloseAnimator = (Animator)animatorSet)).playSequentially(new Animator[] { revealAnimator, setDuration });
        animatorSet.start();
    }
    
    private Point computeAnimStartPoint(int n) {
        final Resources resources = this.getResources();
        int n2;
        if (this.mIsLeftAligned ^ this.mIsRtl) {
            n2 = 2131427457;
        }
        else {
            n2 = 2131427458;
        }
        int dimensionPixelSize = resources.getDimensionPixelSize(n2);
        if (!this.mIsLeftAligned) {
            dimensionPixelSize = this.getMeasuredWidth() - dimensionPixelSize;
        }
        final int n3 = this.getMeasuredHeight() - this.getPaddingTop() - this.getPaddingBottom() - n;
        final int paddingTop = this.getPaddingTop();
        if (!this.mIsAboveIcon) {
            n = n3;
        }
        return new Point(dimensionPixelSize, paddingTop + n);
    }
    
    private ObjectAnimator createArrowScaleAnim(final float n) {
        return LauncherAnimUtils.ofPropertyValuesHolder(this.mArrow, new PropertyListBuilder().scale(n).build());
    }
    
    private void enforceContainedWithinScreen(final int n, final int n2) {
        final DragLayer dragLayer = this.mLauncher.getDragLayer();
        if (this.getTranslationX() + n < 0.0f || this.getTranslationX() + n2 > dragLayer.getWidth()) {
            this.mGravity |= 0x1;
        }
        if (Gravity.isHorizontal(this.mGravity)) {
            this.setX((float)(dragLayer.getWidth() / 2 - this.getMeasuredWidth() / 2));
        }
        if (Gravity.isVertical(this.mGravity)) {
            this.setY((float)(dragLayer.getHeight() / 2 - this.getMeasuredHeight() / 2));
        }
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
        Label_0209: {
            if (n5 != 0) {
                if (!this.mIsRtl) {
                    n7 = n3;
                    break Label_0209;
                }
                if (n6 == 0) {
                    n7 = n3;
                    break Label_0209;
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
            n10 = n9 / 2 - resources.getDimensionPixelSize(2131427449) / 2 - resources.getDimensionPixelSize(2131427452);
        }
        else {
            n10 = n9 / 2 - resources.getDimensionPixelSize(2131427451) / 2 - resources.getDimensionPixelSize(2131427453);
        }
        if (!this.mIsLeftAligned) {
            n10 = -n10;
        }
        final int n11 = n8 + n10;
        int n12;
        if (bubbleTextView.getIcon() != null) {
            n12 = bubbleTextView.getIcon().getBounds().height();
        }
        else {
            n12 = bubbleTextView.getHeight();
        }
        final int n13 = this.mTempRect.top + bubbleTextView.getPaddingTop() - n2;
        int n14;
        if (!(this.mIsAboveIcon = (n13 > dragLayer.getTop() + insets.top))) {
            n14 = n12 + (this.mTempRect.top + bubbleTextView.getPaddingTop());
        }
        else {
            n14 = n13;
        }
        int n15;
        if (this.mIsRtl) {
            n15 = insets.right + n11;
        }
        else {
            n15 = n11 - insets.left;
        }
        final int n16 = n14 - insets.top;
        this.mGravity = 0;
        int n17;
        if (n16 + n2 > dragLayer.getBottom() - insets.bottom) {
            this.mGravity = 16;
            n17 = n3 + n9 - insets.left;
            final int n18 = n4 - n9 - insets.left;
            if (!this.mIsRtl) {
                if (n17 + measuredWidth < dragLayer.getRight()) {
                    this.mIsLeftAligned = true;
                }
                else {
                    this.mIsLeftAligned = false;
                    n17 = n18;
                }
            }
            else if (n18 > dragLayer.getLeft()) {
                this.mIsLeftAligned = false;
                n17 = n18;
            }
            else {
                this.mIsLeftAligned = true;
            }
            this.mIsAboveIcon = true;
        }
        else {
            n17 = n15;
        }
        this.setX((float)n17);
        this.setY((float)n16);
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
        final PopupContainerWithArrow popupContainerWithArrow = (PopupContainerWithArrow)launcher.getLayoutInflater().inflate(2130968612, (ViewGroup)launcher.getDragLayer(), false);
        popupContainerWithArrow.setVisibility(4);
        launcher.getDragLayer().addView((View)popupContainerWithArrow);
        popupContainerWithArrow.populateAndShow(bubbleTextView, shortcutIdsForItem, notificationKeysForItem, enabledSystemShortcutsForItem);
        return popupContainerWithArrow;
    }
    
    private void updateNotificationHeader() {
        final BadgeInfo badgeInfoForItem = this.mLauncher.getPopupDataProvider().getBadgeInfoForItem((ItemInfo)this.mOriginalIcon.getTag());
        if (this.mNotificationItemView != null && badgeInfoForItem != null) {
            this.mNotificationItemView.updateHeader(badgeInfoForItem.getNotificationCount(), this.mOriginalIcon.getBadgePalette());
        }
    }
    
    public Animator adjustItemHeights(final int n, final int n2, final int n3) {
        final int n4 = 1;
        if (this.mReduceHeightAnimatorSet != null) {
            this.mReduceHeightAnimatorSet.cancel();
        }
        int n5;
        if (this.mIsAboveIcon) {
            n5 = n - n2;
        }
        else {
            n5 = -n;
        }
        this.mReduceHeightAnimatorSet = LauncherAnimUtils.createAnimatorSet();
        int n6;
        if (n == this.mNotificationItemView.getHeightMinusFooter()) {
            n6 = n4;
        }
        else {
            n6 = 0;
        }
        int n7;
        if (this.mIsAboveIcon) {
            n7 = n6;
        }
        else {
            n7 = 0;
        }
        this.mReduceHeightAnimatorSet.play(this.mNotificationItemView.animateHeightRemoval(n, (boolean)(n7 != 0)));
        final PropertyResetListener propertyResetListener = new PropertyResetListener(PopupContainerWithArrow.TRANSLATION_Y, 0.0f);
        int i = 0;
        int n8 = 0;
        while (i < this.getItemCount()) {
            final PopupItemView itemView = this.getItemViewAt(i);
            if (n8 != 0) {
                itemView.setTranslationY(itemView.getTranslationY() - n2);
            }
            if (itemView != this.mNotificationItemView || (this.mIsAboveIcon && n6 == 0)) {
                final Property translation_Y = PopupContainerWithArrow.TRANSLATION_Y;
                final float[] array = new float[n4];
                array[0] = itemView.getTranslationY() + n5;
                final ObjectAnimator setDuration = ObjectAnimator.ofFloat((Object)itemView, translation_Y, array).setDuration((long)n3);
                ((ValueAnimator)setDuration).addListener((Animator$AnimatorListener)propertyResetListener);
                this.mReduceHeightAnimatorSet.play((Animator)setDuration);
                if (itemView == this.mShortcutsItemView) {
                    n8 = n4;
                }
            }
            ++i;
        }
        if (this.mIsAboveIcon) {
            this.mArrow.setTranslationY(this.mArrow.getTranslationY() - n2);
        }
        this.mReduceHeightAnimatorSet.addListener((Animator$AnimatorListener)new PopupContainerWithArrow$4(this, n5));
        return (Animator)this.mReduceHeightAnimatorSet;
    }
    
    protected void animateClose() {
        final int n = 1;
        if (!this.mIsOpen) {
            return;
        }
        this.mEndRect.setEmpty();
        if (this.mOpenCloseAnimator != null) {
            final Outline outline = new Outline();
            this.getOutlineProvider().getOutline((View)this, outline);
            outline.getRect(this.mEndRect);
            this.mOpenCloseAnimator.cancel();
        }
        this.mIsOpen = false;
        final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
        final long duration = this.getResources().getInteger(2131558423);
        final AccelerateDecelerateInterpolator accelerateDecelerateInterpolator = new AccelerateDecelerateInterpolator();
        int i = 0;
        int n2 = 0;
        while (i < this.getItemCount()) {
            n2 += this.getItemViewAt(i).getMeasuredHeight();
            ++i;
        }
        final Point computeAnimStartPoint = this.computeAnimStartPoint(n2);
        int n3;
        if (this.mIsAboveIcon) {
            n3 = this.getPaddingTop();
        }
        else {
            n3 = computeAnimStartPoint.y;
        }
        final float backgroundRadius = this.getItemViewAt(0).getBackgroundRadius();
        this.mStartRect.set(computeAnimStartPoint.x, computeAnimStartPoint.y, computeAnimStartPoint.x, computeAnimStartPoint.y);
        if (this.mEndRect.isEmpty()) {
            this.mEndRect.set(0, n3, this.getMeasuredWidth(), n2 + n3);
        }
        final ValueAnimator revealAnimator = new RoundedRectRevealOutlineProvider(backgroundRadius, backgroundRadius, this.mStartRect, this.mEndRect).createRevealAnimator((View)this, n != 0);
        revealAnimator.setDuration(duration);
        revealAnimator.setInterpolator((TimeInterpolator)accelerateDecelerateInterpolator);
        animatorSet.play((Animator)revealAnimator);
        final Property alpha = PopupContainerWithArrow.ALPHA;
        final float[] array = new float[n];
        array[0] = 0.0f;
        final ObjectAnimator ofFloat = ObjectAnimator.ofFloat((Object)this, alpha, array);
        ((Animator)ofFloat).setDuration(duration);
        ((Animator)ofFloat).setInterpolator((TimeInterpolator)accelerateDecelerateInterpolator);
        animatorSet.play((Animator)ofFloat);
        final ObjectAnimator textAlphaAnimator = this.mOriginalIcon.createTextAlphaAnimator(n != 0);
        ((Animator)textAlphaAnimator).setDuration(duration);
        animatorSet.play((Animator)textAlphaAnimator);
        animatorSet.addListener((Animator$AnimatorListener)new PopupContainerWithArrow$5(this));
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
        this.mOriginalIcon.setTextVisibility(this.mOriginalIcon.shouldTextBeVisible());
        this.mOriginalIcon.forceHideBadge(false);
        this.mLauncher.getDragController().removeDragListener(this);
        this.mLauncher.getDragLayer().removeView((View)this);
    }
    
    public DragOptions$PreDragCondition createPreDragCondition() {
        return new PopupContainerWithArrow$2(this);
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
    
    protected void onLayout(final boolean b, final int n, final int n2, final int n3, final int n4) {
        super.onLayout(b, n, n2, n3, n4);
        this.enforceContainedWithinScreen(n, n3);
    }
    
    protected void onWidgetsBound() {
        if (this.mShortcutsItemView != null) {
            this.mShortcutsItemView.enableWidgetsIfExist(this.mOriginalIcon);
        }
    }
    
    public void populateAndShow(final BubbleTextView mOriginalIcon, final List list, final List list2, final List list3) {
        final Resources resources = this.getResources();
        final int dimensionPixelSize = resources.getDimensionPixelSize(2131427454);
        final int dimensionPixelSize2 = resources.getDimensionPixelSize(2131427455);
        final int dimensionPixelSize3 = resources.getDimensionPixelSize(2131427456);
        this.mOriginalIcon = mOriginalIcon;
        final PopupPopulator$Item[] itemsToPopulate = PopupPopulator.getItemsToPopulate(list, list2, list3);
        this.addDummyViews(itemsToPopulate, list2.size());
        this.measure(0, 0);
        this.orientAboutIcon(mOriginalIcon, dimensionPixelSize2 + dimensionPixelSize3);
        final boolean mIsAboveIcon = this.mIsAboveIcon;
        if (mIsAboveIcon) {
            this.removeAllViews();
            this.mNotificationItemView = null;
            this.mShortcutsItemView = null;
            this.addDummyViews(PopupPopulator.reverseItems(itemsToPopulate), list2.size());
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
            this.setContentDescription((CharSequence)this.getContext().getString(2131492999, new Object[] { n, mOriginalIcon.getContentDescription().toString() }));
        }
        else {
            this.setContentDescription((CharSequence)this.getContext().getString(2131493000, new Object[] { n, size, mOriginalIcon.getContentDescription().toString() }));
        }
        int n2;
        if (this.isAlignedWithStart()) {
            n2 = 2131427459;
        }
        else {
            n2 = 2131427460;
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
        this.measure(0, 0);
        this.animateOpen();
        this.mLauncher.getDragController().addDragListener(this);
        this.mOriginalIcon.forceHideBadge(true);
        new Handler(LauncherModel.getWorkerLooper()).postAtFrontOfQueue(PopupPopulator.createUpdateRunnable(this.mLauncher, itemInfo, new Handler(Looper.getMainLooper()), this, list, list4, list2, this.mNotificationItemView, list3, list5));
    }
    
    public Animator reduceNotificationViewHeight(final int n, final int n2) {
        return this.adjustItemHeights(n, 0, n2);
    }
    
    public boolean supportsAppInfoDropTarget() {
        return true;
    }
    
    public boolean supportsDeleteDropTarget() {
        return false;
    }
    
    public void trimNotifications(final Map map) {
        final int n = 1;
        if (this.mNotificationItemView == null) {
            return;
        }
        final BadgeInfo badgeInfo = map.get(PackageUserKey.fromItemInfo((ItemInfo)this.mOriginalIcon.getTag()));
        if (badgeInfo == null || badgeInfo.getNotificationKeys().size() == 0) {
            final AnimatorSet animatorSet = LauncherAnimUtils.createAnimatorSet();
            int hiddenShortcutsHeight;
            if (this.mShortcutsItemView != null) {
                hiddenShortcutsHeight = this.mShortcutsItemView.getHiddenShortcutsHeight();
                this.mShortcutsItemView.setBackgroundWithCorners(Themes.getAttrColor((Context)this.mLauncher, 2130772007), 3);
                animatorSet.play(this.mShortcutsItemView.showAllShortcuts(this.mIsAboveIcon));
            }
            else {
                hiddenShortcutsHeight = 0;
            }
            final int integer = this.getResources().getInteger(2131558425);
            animatorSet.play(this.adjustItemHeights(this.mNotificationItemView.getHeightMinusFooter(), hiddenShortcutsHeight, integer));
            final NotificationItemView mNotificationItemView = this.mNotificationItemView;
            final Property alpha = PopupContainerWithArrow.ALPHA;
            final float[] array = new float[n];
            array[0] = 0.0f;
            final ObjectAnimator setDuration = ObjectAnimator.ofFloat((Object)mNotificationItemView, alpha, array).setDuration((long)integer);
            ((Animator)setDuration).addListener((Animator$AnimatorListener)new PopupContainerWithArrow$3(this));
            animatorSet.play((Animator)setDuration);
            final long n2 = this.getResources().getInteger(2131558424);
            final ObjectAnimator setDuration2 = this.createArrowScaleAnim(0.0f).setDuration(n2);
            ((Animator)setDuration2).setStartDelay(0L);
            final ObjectAnimator setDuration3 = this.createArrowScaleAnim(1.0f).setDuration(n2);
            ((Animator)setDuration3).setStartDelay((long)(integer - n2 * 1.5));
            final Animator[] array2 = { setDuration2, null };
            array2[n] = (Animator)setDuration3;
            animatorSet.playSequentially(array2);
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
