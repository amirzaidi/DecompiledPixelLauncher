.class public Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;
.super Lcom/android/launcher3/logging/UserEventDispatcher;
.source "SourceFile"


# instance fields
.field private final db:Lcom/google/android/apps/nexuslauncher/logging/a;

.field private final dc:Ljava/lang/ThreadLocal;

.field private final dd:Lcom/google/android/apps/nexuslauncher/reflection/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/launcher3/logging/UserEventDispatcher;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dc:Ljava/lang/ThreadLocal;

    .line 30
    new-instance v0, Lcom/google/android/apps/nexuslauncher/logging/a;

    invoke-direct {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->db:Lcom/google/android/apps/nexuslauncher/logging/a;

    .line 31
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/l;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/l;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dd:Lcom/google/android/apps/nexuslauncher/reflection/l;

    .line 32
    return-void
.end method


# virtual methods
.method public cz(I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 36
    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    .line 35
    new-array v1, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 36
    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v3

    .line 35
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 37
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v3

    const/4 v2, 0x6

    iput v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 38
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v3

    iput p1, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->spanX:I

    .line 39
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 40
    return-void
.end method

.method public dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 55
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->db:Lcom/google/android/apps/nexuslauncher/logging/a;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/a;->cy(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V

    .line 57
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/ComponentKey;

    .line 58
    if-eqz v0, :cond_0

    .line 59
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dd:Lcom/google/android/apps/nexuslauncher/reflection/l;

    invoke-virtual {v1, v0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/l;->cu(Lcom/android/launcher3/util/ComponentKey;Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V

    .line 61
    :cond_0
    return-void
.end method

.method public logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 44
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->isLauncherAppTarget(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dc:Ljava/lang/ThreadLocal;

    .line 46
    new-instance v2, Lcom/android/launcher3/util/ComponentKey;

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v2, v3, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 48
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V

    .line 49
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->dc:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 50
    return-void
.end method
