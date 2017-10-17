.class public Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;
.super Lcom/google/android/apps/nexuslauncher/qsb/e;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/allapps/SearchUiManager;
.implements Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;


# instance fields
.field private bU:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

.field private bW:I

.field private bX:Landroid/graphics/Bitmap;

.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/nexuslauncher/qsb/e;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bW:I

    .line 53
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 54
    return-void
.end method

.method private bx()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->showKeyboard()V

    .line 126
    return-void

    .line 128
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 130
    const v1, 0x7f040008

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    .line 131
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bU:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0, p0, v1, v2}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->bu(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->addView(Landroid/view/View;)V

    .line 133
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->showKeyboard()V

    .line 134
    return-void
.end method


# virtual methods
.method public addOnScrollRangeChangeListener(Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/d;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/d;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Lcom/android/launcher3/allapps/SearchUiManager$OnScrollRangeChangeListener;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Hotseat;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 181
    return-void
.end method

.method bv(I)V
    .locals 2

    .prologue
    .line 184
    const/4 v0, 0x0

    const/16 v1, 0xff

    invoke-static {p1, v0, v1}, Lcom/android/launcher3/Utilities;->boundToRange(III)I

    move-result v0

    .line 185
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bW:I

    if-eq v1, v0, :cond_0

    .line 186
    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bW:I

    .line 187
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->invalidate()V

    .line 189
    :cond_0
    return-void
.end method

.method protected bw(I)I
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bU:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    .line 85
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bU:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingRight()I

    move-result v1

    .line 84
    sub-int/2addr v0, v1

    return v0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->getHotseat()Lcom/android/launcher3/Hotseat;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Hotseat;->getLayout()Lcom/android/launcher3/CellLayout;

    move-result-object v0

    .line 88
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    sub-int v1, p1, v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method protected by()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 158
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bW:I

    if-lez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bX:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b00aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    .line 163
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00ab

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 161
    invoke-virtual {p0, v0, v1, v3}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bB(FFI)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bX:Landroid/graphics/Bitmap;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mShadowPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bW:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bX:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bC(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 170
    :cond_1
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->draw(Landroid/graphics/Canvas;)V

    .line 171
    return-void
.end method

.method public initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .locals 4

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 101
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 102
    const v2, 0x7f0b00ae

    .line 101
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingLeft()I

    move-result v1

    .line 104
    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getPaddingBottom()I

    move-result v3

    .line 103
    invoke-virtual {p2, v1, v0, v2, v3}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setPadding(IIII)V

    .line 105
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/c;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Lcom/google/android/apps/nexuslauncher/qsb/c;)V

    invoke-virtual {p2, v0}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/m;)V

    .line 107
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bU:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    .line 108
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->onAttachedToWindow()V

    .line 59
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    .line 60
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->addOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 61
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V

    .line 62
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/e;->onClick(Landroid/view/View;)V

    .line 113
    if-ne p1, p0, :cond_0

    .line 114
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bA(I)V

    .line 115
    new-instance v0, Lcom/google/android/apps/nexuslauncher/qsb/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/f;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/e;Z)V

    .line 116
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->build()[B

    move-result-object v1

    .line 117
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;->dY()Lcom/google/android/libraries/a/a/d;

    move-result-object v2

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/f;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/google/android/libraries/a/a/d;->startSearch([BLandroid/os/Bundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bx()V

    .line 121
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->removeOnChangeListener(Lcom/android/launcher3/dynamicui/WallpaperColorInfo$OnChangeListener;)V

    .line 67
    invoke-super {p0}, Lcom/google/android/apps/nexuslauncher/qsb/e;->onDetachedFromWindow()V

    .line 68
    return-void
.end method

.method public onExtractedColorsChanged(Lcom/android/launcher3/dynamicui/WallpaperColorInfo;)V
    .locals 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v1, 0x7f01002a

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrBoolean(Landroid/content/Context;I)Z

    move-result v0

    .line 73
    if-eqz v0, :cond_0

    const v0, -0x14000001

    .line 74
    :goto_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->cb:Lcom/google/android/apps/nexuslauncher/NexusLauncherActivity;

    const v2, 0x7f010026

    invoke-static {v1, v2}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v1

    .line 75
    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asf(II)I

    move-result v0

    .line 78
    invoke-virtual {p1}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getMainColor()I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/b/a;->asf(II)I

    move-result v0

    .line 77
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bz(I)V

    .line 79
    return-void

    .line 73
    :cond_0
    const v0, -0x33000001    # -1.3421772E8f

    goto :goto_0
.end method

.method public preDispatchKeyEvent(Landroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 176
    return-void
.end method

.method public refreshSearchResult()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->refreshSearchResult()V

    .line 141
    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 145
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bv(I)V

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;->clearSearchResult()V

    .line 149
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->removeView(Landroid/view/View;)V

    .line 152
    iput-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bV:Lcom/google/android/apps/nexuslauncher/qsb/FallbackAppsSearchView;

    .line 154
    :cond_0
    return-void
.end method
