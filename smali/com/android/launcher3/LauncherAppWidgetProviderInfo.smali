.class public Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
.super Landroid/appwidget/AppWidgetProviderInfo;
.source "SourceFile"


# instance fields
.field public isCustomWidget:Z

.field public minSpanX:I

.field public minSpanY:I

.field public spanX:I

.field public spanY:I


# direct methods
.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    .line 53
    return-void
.end method

.method public static fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 33
    instance-of v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    .line 34
    check-cast p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 47
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->initSpans(Landroid/content/Context;)V

    .line 48
    return-object p1

    .line 41
    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 42
    invoke-virtual {p1, v0, v1}, Landroid/appwidget/AppWidgetProviderInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 44
    new-instance p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    invoke-direct {p1, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;-><init>(Landroid/os/Parcel;)V

    .line 45
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method


# virtual methods
.method public getIcon(Landroid/content/Context;Lcom/android/launcher3/IconCache;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 107
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {p2, v0, v1}, Lcom/android/launcher3/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 110
    :cond_0
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-super {p0, p1, v0}, Landroid/appwidget/AppWidgetProviderInfo;->loadIcon(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 103
    :cond_0
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMinSpans(Lcom/android/launcher3/InvariantDeviceProfile;Landroid/content/Context;)Landroid/graphics/Point;
    .locals 4

    .prologue
    const/4 v1, -0x1

    .line 122
    new-instance v2, Landroid/graphics/Point;

    .line 123
    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 124
    :goto_0
    iget v3, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    iget v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 122
    :cond_0
    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    return-object v2

    :cond_1
    move v0, v1

    .line 123
    goto :goto_0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v0

    goto :goto_0
.end method

.method public initSpans(Landroid/content/Context;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 68
    invoke-static {p1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    .line 70
    iget-object v1, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v1}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v1

    .line 71
    iget-object v2, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    invoke-virtual {v2}, Lcom/android/launcher3/DeviceProfile;->getTotalWorkspacePadding()Landroid/graphics/Point;

    move-result-object v2

    .line 76
    iget-object v3, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    iget v3, v3, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v4, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v3, v4

    .line 77
    iget-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->widthPx:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    .line 75
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 78
    iget v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    .line 75
    invoke-static {v3, v4}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v3

    int-to-float v3, v3

    .line 80
    iget-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->landscapeProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    sub-int v1, v4, v1

    .line 81
    iget-object v4, v0, Lcom/android/launcher3/InvariantDeviceProfile;->portraitProfile:Lcom/android/launcher3/DeviceProfile;

    iget v4, v4, Lcom/android/launcher3/DeviceProfile;->heightPx:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int v2, v4, v2

    .line 79
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 82
    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    .line 79
    invoke-static {v1, v0}, Lcom/android/launcher3/DeviceProfile;->calculateCellWidth(II)I

    move-result v0

    int-to-float v0, v0

    .line 87
    iget-object v1, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    const/4 v2, 0x0

    .line 86
    invoke-static {p1, v1, v2}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 89
    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minWidth:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-double v4, v2

    .line 88
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    .line 91
    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minHeight:I

    iget v4, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-double v4, v2

    .line 90
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    .line 94
    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeWidth:I

    iget v4, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v4

    iget v4, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v2, v3

    float-to-double v2, v2

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    .line 96
    iget v2, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minResizeHeight:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    div-float v0, v1, v0

    float-to-double v0, v0

    .line 95
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    .line 97
    return-void
.end method
