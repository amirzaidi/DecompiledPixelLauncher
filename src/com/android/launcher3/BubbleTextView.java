// 
// Decompiled by Procyon v0.5.30
// 

package com.android.launcher3;

import com.android.launcher3.folder.FolderIcon;
import android.content.res.ColorStateList;
import android.view.ViewParent;
import android.graphics.drawable.ColorDrawable;
import com.android.launcher3.folder.FolderIconPreviewVerifier;
import android.view.MotionEvent;
import android.graphics.Paint$FontMetrics;
import android.view.View$MeasureSpec;
import android.view.KeyEvent;
import android.graphics.Canvas;
import java.text.NumberFormat;
import com.android.launcher3.graphics.PreloadIconDrawable;
import com.android.launcher3.model.PackageItemInfo;
import android.animation.ObjectAnimator;
import android.support.v4.b.a;
import android.graphics.Color;
import com.android.launcher3.graphics.DrawableFactory;
import android.content.res.TypedArray;
import android.view.View$AccessibilityDelegate;
import android.view.View;
import android.view.ViewConfiguration;
import android.util.AttributeSet;
import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.Bitmap;
import com.android.launcher3.graphics.HolographicOutlineHelper;
import android.graphics.drawable.Drawable;
import com.android.launcher3.badge.BadgeRenderer;
import com.android.launcher3.graphics.IconPalette;
import com.android.launcher3.badge.BadgeInfo;
import android.util.Property;
import android.widget.TextView;

public class BubbleTextView extends TextView implements IconCache$ItemInfoUpdateReceiver
{
    private static final Property BADGE_SCALE_PROPERTY;
    private static final int[] STATE_PRESSED;
    public static final Property TEXT_ALPHA_PROPERTY;
    private BadgeInfo mBadgeInfo;
    private IconPalette mBadgePalette;
    private BadgeRenderer mBadgeRenderer;
    private float mBadgeScale;
    private final boolean mCenterVertically;
    private final boolean mDeferShadowGenerationOnTouch;
    private boolean mDisableRelayout;
    private boolean mForceHideBadge;
    private Drawable mIcon;
    private IconCache$IconLoadRequest mIconLoadRequest;
    private final int mIconSize;
    private boolean mIgnorePressedStateChange;
    private boolean mIsIconVisible;
    private final Launcher mLauncher;
    private final boolean mLayoutHorizontal;
    private final CheckLongPressHelper mLongPressHelper;
    private final HolographicOutlineHelper mOutlineHelper;
    private Bitmap mPressedBackground;
    private final float mSlop;
    private boolean mStayPressed;
    private final StylusEventHelper mStylusEventHelper;
    private Rect mTempIconBounds;
    private Point mTempSpaceForBadgeOffset;
    private int mTextColor;
    
    static {
        STATE_PRESSED = new int[] { 16842919 };
        BADGE_SCALE_PROPERTY = new BubbleTextView$1(Float.TYPE, "badgeScale");
        TEXT_ALPHA_PROPERTY = new BubbleTextView$2(Integer.class, "textAlpha");
    }
    
    public BubbleTextView(final Context context) {
        this(context, null, 0);
    }
    
    public BubbleTextView(final Context context, final AttributeSet set) {
        this(context, set, 0);
    }
    
    public BubbleTextView(final Context context, final AttributeSet set, final int n) {
        final int n2 = 2;
        final int mIsIconVisible = 1;
        super(context, set, n);
        this.mIsIconVisible = (mIsIconVisible != 0);
        this.mTempSpaceForBadgeOffset = new Point();
        this.mTempIconBounds = new Rect();
        this.mDisableRelayout = false;
        this.mLauncher = Launcher.getLauncher(context);
        final DeviceProfile deviceProfile = this.mLauncher.getDeviceProfile();
        this.mSlop = ViewConfiguration.get(this.getContext()).getScaledTouchSlop();
        final TypedArray obtainStyledAttributes = context.obtainStyledAttributes(set, R$styleable.BubbleTextView, n, 0);
        this.mLayoutHorizontal = obtainStyledAttributes.getBoolean(0, false);
        this.mDeferShadowGenerationOnTouch = obtainStyledAttributes.getBoolean(3, false);
        final int integer = obtainStyledAttributes.getInteger(n2, 0);
        int n3 = deviceProfile.iconSizePx;
        if (integer == 0) {
            this.setTextSize(0, (float)deviceProfile.iconTextSizePx);
            this.setCompoundDrawablePadding(deviceProfile.iconDrawablePaddingPx);
        }
        else if (integer == mIsIconVisible) {
            this.setTextSize(0, deviceProfile.allAppsIconTextSizePx);
            this.setCompoundDrawablePadding(deviceProfile.allAppsIconDrawablePaddingPx);
            n3 = deviceProfile.allAppsIconSizePx;
        }
        else if (integer == n2) {
            this.setTextSize(0, (float)deviceProfile.folderChildTextSizePx);
            this.setCompoundDrawablePadding(deviceProfile.folderChildDrawablePaddingPx);
            n3 = deviceProfile.folderChildIconSizePx;
        }
        this.mCenterVertically = obtainStyledAttributes.getBoolean(4, false);
        this.mIconSize = obtainStyledAttributes.getDimensionPixelSize(mIsIconVisible, n3);
        obtainStyledAttributes.recycle();
        this.mLongPressHelper = new CheckLongPressHelper((View)this);
        this.mStylusEventHelper = new StylusEventHelper(new SimpleOnStylusPressListener((View)this), (View)this);
        this.mOutlineHelper = HolographicOutlineHelper.getInstance(this.getContext());
        this.setAccessibilityDelegate((View$AccessibilityDelegate)this.mLauncher.getAccessibilityDelegate());
    }
    
    private void applyIconAndLabel(final Bitmap bitmap, final ItemInfo itemInfo) {
        final FastBitmapDrawable icon = DrawableFactory.get(this.getContext()).newIcon(bitmap, itemInfo);
        icon.setIsDisabled(itemInfo.isDisabled());
        this.setIcon(icon);
        this.setText(itemInfo.title);
        if (itemInfo.contentDescription != null) {
            CharSequence contentDescription;
            if (itemInfo.isDisabled()) {
                contentDescription = this.getContext().getString(2131492933, new Object[] { itemInfo.contentDescription });
            }
            else {
                contentDescription = itemInfo.contentDescription;
            }
            this.setContentDescription(contentDescription);
        }
    }
    
    private int getTextAlpha() {
        return Color.alpha(this.getCurrentTextColor());
    }
    
    private boolean hasBadge() {
        return this.mBadgeInfo != null;
    }
    
    private void setIcon(final Drawable mIcon) {
        (this.mIcon = mIcon).setBounds(0, 0, this.mIconSize, this.mIconSize);
        if (this.mIsIconVisible) {
            this.applyCompoundDrawables(this.mIcon);
        }
    }
    
    private void setTextAlpha(final int n) {
        super.setTextColor(a.asb(this.mTextColor, n));
    }
    
    public void applyBadgeState(final ItemInfo itemInfo, final boolean b) {
        final int n = 1;
        if (this.mIcon instanceof FastBitmapDrawable) {
            int n2;
            if (this.mBadgeInfo != null) {
                n2 = n;
            }
            else {
                n2 = 0;
            }
            this.mBadgeInfo = this.mLauncher.getPopupDataProvider().getBadgeInfoForItem(itemInfo);
            int n3;
            if (this.mBadgeInfo != null) {
                n3 = n;
            }
            else {
                n3 = 0;
            }
            float mBadgeScale;
            if (n3 != 0) {
                mBadgeScale = 1.0f;
            }
            else {
                mBadgeScale = 0.0f;
            }
            this.mBadgeRenderer = this.mLauncher.getDeviceProfile().mBadgeRenderer;
            if (n2 != 0 || n3 != 0) {
                this.mBadgePalette = IconPalette.getBadgePalette(this.getResources());
                if (this.mBadgePalette == null) {
                    this.mBadgePalette = ((FastBitmapDrawable)this.mIcon).getIconPalette();
                }
                if (b && (n2 ^ n3) != 0x0 && this.isShown()) {
                    final Property badge_SCALE_PROPERTY = BubbleTextView.BADGE_SCALE_PROPERTY;
                    final float[] array = new float[n];
                    array[0] = mBadgeScale;
                    ObjectAnimator.ofFloat((Object)this, badge_SCALE_PROPERTY, array).start();
                }
                else {
                    this.mBadgeScale = mBadgeScale;
                    this.invalidate();
                }
            }
        }
    }
    
    protected void applyCompoundDrawables(final Drawable drawable) {
        if (this.mLayoutHorizontal) {
            this.setCompoundDrawablesRelative(drawable, (Drawable)null, (Drawable)null, (Drawable)null);
        }
        else {
            this.setCompoundDrawables((Drawable)null, drawable, (Drawable)null, (Drawable)null);
        }
    }
    
    public void applyFromApplicationInfo(final AppInfo tag) {
        this.applyIconAndLabel(tag.iconBitmap, tag);
        super.setTag((Object)tag);
        this.verifyHighRes();
        if (tag instanceof PromiseAppInfo) {
            this.applyProgressLevel(((PromiseAppInfo)tag).level);
        }
        this.applyBadgeState(tag, false);
    }
    
    public void applyFromPackageItemInfo(final PackageItemInfo tag) {
        this.applyIconAndLabel(tag.iconBitmap, tag);
        super.setTag((Object)tag);
        this.verifyHighRes();
    }
    
    public void applyFromShortcutInfo(final ShortcutInfo shortcutInfo) {
        this.applyFromShortcutInfo(shortcutInfo, false);
    }
    
    public void applyFromShortcutInfo(final ShortcutInfo tag, final boolean b) {
        this.applyIconAndLabel(tag.iconBitmap, tag);
        this.setTag(tag);
        if (b || tag.isPromise()) {
            this.applyPromiseState(b);
        }
        this.applyBadgeState(tag, false);
    }
    
    public PreloadIconDrawable applyProgressLevel(final int n) {
        final int n2 = 1;
        if (this.getTag() instanceof ItemInfoWithIcon) {
            final ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon)this.getTag();
            String contentDescription;
            if (n > 0) {
                final Context context = this.getContext();
                final Object[] array = { itemInfoWithIcon.title, null };
                array[n2] = NumberFormat.getPercentInstance().format(n * 0.01);
                contentDescription = context.getString(2131492971, array);
            }
            else {
                final Context context2 = this.getContext();
                final Object[] array2 = new Object[n2];
                array2[0] = itemInfoWithIcon.title;
                contentDescription = context2.getString(2131492972, array2);
            }
            this.setContentDescription((CharSequence)contentDescription);
            if (this.mIcon != null) {
                PreloadIconDrawable pendingIcon;
                if (this.mIcon instanceof PreloadIconDrawable) {
                    pendingIcon = (PreloadIconDrawable)this.mIcon;
                    pendingIcon.setLevel(n);
                }
                else {
                    pendingIcon = DrawableFactory.get(this.getContext()).newPendingIcon(itemInfoWithIcon.iconBitmap, this.getContext());
                    pendingIcon.setLevel(n);
                    this.setIcon(pendingIcon);
                }
                return pendingIcon;
            }
        }
        return null;
    }
    
    public void applyPromiseState(final boolean b) {
        if (this.getTag() instanceof ShortcutInfo) {
            final ShortcutInfo shortcutInfo = (ShortcutInfo)this.getTag();
            int installProgress;
            if (shortcutInfo.isPromise()) {
                if (shortcutInfo.hasStatusFlag(4)) {
                    installProgress = shortcutInfo.getInstallProgress();
                }
                else {
                    installProgress = 0;
                }
            }
            else {
                installProgress = 100;
            }
            final PreloadIconDrawable applyProgressLevel = this.applyProgressLevel(installProgress);
            if (applyProgressLevel != null && b) {
                applyProgressLevel.maybePerformFinishedAnimation();
            }
        }
    }
    
    public void cancelLongPress() {
        super.cancelLongPress();
        this.mLongPressHelper.cancelLongPress();
    }
    
    void clearPressedBackground() {
        this.setPressed(false);
        this.setStayPressed(false);
    }
    
    public ObjectAnimator createTextAlphaAnimator(final boolean b) {
        int alpha;
        if (this.shouldTextBeVisible() && b) {
            alpha = Color.alpha(this.mTextColor);
        }
        else {
            alpha = 0;
        }
        return ObjectAnimator.ofInt((Object)this, BubbleTextView.TEXT_ALPHA_PROPERTY, new int[] { alpha });
    }
    
    protected void drawBadgeIfNecessary(final Canvas canvas) {
        if (!this.mForceHideBadge && (this.hasBadge() || this.mBadgeScale > 0.0f)) {
            this.getIconBounds(this.mTempIconBounds);
            this.mTempSpaceForBadgeOffset.set((this.getWidth() - this.mIconSize) / 2, this.getPaddingTop());
            final int scrollX = this.getScrollX();
            final int scrollY = this.getScrollY();
            canvas.translate((float)scrollX, (float)scrollY);
            this.mBadgeRenderer.draw(canvas, this.mBadgePalette, this.mBadgeInfo, this.mTempIconBounds, this.mBadgeScale, this.mTempSpaceForBadgeOffset);
            canvas.translate((float)(-scrollX), (float)(-scrollY));
        }
    }
    
    protected void drawWithoutBadge(final Canvas canvas) {
        super.onDraw(canvas);
    }
    
    public void forceHideBadge(final boolean mForceHideBadge) {
        if (this.mForceHideBadge == mForceHideBadge) {
            return;
        }
        this.mForceHideBadge = mForceHideBadge;
        if (mForceHideBadge) {
            this.invalidate();
        }
        else if (this.hasBadge()) {
            ObjectAnimator.ofFloat((Object)this, BubbleTextView.BADGE_SCALE_PROPERTY, new float[] { 0.0f, 1.0f }).start();
        }
    }
    
    public IconPalette getBadgePalette() {
        return this.mBadgePalette;
    }
    
    public Drawable getIcon() {
        return this.mIcon;
    }
    
    public void getIconBounds(final Rect rect) {
        final int paddingTop = this.getPaddingTop();
        final int n = (this.getWidth() - this.mIconSize) / 2;
        rect.set(n, paddingTop, this.mIconSize + n, this.mIconSize + paddingTop);
    }
    
    public int getIconSize() {
        return this.mIconSize;
    }
    
    protected int[] onCreateDrawableState(final int n) {
        final int[] onCreateDrawableState = super.onCreateDrawableState(n + 1);
        if (this.mStayPressed) {
            mergeDrawableStates(onCreateDrawableState, BubbleTextView.STATE_PRESSED);
        }
        return onCreateDrawableState;
    }
    
    public void onDraw(final Canvas canvas) {
        super.onDraw(canvas);
        this.drawBadgeIfNecessary(canvas);
    }
    
    public boolean onKeyDown(final int n, final KeyEvent keyEvent) {
        if (super.onKeyDown(n, keyEvent)) {
            if (this.mPressedBackground == null) {
                this.mPressedBackground = this.mOutlineHelper.createMediumDropShadow(this);
            }
            return true;
        }
        return false;
    }
    
    public boolean onKeyUp(final int n, final KeyEvent keyEvent) {
        this.mIgnorePressedStateChange = true;
        final boolean onKeyUp = super.onKeyUp(n, keyEvent);
        this.mPressedBackground = null;
        this.mIgnorePressedStateChange = false;
        this.refreshDrawableState();
        return onKeyUp;
    }
    
    protected void onMeasure(final int n, final int n2) {
        if (this.mCenterVertically) {
            final Paint$FontMetrics fontMetrics = this.getPaint().getFontMetrics();
            this.setPadding(this.getPaddingLeft(), (View$MeasureSpec.getSize(n2) - ((int)Math.ceil(fontMetrics.bottom - fontMetrics.top) + (this.mIconSize + this.getCompoundDrawablePadding()))) / 2, this.getPaddingRight(), this.getPaddingBottom());
        }
        super.onMeasure(n, n2);
    }
    
    public boolean onTouchEvent(final MotionEvent motionEvent) {
        boolean onTouchEvent = super.onTouchEvent(motionEvent);
        if (this.mStylusEventHelper.onMotionEvent(motionEvent)) {
            this.mLongPressHelper.cancelLongPress();
            onTouchEvent = true;
        }
        switch (motionEvent.getAction()) {
            case 0: {
                if (!this.mDeferShadowGenerationOnTouch && this.mPressedBackground == null) {
                    this.mPressedBackground = this.mOutlineHelper.createMediumDropShadow(this);
                }
                if (!this.mStylusEventHelper.inStylusButtonPressed()) {
                    this.mLongPressHelper.postCheckForLongPress();
                    break;
                }
                break;
            }
            case 1:
            case 3: {
                if (!this.isPressed()) {
                    this.mPressedBackground = null;
                }
                this.mLongPressHelper.cancelLongPress();
                break;
            }
            case 2: {
                if (!Utilities.pointInView((View)this, motionEvent.getX(), motionEvent.getY(), this.mSlop)) {
                    this.mLongPressHelper.cancelLongPress();
                    break;
                }
                break;
            }
        }
        return onTouchEvent;
    }
    
    public void reapplyItemInfo(final ItemInfoWithIcon itemInfoWithIcon) {
        if (this.getTag() == itemInfoWithIcon) {
            this.mIconLoadRequest = null;
            this.mDisableRelayout = true;
            itemInfoWithIcon.iconBitmap.prepareToDraw();
            if (itemInfoWithIcon instanceof AppInfo) {
                this.applyFromApplicationInfo((AppInfo)itemInfoWithIcon);
            }
            else if (itemInfoWithIcon instanceof ShortcutInfo) {
                this.applyFromShortcutInfo((ShortcutInfo)itemInfoWithIcon);
                if (new FolderIconPreviewVerifier(this.mLauncher.getDeviceProfile().inv).isItemInPreview(itemInfoWithIcon.rank) && itemInfoWithIcon.container >= 0L) {
                    final View homescreenIconByItemId = this.mLauncher.getWorkspace().getHomescreenIconByItemId(itemInfoWithIcon.container);
                    if (homescreenIconByItemId != null) {
                        homescreenIconByItemId.invalidate();
                    }
                }
            }
            else if (itemInfoWithIcon instanceof PackageItemInfo) {
                this.applyFromPackageItemInfo((PackageItemInfo)itemInfoWithIcon);
            }
            this.mDisableRelayout = false;
        }
    }
    
    public void refreshDrawableState() {
        if (!this.mIgnorePressedStateChange) {
            super.refreshDrawableState();
        }
    }
    
    public void requestLayout() {
        if (!this.mDisableRelayout) {
            super.requestLayout();
        }
    }
    
    public void setIconVisible(final boolean mIsIconVisible) {
        this.mIsIconVisible = mIsIconVisible;
        this.mDisableRelayout = true;
        Object mIcon = this.mIcon;
        if (!mIsIconVisible) {
            mIcon = new ColorDrawable(0);
            ((Drawable)mIcon).setBounds(0, 0, this.mIconSize, this.mIconSize);
        }
        this.applyCompoundDrawables((Drawable)mIcon);
        this.mDisableRelayout = false;
    }
    
    public void setLongPressTimeout(final int longPressTimeout) {
        this.mLongPressHelper.setLongPressTimeout(longPressTimeout);
    }
    
    void setStayPressed(final boolean mStayPressed) {
        if (!(this.mStayPressed = mStayPressed)) {
            HolographicOutlineHelper.getInstance(this.getContext()).recycleShadowBitmap(this.mPressedBackground);
            this.mPressedBackground = null;
        }
        else if (this.mPressedBackground == null) {
            this.mPressedBackground = this.mOutlineHelper.createMediumDropShadow(this);
        }
        final ViewParent parent = this.getParent();
        if (parent != null && parent.getParent() instanceof BubbleTextView$BubbleTextShadowHandler) {
            ((BubbleTextView$BubbleTextShadowHandler)parent.getParent()).setPressedIcon(this, this.mPressedBackground);
        }
        this.refreshDrawableState();
    }
    
    public void setTag(final Object tag) {
        if (tag != null) {
            LauncherModel.checkItemInfo((ItemInfo)tag);
        }
        super.setTag(tag);
    }
    
    public void setTextColor(final int mTextColor) {
        super.setTextColor(this.mTextColor = mTextColor);
    }
    
    public void setTextColor(final ColorStateList textColor) {
        this.mTextColor = textColor.getDefaultColor();
        super.setTextColor(textColor);
    }
    
    public void setTextVisibility(final boolean b) {
        if (b) {
            super.setTextColor(this.mTextColor);
        }
        else {
            this.setTextAlpha(0);
        }
    }
    
    public boolean shouldTextBeVisible() {
        final boolean b = true;
        Object o;
        if (this.getParent() instanceof FolderIcon) {
            o = ((View)this.getParent()).getTag();
        }
        else {
            o = this.getTag();
        }
        ItemInfo itemInfo;
        if (o instanceof ItemInfo) {
            itemInfo = (ItemInfo)o;
        }
        else {
            itemInfo = null;
        }
        return (itemInfo == null || itemInfo.container != -101) && b;
    }
    
    public void verifyHighRes() {
        if (this.mIconLoadRequest != null) {
            this.mIconLoadRequest.cancel();
            this.mIconLoadRequest = null;
        }
        if (this.getTag() instanceof ItemInfoWithIcon) {
            final ItemInfoWithIcon itemInfoWithIcon = (ItemInfoWithIcon)this.getTag();
            if (itemInfoWithIcon.usingLowResIcon) {
                this.mIconLoadRequest = LauncherAppState.getInstance(this.getContext()).getIconCache().updateIconInBackground(this, itemInfoWithIcon);
            }
        }
    }
}
