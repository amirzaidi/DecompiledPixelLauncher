.class public Lcom/google/android/apps/nexuslauncher/qsb/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

.field private final cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

.field private final cn:Landroid/os/Bundle;

.field private co:Z

.field private final cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

.field private cq:Lcom/android/launcher3/BubbleTextView;

.field private final cr:Z

.field private final mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/e;Z)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cn:Landroid/os/Bundle;

    .line 79
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/c;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    .line 85
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    .line 86
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 87
    iput-boolean p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cr:Z

    .line 88
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    .line 89
    return-void
.end method

.method public static bV(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/content/Intent;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 448
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.google.nexuslauncher.FAST_TEXT_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 451
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    const-string/jumbo v1, "source_mic_alpha"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 454
    :cond_0
    const-string/jumbo v1, "source_round_left"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 455
    const-string/jumbo v1, "source_round_right"

    .line 454
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 456
    const-string/jumbo v1, "source_logo_offset"

    invoke-static {p1, p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->cc(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v2

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 457
    const-string/jumbo v1, "source_mic_offset"

    invoke-static {p2, p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->cc(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;

    move-result-object v2

    .line 454
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 458
    const-string/jumbo v1, "use_fade_animation"

    .line 454
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 459
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    .line 454
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 460
    const/high16 v1, 0x50000000

    .line 454
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private bW()V
    .locals 4

    .prologue
    .line 396
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    if-eqz v0, :cond_0

    .line 397
    return-void

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 401
    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-direct {v1}, Lcom/google/android/apps/nexuslauncher/search/a/a;-><init>()V

    .line 402
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    .line 403
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    iget v3, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    add-int/2addr v2, v3

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    .line 404
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    .line 405
    iget v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    iput v0, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    .line 406
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 407
    return-void
.end method

.method private bX()Lcom/android/launcher3/allapps/AllAppsRecyclerView;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v1, 0x7f0e002b

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    return-object v0
.end method

.method private bY()I
    .locals 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getMainColor()I

    move-result v0

    .line 170
    const/16 v1, 0xff

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asb(II)I

    move-result v0

    .line 171
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v2, 0x7f010026

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 172
    invoke-static {v1, v0}, Landroid/support/v4/b/a;->asf(II)I

    move-result v0

    return v0
.end method

.method private bZ(Lcom/android/launcher3/AppInfo;I)Lcom/google/android/apps/nexuslauncher/search/a/b;
    .locals 6

    .prologue
    .line 410
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/b;-><init>()V

    .line 411
    iget-object v1, p1, Lcom/android/launcher3/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->label:Ljava/lang/String;

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "icon_bitmap_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ej:Ljava/lang/String;

    .line 413
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cn:Landroid/os/Bundle;

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ej:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/launcher3/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 415
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->mUserManager:Lcom/android/launcher3/compat/UserManagerCompat;

    invoke-static {p1, v1}, Lcom/google/android/apps/nexuslauncher/search/AppSearchProvider;->dm(Lcom/android/launcher3/AppInfo;Lcom/android/launcher3/compat/UserManagerCompat;)Landroid/net/Uri;

    move-result-object v1

    .line 416
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->el:Ljava/lang/String;

    .line 417
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.google.android.apps.nexuslauncher.search.APP_LAUNCH"

    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v1

    .line 418
    const-string/jumbo v4, "predictionRank"

    .line 419
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 417
    invoke-virtual {v1, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 419
    const/4 v1, 0x0

    .line 417
    invoke-virtual {v2, v1}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/b;->ek:Ljava/lang/String;

    .line 420
    return-object v0
.end method

.method private ca()Landroid/widget/RemoteViews;
    .locals 9

    .prologue
    const v8, 0x1020016

    const/4 v7, 0x0

    .line 179
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 180
    const v2, 0x7f04000d

    .line 179
    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 182
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v6

    .line 183
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v6

    div-int/lit8 v2, v1, 0x2

    .line 184
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingTop()I

    move-result v3

    .line 185
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v6

    sub-int v5, v1, v3

    .line 186
    const v1, 0x1020006

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 189
    int-to-float v1, v6

    const v4, 0x3df5c28f    # 0.12f

    mul-float/2addr v1, v4

    float-to-int v1, v1

    .line 190
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 189
    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 191
    sub-int v6, v2, v1

    .line 192
    sub-int/2addr v3, v1

    sub-int v4, v2, v1

    sub-int/2addr v5, v1

    .line 191
    const v1, 0x7f0e003a

    move v2, v6

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 195
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v1

    .line 197
    iget v1, v1, Lcom/android/launcher3/DeviceProfile;->allAppsIconTextSizePx:F

    .line 196
    invoke-virtual {v0, v8, v7, v1}, Landroid/widget/RemoteViews;->setTextViewTextSize(IIF)V

    .line 199
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingLeft()I

    move-result v2

    .line 200
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getIconSize()I

    move-result v1

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v3}, Lcom/android/launcher3/BubbleTextView;->getCompoundDrawablePadding()I

    move-result v3

    add-int/2addr v3, v1

    .line 201
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v1}, Lcom/android/launcher3/BubbleTextView;->getPaddingRight()I

    move-result v4

    move v1, v8

    move v5, v7

    .line 198
    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 202
    return-object v0
.end method

.method private cb()Landroid/widget/RemoteViews;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 211
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f04000e

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 213
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getHeight()I

    move-result v1

    .line 214
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingTop()I

    move-result v2

    .line 213
    sub-int/2addr v1, v2

    .line 214
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingBottom()I

    move-result v2

    .line 213
    sub-int/2addr v1, v2

    .line 215
    add-int/lit8 v1, v1, 0x14

    .line 216
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    iget-object v6, v2, Lcom/google/android/apps/nexuslauncher/qsb/e;->mShadowBitmap:Landroid/graphics/Bitmap;

    .line 218
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int v1, v2, v1

    div-int/lit8 v1, v1, 0x2

    .line 219
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getHeight()I

    move-result v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v3, v2, 0x2

    .line 221
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v2, v1

    .line 223
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getPaddingRight()I

    move-result v4

    sub-int/2addr v4, v1

    .line 220
    const v1, 0x7f0e003b

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 227
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 226
    invoke-static {v6, v7, v7, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 228
    const v2, 0x7f0e003c

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 229
    const v2, 0x7f0e003e

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 232
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    add-int/lit8 v1, v1, -0x14

    div-int/lit8 v1, v1, 0x2

    .line 235
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 234
    const/16 v3, 0x14

    .line 231
    invoke-static {v6, v1, v7, v3, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 236
    const v2, 0x7f0e003d

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 238
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/qsb/e;->cd:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const v1, 0x7f0e0041

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 242
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    const v2, 0x7f0e0040

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 243
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 244
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/qsb/e;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v1

    sub-int/2addr v2, v1

    .line 246
    :goto_0
    const v1, 0x7f0e003f

    move v3, v7

    move v4, v2

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Landroid/widget/RemoteViews;->setViewPadding(IIIII)V

    .line 247
    return-object v0

    .line 245
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    goto :goto_0
.end method

.method private static cc(Landroid/view/View;Landroid/graphics/Rect;)Landroid/graphics/Point;
    .locals 4

    .prologue
    .line 436
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 437
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 439
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 440
    const/4 v2, 0x0

    aget v2, v0, v2

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 441
    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    iput v0, v1, Landroid/graphics/Point;->y:I

    .line 442
    return-object v1
.end method

.method private cd()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    const-string/jumbo v2, "search_box_template"

    iput-object v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ey:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/search/a/c;->ey:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->cb()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    const v2, 0x7f0e0040

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ew:I

    .line 136
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/qsb/e;->cd:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iput v0, v2, Lcom/google/android/apps/nexuslauncher/search/a/c;->ex:I

    .line 140
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getViewBounds(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/a;

    move-result-object v2

    .line 141
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    .line 142
    iget-boolean v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->co:Z

    if-nez v3, :cond_0

    .line 143
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v3, v3, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    iget v3, v3, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    add-int/2addr v0, v3

    .line 146
    :cond_0
    iget v3, v2, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    add-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    .line 147
    iget v3, v2, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    sub-int/2addr v3, v0

    iput v3, v2, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    .line 148
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v2, v3, Lcom/google/android/apps/nexuslauncher/search/a/c;->et:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 150
    iget v3, v2, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 149
    invoke-static {v3, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 151
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 152
    const/4 v4, 0x0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 153
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bX()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    .line 154
    filled-new-array {v1, v1}, [I

    move-result-object v4

    .line 155
    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v5}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v5

    invoke-virtual {v5, v0, v4}, Lcom/android/launcher3/dragndrop/DragLayer;->mapCoordInSelfToDescendant(Landroid/view/View;[I)V

    .line 156
    aget v1, v4, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v5, 0x1

    aget v4, v4, v5

    neg-int v4, v4

    int-to-float v4, v4

    invoke-virtual {v3, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 157
    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->draw(Landroid/graphics/Canvas;)V

    .line 158
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    const-string/jumbo v1, "preview_bitmap"

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eu:Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cn:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/search/a/c;->eu:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 162
    return-void

    .line 137
    :cond_1
    const v0, 0x7f0e0041

    goto :goto_0
.end method

.method private ce()V
    .locals 13

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 312
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bX()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v5

    .line 313
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getLayoutManager()Landroid/support/v7/widget/p;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/M;

    .line 314
    invoke-virtual {v0}, Landroid/support/v7/widget/M;->getSpanSizeLookup()Landroid/support/v7/widget/Q;

    move-result-object v6

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v7, v0, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    .line 316
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildCount()I

    move-result v8

    .line 318
    new-array v9, v7, [Lcom/android/launcher3/BubbleTextView;

    .line 319
    const/4 v1, -0x1

    move v4, v3

    .line 323
    :goto_0
    if-ge v4, v8, :cond_a

    .line 324
    invoke-virtual {v5, v4}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v10

    .line 325
    iget-object v0, v10, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/BubbleTextView;

    if-nez v0, :cond_1

    .line 323
    :cond_0
    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 329
    :cond_1
    invoke-virtual {v10}, Landroid/support/v7/widget/j;->getLayoutPosition()I

    move-result v0

    invoke-virtual {v6, v0, v7}, Landroid/support/v7/widget/Q;->getSpanGroupIndex(II)I

    move-result v0

    .line 330
    if-ltz v0, :cond_0

    .line 333
    if-gez v1, :cond_3

    move v1, v0

    .line 342
    :cond_2
    iget-object v0, v10, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 341
    check-cast v0, Landroid/support/v7/widget/O;

    .line 343
    invoke-virtual {v0}, Landroid/support/v7/widget/O;->aaQ()I

    move-result v11

    iget-object v0, v10, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    aput-object v0, v9, v11

    goto :goto_1

    .line 335
    :cond_3
    if-eq v0, v1, :cond_2

    .line 337
    iget-object v0, v10, Landroid/support/v7/widget/j;->itemView:Landroid/view/View;

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    .line 346
    :goto_2
    aget-object v1, v9, v3

    if-nez v1, :cond_4

    .line 348
    const-string/jumbo v0, "ConfigBuilder"

    const-string/jumbo v1, "No icons rendered in all apps"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->cf()V

    .line 350
    return-void

    .line 352
    :cond_4
    aget-object v1, v9, v3

    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    .line 353
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput v7, v1, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    .line 355
    aget-object v1, v9, v3

    invoke-virtual {v5, v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/j;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/widget/j;->getItemViewType()I

    move-result v1

    .line 356
    const/4 v2, 0x4

    .line 355
    if-ne v1, v2, :cond_6

    const/4 v1, 0x1

    :goto_3
    iput-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->co:Z

    .line 358
    add-int/lit8 v1, v7, -0x1

    aget-object v1, v9, v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getViewBounds(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/a;

    move-result-object v1

    .line 359
    aget-object v2, v9, v3

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getViewBounds(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/a;

    move-result-object v2

    .line 361
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 368
    :goto_4
    iget v4, v2, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    add-int/2addr v2, v4

    iget v4, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    sub-int/2addr v2, v4

    .line 367
    iput v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    .line 369
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v1, v2, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 371
    iget-boolean v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->co:Z

    if-nez v2, :cond_7

    .line 374
    iget v0, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    iget v2, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    sub-int/2addr v0, v2

    iput v0, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    .line 382
    :cond_5
    :goto_5
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bW()V

    .line 384
    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getPredictedApps()Ljava/util/List;

    move-result-object v1

    .line 385
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 386
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    new-array v4, v2, [Lcom/google/android/apps/nexuslauncher/search/a/b;

    iput-object v4, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 387
    :goto_6
    if-ge v3, v2, :cond_8

    .line 388
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v4, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-direct {p0, v0, v3}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bZ(Lcom/android/launcher3/AppInfo;I)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v0

    aput-object v0, v4, v3

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_6
    move v1, v3

    .line 355
    goto :goto_3

    .line 375
    :cond_7
    if-eqz v0, :cond_5

    .line 378
    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getViewBounds(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/a;

    move-result-object v0

    .line 379
    iget v1, v1, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    .line 380
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/search/a/c;->ez:Lcom/google/android/apps/nexuslauncher/search/a/a;

    goto :goto_5

    .line 390
    :cond_8
    return-void

    :cond_9
    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto :goto_4

    :cond_a
    move-object v0, v2

    goto/16 :goto_2
.end method

.method private cf()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v1, 0x0

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v2

    iget v2, v2, Lcom/android/launcher3/DeviceProfile;->allAppsNumCols:I

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    .line 261
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getWidth()I

    move-result v0

    .line 263
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0010

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 264
    new-instance v3, Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/search/a/a;-><init>()V

    .line 265
    iput v2, v3, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    .line 266
    sub-int/2addr v0, v2

    sub-int/2addr v0, v2

    iput v0, v3, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    .line 267
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v0, v3, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    .line 268
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v3, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->en:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 269
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bW()V

    .line 271
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bX()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v2

    .line 274
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 275
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bX()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v4

    const v5, 0x7f040009

    .line 274
    invoke-virtual {v0, v5, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    .line 276
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0}, Lcom/android/launcher3/BubbleTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 277
    iget v0, v3, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 278
    iget v0, v3, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget v3, v3, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    div-int/2addr v0, v3

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 279
    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/AppInfo;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/AppInfo;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    .line 283
    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 284
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 282
    invoke-virtual {v0, v3, v5}, Lcom/android/launcher3/BubbleTextView;->measure(II)V

    .line 285
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cq:Lcom/android/launcher3/BubbleTextView;

    iget v3, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0, v1, v1, v3, v4}, Lcom/android/launcher3/BubbleTextView;->layout(IIII)V

    .line 288
    new-instance v3, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getPredictedApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 291
    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->findApp(Lcom/android/launcher3/util/ComponentKey;)Lcom/android/launcher3/AppInfo;

    move-result-object v0

    .line 292
    if-eqz v0, :cond_2

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bZ(Lcom/android/launcher3/AppInfo;I)Lcom/google/android/apps/nexuslauncher/search/a/b;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 294
    add-int/lit8 v0, v1, 0x1

    .line 295
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/search/a/c;->es:I

    if-lt v0, v1, :cond_3

    .line 300
    :cond_1
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/search/a/b;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/apps/nexuslauncher/search/a/b;

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/search/a/c;->eo:[Lcom/google/android/apps/nexuslauncher/search/a/b;

    .line 301
    return-void

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0
.end method

.method private static getViewBounds(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/a;
    .locals 3

    .prologue
    .line 424
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/a;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/a;-><init>()V

    .line 425
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eh:I

    .line 426
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ee:I

    .line 428
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 429
    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 430
    const/4 v2, 0x0

    aget v2, v1, v2

    iput v2, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->ef:I

    .line 431
    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/a;->eg:I

    .line 432
    return-object v0
.end method


# virtual methods
.method public build()[B
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->bY()I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->em:I

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v2, 0x7f01002a

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eq:Z

    .line 96
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cr:Z

    if-eqz v0, :cond_1

    .line 97
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->ce()V

    .line 102
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    const-string/jumbo v1, "icon_view_template"

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ep:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cn:Landroid/os/Bundle;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/search/a/c;->ep:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->ca()Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 106
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    const-string/jumbo v1, "icon_long_click"

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->er:Ljava/lang/String;

    .line 107
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const-class v2, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cn:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/search/a/c;->er:Ljava/lang/String;

    .line 109
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    .line 110
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 109
    const/16 v4, 0x807

    .line 111
    const/high16 v5, 0x48000000    # 131072.0f

    .line 109
    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cm:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/LongClickReceiver;->bq(Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;)V

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cp:Lcom/google/android/apps/nexuslauncher/qsb/e;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getViewBounds(Landroid/view/View;)Lcom/google/android/apps/nexuslauncher/search/a/a;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->ev:Lcom/google/android/apps/nexuslauncher/search/a/a;

    .line 116
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cr:Z

    iput-boolean v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/c;->eA:Z

    .line 117
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cr:Z

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->cd()V

    .line 121
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/search/a/d;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/search/a/d;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cl:Lcom/google/android/apps/nexuslauncher/search/a/c;

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/search/a/d;->eB:Lcom/google/android/apps/nexuslauncher/search/a/c;

    .line 123
    invoke-static {v0}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v0

    return-object v0

    .line 99
    :cond_1
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->cf()V

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/f;->cn:Landroid/os/Bundle;

    return-object v0
.end method
