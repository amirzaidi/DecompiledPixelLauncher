.class public Lcom/android/launcher3/dragndrop/AddItemActivity;
.super Lcom/android/launcher3/BaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

.field private mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mLastTouchPos:Landroid/graphics/PointF;

.field private mPendingBindWidgetId:I

.field private mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

.field private mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

.field private mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

.field private mWidgetOptions:Landroid/os/Bundle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    .line 71
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    .line 64
    return-void
.end method

.method private acceptWidget(I)V
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {v0, p1, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->queueWidget(Landroid/appwidget/AppWidgetProviderInfo;ILandroid/content/Context;)V

    .line 258
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    const-string/jumbo v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 259
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/PinItemRequestCompat;->accept(Landroid/os/Bundle;)Z

    .line 260
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 261
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 262
    return-void
.end method

.method private logCommand(I)V
    .locals 5

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    .line 303
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newCommandAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    .line 302
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 304
    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v3}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 305
    const/16 v3, 0xa

    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 302
    invoke-static {v1, v2}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    .line 305
    const/4 v2, 0x0

    .line 302
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 306
    return-void
.end method

.method private setupShortcut()V
    .locals 4

    .prologue
    .line 186
    new-instance v0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Lcom/android/launcher3/compat/PinItemRequestCompat;Landroid/content/Context;)V

    .line 187
    new-instance v1, Lcom/android/launcher3/model/WidgetItem;

    invoke-direct {v1, v0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    .line 188
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {v3, v0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/widget/WidgetImageView;->setTag(Ljava/lang/Object;)V

    .line 189
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 190
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->ensurePreview()V

    .line 191
    return-void
.end method

.method private setupWidget()Z
    .locals 4

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 194
    invoke-static {p0, v0}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v0

    .line 196
    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v1, v2, :cond_0

    iget v1, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-le v1, v2, :cond_1

    .line 198
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getPreview(Lcom/android/launcher3/compat/PinItemRequestCompat;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->setPreview(Landroid/widget/RemoteViews;)V

    .line 202
    invoke-static {p0}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 203
    new-instance v1, Landroid/appwidget/AppWidgetHost;

    const/16 v2, 0x400

    invoke-direct {v1, p0, v2}, Landroid/appwidget/AppWidgetHost;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    .line 205
    new-instance v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    .line 206
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    .line 207
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v3, v0, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    .line 208
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-static {p0, v1}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/content/Context;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    .line 210
    new-instance v1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher3/InvariantDeviceProfile;)V

    .line 211
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/widget/WidgetImageView;->setTag(Ljava/lang/Object;)V

    .line 212
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 213
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->ensurePreview()V

    .line 214
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 272
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 273
    if-eqz p3, :cond_0

    .line 274
    const-string/jumbo v0, "appWidgetId"

    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 276
    :goto_0
    if-ne p2, v2, :cond_1

    .line 277
    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    .line 283
    :goto_1
    return-void

    .line 275
    :cond_0
    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    goto :goto_0

    .line 280
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v1, v0}, Landroid/appwidget/AppWidgetHost;->deleteAppWidgetId(I)V

    .line 281
    iput v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    goto :goto_1

    .line 285
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 286
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 266
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 267
    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onBackPressed()V

    .line 268
    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 222
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 223
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getPinItemRequest(Landroid/content/Intent;)Lcom/android/launcher3/compat/PinItemRequestCompat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    if-nez v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 93
    return-void

    .line 96
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    .line 97
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    .line 101
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/DeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    .line 103
    const/high16 v0, 0x7f040000

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setContentView(I)V

    .line 104
    const v0, 0x7f0e0024

    invoke-virtual {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    .line 106
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 107
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupShortcut()V

    .line 115
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    if-nez p1, :cond_2

    .line 121
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 123
    :cond_2
    return-void

    .line 109
    :cond_3
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupWidget()Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/LivePreviewWidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v0

    .line 138
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_0

    .line 139
    return v5

    .line 142
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 143
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    float-to-int v3, v3

    sub-int/2addr v2, v3

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    float-to-int v4, v4

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 146
    new-instance v2, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    .line 147
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getWidth()I

    move-result v0

    .line 146
    invoke-direct {v2, v3, v1, v4, v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Lcom/android/launcher3/compat/PinItemRequestCompat;Landroid/graphics/Rect;II)V

    .line 148
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 149
    const-string/jumbo v1, "android.intent.category.HOME"

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 151
    const/high16 v1, 0x10000000

    .line 148
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 152
    const-string/jumbo v1, "pin_item_drag_listener"

    .line 148
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 154
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f0005

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 155
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->isAllowRotationPrefEnabled(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 154
    if-eqz v1, :cond_1

    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    .line 157
    const/4 v3, 0x2

    .line 156
    if-ne v1, v3, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->isInMultiWindowMode()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 154
    if-eqz v1, :cond_1

    .line 160
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 164
    :cond_1
    const v1, 0x10a0001

    invoke-static {p0, v5, v1}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v1

    .line 163
    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 168
    new-instance v0, Landroid/content/ClipDescription;

    const-string/jumbo v1, ""

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    invoke-direct {v0, v1, v3}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    .line 169
    new-instance v1, Landroid/content/ClipData;

    new-instance v2, Landroid/content/ClipData$Item;

    const-string/jumbo v3, ""

    invoke-direct {v2, v3}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v1, v0, v2}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    .line 170
    new-instance v0, Lcom/android/launcher3/dragndrop/AddItemActivity$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$1;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/view/View;)V

    .line 180
    const/16 v2, 0x100

    .line 170
    invoke-virtual {p1, v1, v0, v6, v2}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    .line 181
    return v5
.end method

.method public onPlaceAutomaticallyClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 229
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getRequestType()I

    move-result v0

    if-ne v0, v4, :cond_0

    .line 231
    new-instance v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    .line 230
    invoke-static {v0, p0}, Lcom/android/launcher3/InstallShortcutReceiver;->queueShortcut(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Landroid/content/Context;)V

    .line 232
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(I)V

    .line 233
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->accept()Z

    .line 234
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->finish()V

    .line 235
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Landroid/appwidget/AppWidgetHost;

    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 239
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/compat/AppWidgetManagerCompat;

    .line 240
    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    .line 239
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    .line 241
    if-eqz v0, :cond_1

    .line 242
    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    .line 243
    return-void

    .line 247
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.appwidget.action.APPWIDGET_BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 248
    const-string/jumbo v1, "appWidgetId"

    iget v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 249
    const-string/jumbo v1, "appWidgetProvider"

    .line 250
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingWidgetInfo:Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    .line 249
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 251
    const-string/jumbo v1, "appWidgetProviderProfile"

    .line 252
    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v2, p0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v2

    .line 251
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 253
    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/dragndrop/AddItemActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 254
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 298
    const-string/jumbo v0, "state.widget.id"

    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 297
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    .line 299
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 290
    invoke-super {p0, p1}, Lcom/android/launcher3/BaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 291
    const-string/jumbo v0, "state.widget.id"

    iget v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 292
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 128
    const/4 v0, 0x0

    return v0
.end method
