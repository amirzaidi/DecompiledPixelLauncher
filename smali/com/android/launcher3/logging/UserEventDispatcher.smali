.class public Lcom/android/launcher3/logging/UserEventDispatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final IS_VERBOSE:Z


# instance fields
.field private mActionDurationMillis:J

.field private mElapsedContainerMillis:J

.field private mElapsedSessionMillis:J

.field private mIsInLandscapeMode:Z

.field private mIsInMultiWindowMode:Z

.field private mPredictedApps:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    .line 62
    sput-boolean v0, Lcom/android/launcher3/logging/UserEventDispatcher;->IS_VERBOSE:Z

    .line 57
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLaunchProviderRecursive(Landroid/view/View;)Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 95
    if-eqz p0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 102
    const/4 v0, 0x5

    move v4, v0

    move-object v0, v1

    move v1, v4

    .line 103
    :goto_0
    if-eqz v0, :cond_2

    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_2

    .line 104
    instance-of v1, v0, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    if-eqz v1, :cond_1

    .line 105
    check-cast v0, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    return-object v0

    .line 98
    :cond_0
    return-object v3

    .line 107
    :cond_1
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move v1, v2

    goto :goto_0

    .line 110
    :cond_2
    return-object v3
.end method

.method private static getTargetsStr([Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "child:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->getTargetStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 329
    array-length v0, p0

    if-le v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\tparent:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v2, p0, v3

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->getTargetStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 328
    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 329
    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public static newInstance(Landroid/content/Context;ZZ)Lcom/android/launcher3/logging/UserEventDispatcher;
    .locals 3

    .prologue
    .line 67
    const-class v0, Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 68
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c001a

    .line 67
    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->getOverrideObject(Ljava/lang/Class;Landroid/content/Context;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/logging/UserEventDispatcher;

    .line 69
    iput-boolean p1, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mIsInLandscapeMode:Z

    .line 70
    iput-boolean p2, v0, Lcom/android/launcher3/logging/UserEventDispatcher;->mIsInMultiWindowMode:Z

    .line 71
    return-object v0
.end method


# virtual methods
.method protected createLauncherEvent(Landroid/view/View;ILandroid/content/ComponentName;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 130
    invoke-static {v4}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 131
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 130
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v1

    .line 135
    invoke-virtual {p0, v1, p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 137
    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v4

    iput p2, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->intentHash:I

    .line 138
    if-eqz p3, :cond_0

    .line 139
    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v4

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->packageNameHash:I

    .line 140
    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v4

    invoke-virtual {p3}, Landroid/content/ComponentName;->hashCode()I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->componentHash:I

    .line 141
    iget-object v2, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mPredictedApps:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 142
    iget-object v2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v4

    iget-object v3, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mPredictedApps:Ljava/util/List;

    .line 143
    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    iget-object v0, v0, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-direct {v4, p3, v0}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 142
    invoke-interface {v3, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iput v0, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->predictedRank:I

    .line 147
    :cond_0
    return-object v1
.end method

.method public dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 302
    iget-boolean v0, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mIsInLandscapeMode:Z

    iput-boolean v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    .line 303
    iget-boolean v0, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mIsInMultiWindowMode:Z

    iput-boolean v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    .line 305
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedSessionMillis:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    .line 307
    sget-boolean v0, Lcom/android/launcher3/logging/UserEventDispatcher;->IS_VERBOSE:Z

    if-nez v0, :cond_0

    .line 308
    return-void

    .line 310
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->getActionStr(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n Source "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->getTargetsStr([Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 314
    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    if-eqz v1, :cond_2

    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 315
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n Destination "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    invoke-static {v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->getTargetsStr([Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 318
    const-string/jumbo v2, "\n Elapsed container %d ms session %d ms action %d ms"

    .line 317
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 319
    iget-wide v4, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedContainerMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v6

    .line 320
    iget-wide v4, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->elapsedSessionMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 321
    iget-wide v4, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v3, v5

    .line 317
    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n isInLandscapeMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInLandscapeMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\n isInMultiWindowMode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->isInMultiWindowMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "UserEvent"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    return-void
.end method

.method public fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 152
    invoke-static {p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->getLaunchProviderRecursive(Landroid/view/View;)Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    move-result-object v1

    .line 153
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    .line 154
    :cond_0
    return v3

    .line 156
    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 157
    iget-object v2, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v3

    iget-object v3, p1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v3, v3, v4

    invoke-interface {v1, p2, v0, v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 158
    return v4
.end method

.method public logActionCommand(II)V
    .locals 1

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionCommand(III)V

    .line 180
    return-void
.end method

.method public logActionCommand(III)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 184
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newCommandAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    .line 183
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 184
    invoke-static {p2}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v3

    .line 183
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 185
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v3

    iput p3, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 186
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 187
    return-void
.end method

.method public logActionCommand(ILandroid/view/View;I)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 193
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newCommandAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 194
    invoke-static {p2}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Landroid/view/View;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v5}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 193
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 196
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->fillInLogContainerData(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v4

    iput v5, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->type:I

    .line 200
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v4

    iput p3, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->containerType:I

    .line 202
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 203
    return-void
.end method

.method public logActionOnContainer(III)V
    .locals 1

    .prologue
    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->logActionOnContainer(IIII)V

    .line 221
    return-void
.end method

.method public logActionOnContainer(IIII)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 224
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 225
    invoke-static {p3}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v3

    .line 224
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 226
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput p2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    .line 227
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v3

    iput p4, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->pageIndex:I

    .line 228
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public logActionOnControl(II)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 207
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    .line 206
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 207
    const/4 v2, 0x2

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v3

    .line 206
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 208
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v1, v1, v3

    iput p2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->controlType:I

    .line 209
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 210
    return-void
.end method

.method public logActionOnItem(III)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 232
    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v0

    .line 233
    iput p3, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;->itemType:I

    .line 234
    invoke-static {p1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v1

    new-array v2, v2, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 235
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput p2, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->dir:I

    .line 236
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 237
    return-void
.end method

.method public logActionTapOutside(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 213
    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    new-array v1, v3, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 214
    aput-object p1, v1, v2

    .line 213
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 215
    iget-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->action:Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    iput-boolean v3, v1, Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;->isOutside:Z

    .line 216
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 217
    return-void
.end method

.method public logAppLaunch(Landroid/view/View;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 162
    invoke-virtual {p2}, Landroid/content/Intent;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->createLauncherEvent(Landroid/view/View;ILandroid/content/ComponentName;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 163
    if-nez v0, :cond_0

    .line 164
    return-void

    .line 166
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 167
    return-void
.end method

.method public logDeepShortcutsOpen(Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 240
    invoke-static {p1}, Lcom/android/launcher3/logging/UserEventDispatcher;->getLaunchProviderRecursive(Landroid/view/View;)Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    move-result-object v1

    .line 241
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 242
    :cond_0
    return-void

    .line 244
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 245
    invoke-static {v5}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 246
    invoke-static {v0}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v4

    aput-object v4, v3, v6

    const/4 v4, 0x3

    invoke-static {v4}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v4

    aput-object v4, v3, v5

    .line 245
    invoke-static {v2, v3}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v2

    .line 247
    iget-object v3, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v3, v3, v6

    iget-object v4, v2, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v4, v4, v5

    invoke-interface {v1, p1, v0, v3, v4}, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 248
    invoke-virtual {p0, v2, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 250
    invoke-virtual {p0}, Lcom/android/launcher3/logging/UserEventDispatcher;->resetElapsedContainerMillis()V

    .line 251
    return-void
.end method

.method public logDragNDrop(Lcom/android/launcher3/DropTarget$DragObject;Landroid/view/View;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 267
    invoke-static {v3}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    new-array v1, v3, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 268
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v5

    const/4 v2, 0x3

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v6

    .line 267
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 269
    new-array v1, v3, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 270
    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newItemTarget(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Lcom/android/launcher3/logging/LoggerUtils;->newDropTarget(Landroid/view/View;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v6

    .line 269
    iput-object v1, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 273
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/DragSource;

    iget-object v2, p1, Lcom/android/launcher3/DropTarget$DragObject;->originalDragInfo:Lcom/android/launcher3/ItemInfo;

    .line 274
    iget-object v3, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v3, v3, v5

    iget-object v4, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->srcTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v4, v4, v6

    .line 273
    invoke-interface {v1, v7, v2, v3, v4}, Lcom/android/launcher3/DragSource;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 276
    instance-of v1, p2, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    if-eqz v1, :cond_0

    .line 277
    check-cast p2, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;

    .line 278
    iget-object v1, p1, Lcom/android/launcher3/DropTarget$DragObject;->dragInfo:Lcom/android/launcher3/ItemInfo;

    iget-object v2, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v2, v2, v5

    iget-object v3, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->destTarget:[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    aget-object v3, v3, v6

    .line 277
    invoke-interface {p2, v7, v1, v2, v3}, Lcom/android/launcher3/logging/UserEventDispatcher$LogContainerProvider;->fillInLogContainerData(Landroid/view/View;Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)V

    .line 281
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mActionDurationMillis:J

    sub-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;->actionDurationMillis:J

    .line 282
    invoke-virtual {p0, v0, v7}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public logNotificationLaunch(Landroid/view/View;Landroid/app/PendingIntent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 170
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "--dummy--"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/app/PendingIntent;->hashCode()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/launcher3/logging/UserEventDispatcher;->createLauncherEvent(Landroid/view/View;ILandroid/content/ComponentName;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 172
    if-nez v0, :cond_0

    .line 173
    return-void

    .line 175
    :cond_0
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 176
    return-void
.end method

.method public logOverviewReorder()V
    .locals 5

    .prologue
    const/4 v1, 0x2

    const/4 v4, 0x1

    .line 260
    invoke-static {v1}, Lcom/android/launcher3/logging/LoggerUtils;->newTouchAction(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;

    move-result-object v0

    new-array v1, v1, [Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    .line 261
    invoke-static {v4}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 262
    const/4 v2, 0x6

    invoke-static {v2}, Lcom/android/launcher3/logging/LoggerUtils;->newContainerTarget(I)Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;

    move-result-object v2

    aput-object v2, v1, v4

    .line 260
    invoke-static {v0, v1}, Lcom/android/launcher3/logging/LoggerUtils;->newLauncherEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$Action;[Lcom/android/launcher3/userevent/nano/LauncherLogProto$Target;)Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;

    move-result-object v0

    .line 263
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/logging/UserEventDispatcher;->dispatchUserEvent(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;Landroid/content/Intent;)V

    .line 264
    return-void
.end method

.method public final resetActionDurationMillis()V
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mActionDurationMillis:J

    .line 299
    return-void
.end method

.method public final resetElapsedContainerMillis()V
    .locals 2

    .prologue
    .line 289
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    .line 290
    return-void
.end method

.method public final resetElapsedSessionMillis()V
    .locals 2

    .prologue
    .line 293
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedSessionMillis:J

    .line 294
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mElapsedContainerMillis:J

    .line 295
    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 254
    iput-object p1, p0, Lcom/android/launcher3/logging/UserEventDispatcher;->mPredictedApps:Ljava/util/List;

    .line 255
    return-void
.end method
