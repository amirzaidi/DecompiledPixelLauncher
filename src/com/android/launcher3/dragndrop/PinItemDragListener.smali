.class public Lcom/android/launcher3/dragndrop/PinItemDragListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;
.implements Landroid/view/View$OnDragListener;
.implements Lcom/android/launcher3/DragSource;
.implements Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mDragController:Lcom/android/launcher3/dragndrop/DragController;

.field private mDragStartTime:J

.field private final mId:Ljava/lang/String;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPreviewBitmapWidth:I

.field private final mPreviewRect:Landroid/graphics/Rect;

.field private final mPreviewViewWidth:I

.field private final mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 299
    new-instance v0, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;

    invoke-direct {v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener$1;-><init>()V

    .line 298
    sput-object v0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 58
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    sget-object v0, Lcom/android/launcher3/compat/PinItemRequestCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/compat/PinItemRequestCompat;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    .line 92
    sget-object v0, Landroid/graphics/Rect;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewRect:Landroid/graphics/Rect;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewBitmapWidth:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewViewWidth:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mId:Ljava/lang/String;

    .line 96
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/launcher3/dragndrop/PinItemDragListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/compat/PinItemRequestCompat;Landroid/graphics/Rect;II)V
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    .line 84
    iput-object p2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewRect:Landroid/graphics/Rect;

    .line 85
    iput p3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewBitmapWidth:I

    .line 86
    iput p4, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewViewWidth:I

    .line 87
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mId:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public static getPreview(Lcom/android/launcher3/compat/PinItemRequestCompat;)Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 275
    invoke-virtual {p0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 276
    if-eqz v0, :cond_0

    .line 277
    const-string/jumbo v1, "appWidgetPreview"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/RemoteViews;

    .line 276
    if-eqz v1, :cond_0

    .line 278
    const-string/jumbo v1, "appWidgetPreview"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    return-object v0

    .line 280
    :cond_0
    return-object v2
.end method

.method public static handleDragRequest(Lcom/android/launcher3/Launcher;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 284
    if-eqz p1, :cond_0

    const-string/jumbo v0, "android.intent.action.MAIN"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    return v2

    .line 287
    :cond_1
    const-string/jumbo v0, "pin_item_drag_listener"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 288
    instance-of v1, v0, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    if-eqz v1, :cond_2

    .line 289
    check-cast v0, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    .line 290
    invoke-virtual {v0, p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->setLauncher(Lcom/android/launcher3/Launcher;)V

    .line 292
    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 293
    const/4 v0, 0x1

    return v0

    .line 295
    :cond_2
    return v2
.end method

.method private onDragStart(Landroid/view/DragEvent;)Z
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v2, 0x0

    .line 139
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 140
    return v2

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v0

    .line 143
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ClipDescription;->hasMimeType(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 144
    :cond_1
    const-string/jumbo v0, "PinItemDragListener"

    const-string/jumbo v1, "Someone started a dragAndDrop before us."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    return v2

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getRequestType()I

    move-result v0

    if-ne v0, v7, :cond_4

    .line 150
    new-instance v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    .line 151
    new-instance v1, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Lcom/android/launcher3/compat/PinItemRequestCompat;Landroid/content/Context;)V

    .line 150
    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V

    .line 166
    :goto_0
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 167
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 169
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v4, v0, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 170
    new-instance v6, Lcom/android/launcher3/dragndrop/DragOptions;

    invoke-direct {v6}, Lcom/android/launcher3/dragndrop/DragOptions;-><init>()V

    .line 171
    iput-object v4, v6, Lcom/android/launcher3/dragndrop/DragOptions;->systemDndStartPoint:Landroid/graphics/Point;

    .line 172
    iput-object p0, v6, Lcom/android/launcher3/dragndrop/DragOptions;->preDragCondition:Lcom/android/launcher3/dragndrop/DragOptions$PreDragCondition;

    .line 179
    new-instance v0, Lcom/android/launcher3/widget/PendingItemDragHelper;

    invoke-direct {v0, v1}, Lcom/android/launcher3/widget/PendingItemDragHelper;-><init>(Landroid/view/View;)V

    .line 180
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getRequestType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 181
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-static {v1}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getPreview(Lcom/android/launcher3/compat/PinItemRequestCompat;)Landroid/widget/RemoteViews;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/PendingItemDragHelper;->setPreview(Landroid/widget/RemoteViews;)V

    .line 184
    :cond_3
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewRect:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 185
    iget v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewBitmapWidth:I

    iget v3, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewViewWidth:I

    move-object v5, p0

    .line 184
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/widget/PendingItemDragHelper;->startDrag(Landroid/graphics/Rect;IILandroid/graphics/Point;Lcom/android/launcher3/DragSource;Lcom/android/launcher3/dragndrop/DragOptions;)V

    .line 186
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragStartTime:J

    .line 187
    return v7

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/compat/PinItemRequestCompat;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    move-result-object v1

    .line 158
    new-instance v2, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Lcom/android/launcher3/compat/PinItemRequestCompat;)V

    .line 159
    new-instance v0, Lcom/android/launcher3/dragndrop/PinItemDragListener$2;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/launcher3/dragndrop/PinItemDragListener$2;-><init>(Lcom/android/launcher3/dragndrop/PinItemDragListener;Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/dragndrop/PinWidgetFlowHandler;)V

    goto :goto_0
.end method

.method private postCleanup()V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 255
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 256
    const-string/jumbo v1, "pin_item_drag_listener"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 257
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->setIntent(Landroid/content/Intent;)V

    .line 260
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/PinItemDragListener$3;

    invoke-direct {v1, p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener$3;-><init>(Lcom/android/launcher3/dragndrop/PinItemDragListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 266
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    return v0
.end method

.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 249
    const/16 v0, 0xa

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 250
    return-void
.end method

.method public getIntrinsicIconScaleFactor()F
    .locals 1

    .prologue
    .line 226
    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "com.android.launcher3.drag_and_drop/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    if-nez v0, :cond_1

    .line 124
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->postCleanup()V

    .line 125
    return v1

    .line 127
    :cond_1
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 128
    invoke-direct {p0, p2}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->onDragStart(Landroid/view/DragEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 129
    return v2

    .line 131
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->postCleanup()V

    .line 132
    return v1

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    iget-wide v2, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragStartTime:J

    invoke-virtual {v0, v2, v3, p2}, Lcom/android/launcher3/dragndrop/DragController;->onDragEvent(JLandroid/view/DragEvent;)Z

    move-result v0

    return v0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/DropTarget$DragObject;ZZ)V
    .locals 4

    .prologue
    .line 232
    if-nez p3, :cond_0

    xor-int/lit8 v0, p4, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/Workspace;

    move-result-object v0

    if-eq p1, v0, :cond_1

    .line 233
    instance-of v0, p1, Lcom/android/launcher3/DeleteDropTarget;

    xor-int/lit8 v0, v0, 0x1

    .line 232
    if-eqz v0, :cond_1

    .line 233
    instance-of v0, p1, Lcom/android/launcher3/folder/Folder;

    xor-int/lit8 v0, v0, 0x1

    .line 232
    if-eqz v0, :cond_1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    .line 237
    const/16 v2, 0x1f4

    const/4 v3, 0x0

    .line 236
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 240
    :cond_1
    if-nez p4, :cond_2

    .line 241
    const/4 v0, 0x0

    iput-boolean v0, p2, Lcom/android/launcher3/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    .line 243
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->postCleanup()V

    .line 244
    return-void
.end method

.method public onPreDragEnd(Lcom/android/launcher3/DropTarget$DragObject;Z)V
    .locals 2

    .prologue
    .line 209
    if-eqz p2, :cond_0

    .line 210
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setColor(I)V

    .line 212
    :cond_0
    return-void
.end method

.method public onPreDragStart(Lcom/android/launcher3/DropTarget$DragObject;)V
    .locals 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setAlpha(F)V

    .line 203
    iget-object v0, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragView:Lcom/android/launcher3/dragndrop/DragView;

    .line 204
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0016

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 203
    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragView;->setColor(I)V

    .line 205
    return-void
.end method

.method public removeListener()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 269
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/dragndrop/DragLayer;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 272
    :cond_0
    return-void
.end method

.method public setLauncher(Lcom/android/launcher3/Launcher;)V
    .locals 1

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 118
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragController()Lcom/android/launcher3/dragndrop/DragController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mDragController:Lcom/android/launcher3/dragndrop/DragController;

    .line 119
    return-void
.end method

.method public shouldStartDrag(D)Z
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isWorkspaceLocked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public supportsAppInfoDropTarget()Z
    .locals 1

    .prologue
    .line 216
    const/4 v0, 0x0

    return v0
.end method

.method public supportsDeleteDropTarget()Z
    .locals 1

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mRequest:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/compat/PinItemRequestCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    iget v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewBitmapWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mPreviewViewWidth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/PinItemDragListener;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 114
    return-void
.end method
