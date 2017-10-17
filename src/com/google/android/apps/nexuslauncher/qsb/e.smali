.class public abstract Lcom/google/android/apps/nexuslauncher/qsb/e;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field protected final cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field protected cc:I

.field protected cd:Landroid/view/View;

.field private final ce:Landroid/graphics/RectF;

.field private final cf:Landroid/graphics/Rect;

.field protected mShadowBitmap:Landroid/graphics/Bitmap;

.field protected final mShadowPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cf:Landroid/graphics/Rect;

    .line 56
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->ce:Landroid/graphics/RectF;

    .line 57
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mShadowPaint:Landroid/graphics/Paint;

    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cc:I

    .line 74
    invoke-static {p1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 75
    return-void
.end method

.method private bD(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V
    .locals 3

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cf:Landroid/graphics/Rect;

    iput p3, v0, Landroid/graphics/Rect;->left:I

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cf:Landroid/graphics/Rect;

    iput p4, v0, Landroid/graphics/Rect;->right:I

    .line 201
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->ce:Landroid/graphics/RectF;

    iput p5, v0, Landroid/graphics/RectF;->left:F

    .line 202
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->ce:Landroid/graphics/RectF;

    iput p6, v0, Landroid/graphics/RectF;->right:F

    .line 203
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cf:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->ce:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 204
    return-void
.end method

.method private bG(Landroid/content/SharedPreferences;)V
    .locals 3

    .prologue
    .line 264
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cd:Landroid/view/View;

    const-string/jumbo v0, "opa_enabled"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    const/16 v0, 0x8

    .line 264
    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->requestLayout()V

    .line 267
    return-void

    .line 265
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected final bA(I)V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->bo(I)V

    .line 271
    return-void
.end method

.method protected bB(FFI)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 207
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingBottom()I

    move-result v1

    sub-int v1, v0, v1

    .line 208
    add-int/lit8 v0, v1, 0x14

    .line 210
    new-instance v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;

    invoke-direct {v2, p3}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;-><init>(I)V

    .line 211
    iput p1, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->shadowBlur:F

    .line 212
    iput p2, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowDistance:F

    .line 213
    iget v3, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->ambientShadowAlpha:I

    iput v3, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->keyShadowAlpha:I

    .line 214
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->createPill(II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    const/16 v4, 0xff

    if-ge v3, v4, :cond_0

    .line 218
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 220
    new-instance v5, Landroid/graphics/PorterDuffXfermode;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 221
    iget-object v5, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    div-int/lit8 v6, v1, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v1, 0x2

    int-to-float v7, v7

    invoke-virtual {v3, v5, v6, v7, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 223
    invoke-virtual {v4, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 224
    invoke-virtual {v4, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 225
    iget-object v2, v2, Lcom/android/launcher3/graphics/ShadowGenerator$Builder;->bounds:Landroid/graphics/RectF;

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v3, v2, v5, v1, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 227
    invoke-virtual {v3, v8}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 230
    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 231
    sget-object v1, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    :cond_1
    return-object v0
.end method

.method protected bC(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 167
    add-int/lit8 v1, v0, 0x14

    .line 169
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 172
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cf:Landroid/graphics/Rect;

    iput v3, v4, Landroid/graphics/Rect;->top:I

    .line 173
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cf:Landroid/graphics/Rect;

    iput v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 175
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->ce:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingTop()I

    move-result v5

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v5, v0

    int-to-float v0, v0

    iput v0, v4, Landroid/graphics/RectF;->top:F

    .line 176
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->ce:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->ce:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    int-to-float v2, v2

    add-float/2addr v2, v4

    iput v2, v0, Landroid/graphics/RectF;->bottom:F

    .line 178
    sub-int v0, v10, v1

    div-int/lit8 v0, v0, 0x2

    int-to-float v7, v0

    .line 179
    div-int/lit8 v4, v10, 0x2

    .line 182
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    sub-float v5, v0, v7

    .line 183
    int-to-float v0, v4

    add-float v6, v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bD(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    .line 186
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    add-float v12, v0, v7

    .line 188
    int-to-float v0, v4

    sub-float v11, v12, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move v9, v4

    .line 187
    invoke-direct/range {v6 .. v12}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bD(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    .line 192
    add-int/lit8 v3, v4, -0x5

    add-int/lit8 v7, v4, 0x5

    .line 193
    int-to-float v0, v4

    add-float/2addr v5, v0

    int-to-float v0, v4

    sub-float v6, v12, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v7

    .line 192
    invoke-direct/range {v0 .. v6}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bD(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;IIFF)V

    .line 194
    return-void
.end method

.method protected bE()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 85
    const v0, 0x7f0e0041

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cd:Landroid/view/View;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cd:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bG(Landroid/content/SharedPreferences;)V

    .line 89
    return-object v0
.end method

.method protected bF(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 245
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 246
    const v2, 0x10008000

    .line 245
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 247
    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 245
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_0
    return-void

    .line 248
    :catch_0
    move-exception v0

    .line 250
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v0

    .line 251
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    const-string/jumbo v3, ".SearchActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    .line 250
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->showAppDetailsForProfile(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method protected abstract bw(I)I
.end method

.method protected abstract by()V
.end method

.method public bz(I)V
    .locals 1

    .prologue
    .line 101
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cc:I

    if-eq v0, p1, :cond_0

    .line 102
    iput p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cc:I

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->invalidate()V

    .line 106
    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mShadowBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->iconBitmapSize:I

    .line 156
    int-to-float v1, v0

    const v2, 0x3c2aaaab

    mul-float/2addr v1, v2

    .line 157
    int-to-float v0, v0

    const v2, 0x3caaaaab

    mul-float/2addr v0, v2

    .line 158
    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cc:I

    .line 155
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bB(FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->mShadowBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bC(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 162
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    .line 163
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 80
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->addLauncherLayoutChangedListener(Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;)V

    .line 81
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bE()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 82
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cd:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 239
    const-string/jumbo v0, "android.intent.action.VOICE_ASSIST"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bF(Ljava/lang/String;)V

    .line 241
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/DeviceProfile;->removeLauncherLayoutChangedListener(Lcom/android/launcher3/DeviceProfile$LauncherLayoutChangeListener;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 97
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 98
    return-void
.end method

.method public onLauncherLayoutChanged()V
    .locals 0

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->requestLayout()V

    .line 111
    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 115
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->by()V

    .line 118
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    .line 119
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 120
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bw(I)I

    move-result v1

    .line 122
    iget-object v2, v0, Lcom/android/launcher3/DeviceProfile;->inv:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numHotseatIcons:I

    invoke-static {v1, v2}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v2

    .line 123
    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->iconSizePx:I

    int-to-float v0, v0

    const v4, 0x3f6b851f    # 0.92f

    mul-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 124
    sub-int v0, v2, v7

    .line 126
    sub-int v0, v1, v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 127
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 128
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->setMeasuredDimension(II)V

    .line 131
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v6, v0

    :goto_0
    if-ltz v6, :cond_1

    .line 132
    invoke-virtual {p0, v6}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, p0

    move v2, p1

    move v4, p2

    move v5, v3

    .line 133
    invoke-virtual/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/qsb/e;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    if-le v0, v7, :cond_0

    .line 131
    :goto_1
    add-int/lit8 v0, v6, -0x1

    move v6, v0

    goto :goto_0

    .line 140
    :cond_0
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 141
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int v1, v7, v1

    div-int/lit8 v1, v1, 0x2

    .line 142
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    .line 144
    :cond_1
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 258
    const-string/jumbo v0, "opa_enabled"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->bG(Landroid/content/SharedPreferences;)V

    .line 261
    :cond_0
    return-void
.end method
