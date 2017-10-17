.class Lcom/google/android/apps/nexuslauncher/search/e;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;


# instance fields
.field private final eJ:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 104
    iput p2, p0, Lcom/google/android/apps/nexuslauncher/search/e;->eJ:I

    .line 105
    return-void
.end method


# virtual methods
.method public fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/e;->eJ:I

    if-ltz v0, :cond_0

    .line 111
    const/4 v0, 0x7

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 112
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/search/e;->eJ:I

    iput v0, p3, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    const/16 v0, 0x8

    iput v0, p4, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    goto :goto_0
.end method
