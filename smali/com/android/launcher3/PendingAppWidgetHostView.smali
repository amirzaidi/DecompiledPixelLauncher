.class public Lcom/android/launcher3/PendingAppWidgetHostView;
.super Lcom/android/launcher3/LauncherAppWidgetHostView;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefaultView:Landroid/view/View;

.field private final mDisabledForSafeMode:Z

.field private mDrawableSizeChanged:Z

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetupTextLayout:Landroid/text/Layout;

.field private final mStartState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/LauncherAppWidgetInfo;Lcom/android/launcher3/IconCache;Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 65
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f120002

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    .line 67
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 68
    iput-object p2, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 69
    iget v0, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    iput v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mStartState:I

    .line 70
    iput-boolean p4, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    .line 72
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1010036

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 75
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->iconTextSizePx:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 74
    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 76
    const v0, 0x7f02004a

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PendingAppWidgetHostView;->setBackgroundResource(I)V

    .line 77
    invoke-virtual {p0, v3}, Lcom/android/launcher3/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PendingAppWidgetHostView;->setElevation(F)V

    .line 80
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PendingAppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 81
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/PendingAppWidgetHostView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    new-instance v0, Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/model/PackageItemInfo;-><init>(Ljava/lang/String;)V

    .line 85
    iget-object v1, p2, Lcom/android/launcher3/LauncherAppWidgetInfo;->user:Landroid/os/UserHandle;

    iput-object v1, v0, Lcom/android/launcher3/model/PackageItemInfo;->user:Landroid/os/UserHandle;

    .line 86
    invoke-virtual {p3, p0, v0}, Lcom/android/launcher3/IconCache;->updateIconInBackground(Lcom/android/launcher3/IconCache$ItemInfoUpdateReceiver;Lcom/android/launcher3/ItemInfoWithIcon;)Lcom/android/launcher3/IconCache$IconLoadRequest;

    .line 87
    return-void
.end method

.method private updateDrawableBounds()V
    .locals 15

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v9

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v10

    .line 211
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v0

    .line 212
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v11

    .line 213
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v1

    .line 215
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 216
    const v3, 0x7f0b0067

    .line 215
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v11

    sub-int v1, v2, v1

    mul-int/lit8 v2, v12, 0x2

    sub-int v3, v1, v2

    .line 219
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v10

    sub-int v0, v1, v0

    mul-int/lit8 v1, v12, 0x2

    sub-int v13, v0, v1

    .line 221
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    .line 222
    iget v0, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    .line 223
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 226
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 227
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 284
    :cond_0
    :goto_0
    return-void

    .line 229
    :cond_1
    invoke-static {v3, v13}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    .line 234
    invoke-static {v3, v13}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 233
    const v2, 0x3fe66666    # 1.8f

    .line 235
    mul-float/2addr v2, v0

    int-to-float v4, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    .line 237
    int-to-float v0, v1

    .line 233
    const v1, 0x3fe66666    # 1.8f

    .line 237
    div-float/2addr v0, v1

    .line 240
    :cond_2
    iget v1, v9, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v14, v0

    .line 243
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v0

    sub-int/2addr v0, v14

    div-int/lit8 v8, v0, 0x2

    .line 244
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 246
    if-lez v3, :cond_4

    .line 248
    new-instance v0, Landroid/text/StaticLayout;

    .line 249
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0040

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    .line 250
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 248
    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    .line 251
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    .line 254
    int-to-float v1, v0

    int-to-float v2, v14

    .line 233
    const v3, 0x3fe66666    # 1.8f

    .line 254
    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    .line 255
    iget v2, v9, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    int-to-float v2, v2

    .line 254
    add-float/2addr v1, v2

    .line 257
    int-to-float v2, v13

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 259
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getHeight()I

    move-result v1

    sub-int v0, v1, v0

    .line 260
    iget v1, v9, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    .line 259
    sub-int/2addr v0, v1

    sub-int/2addr v0, v14

    div-int/lit8 v0, v0, 0x2

    .line 268
    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v14, v14}, Landroid/graphics/Rect;->set(IIII)V

    .line 269
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v14

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Rect;->offset(II)V

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 272
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v1, v11, v12

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 273
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v14

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 274
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v1, v10, v12

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 275
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v14

    const v3, 0x3ecccccd    # 0.4f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 276
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 278
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v1, v11, v12

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 281
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget v2, v9, Lcom/android/launcher3/DeviceProfile;->iconDrawablePaddingPx:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    .line 264
    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    move v0, v8

    goto :goto_1

    :cond_4
    move v0, v8

    goto :goto_1
.end method

.method private updateSettingColor()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 162
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    const/16 v1, 0x14

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v0

    .line 164
    const/4 v1, 0x3

    new-array v1, v1, [F

    .line 165
    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 166
    aget v0, v1, v3

    const v2, 0x3f333333    # 0.7f

    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    aput v0, v1, v3

    .line 167
    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v2, 0x2

    aput v0, v1, v2

    .line 168
    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 171
    return-void
.end method


# virtual methods
.method public applyState()V
    .locals 3

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 182
    :cond_0
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    .line 99
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->applyState()V

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method public isReadyForClickSetup()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 203
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/LauncherAppWidgetInfo;->hasRestoreFlag(I)Z

    move-result v0

    .line 203
    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReinflateRequired()Z
    .locals 2

    .prologue
    .line 113
    iget v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mStartState:I

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 290
    return-void

    .line 293
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v0, :cond_1

    .line 294
    invoke-direct {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->updateDrawableBounds()V

    .line 295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 299
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 300
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_3

    .line 303
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 304
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 305
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 309
    :cond_3
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 118
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    .line 119
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 120
    return-void
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/ItemInfoWithIcon;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 124
    iget-object v0, p1, Lcom/android/launcher3/ItemInfoWithIcon;->iconBitmap:Landroid/graphics/Bitmap;

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-ne v1, v0, :cond_0

    .line 126
    return-void

    .line 128
    :cond_0
    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    .line 129
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 131
    iput-object v3, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 138
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    .line 139
    iget-boolean v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    if-eqz v1, :cond_3

    .line 140
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    .line 141
    invoke-virtual {v0, v4}, Lcom/android/launcher3/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 142
    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 143
    iput-object v3, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 156
    :goto_0
    iput-boolean v4, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    .line 158
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->invalidate()V

    .line 159
    return-void

    .line 144
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/graphics/DrawableFactory;->newIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/FastBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 148
    invoke-direct {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->updateSettingColor()V

    goto :goto_0

    .line 150
    :cond_4
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/graphics/DrawableFactory;->newPendingIcon(Landroid/graphics/Bitmap;Landroid/content/Context;)Lcom/android/launcher3/graphics/PreloadIconDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    .line 152
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 153
    iput-object v3, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/PendingAppWidgetHostView;->applyState()V

    goto :goto_0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .prologue
    .line 107
    iput-object p1, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    .line 108
    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/launcher3/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
