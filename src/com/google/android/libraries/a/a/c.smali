.class public Lcom/google/android/libraries/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Ks:I


# instance fields
.field private Ki:I

.field private final Kj:Landroid/app/Activity;

.field private Kk:Landroid/view/WindowManager$LayoutParams;

.field private Kl:I

.field private final Km:Lcom/google/android/libraries/a/a/a;

.field private final Kn:Lcom/google/android/libraries/a/a/f;

.field private Ko:Lcom/google/android/libraries/a/a/d;

.field private final Kp:Lcom/google/android/libraries/a/a/g;

.field protected Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field private Kr:I

.field private final Kt:Landroid/content/BroadcastReceiver;

.field private mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 122
    const/4 v0, -0x1

    sput v0, Lcom/google/android/libraries/a/a/c;->Ks:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/a/a/a;Lcom/google/android/libraries/a/a/e;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Lcom/google/android/libraries/a/a/i;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/a/a/i;-><init>(Lcom/google/android/libraries/a/a/c;)V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kt:Landroid/content/BroadcastReceiver;

    .line 153
    iput v3, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    .line 154
    iput-boolean v3, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    .line 156
    iput v3, p0, Lcom/google/android/libraries/a/a/c;->Kr:I

    .line 189
    iput-object p1, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    .line 190
    iput-object p2, p0, Lcom/google/android/libraries/a/a/c;->Km:Lcom/google/android/libraries/a/a/a;

    .line 192
    new-instance v0, Lcom/google/android/libraries/a/a/g;

    const/16 v1, 0x41

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/a/a/g;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kp:Lcom/google/android/libraries/a/a/g;

    .line 194
    invoke-static {p3}, Lcom/google/android/libraries/a/a/e;->QQ(Lcom/google/android/libraries/a/a/e;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/a/a/c;->Kl:I

    .line 196
    invoke-static {p1}, Lcom/google/android/libraries/a/a/f;->get(Landroid/content/Context;)Lcom/google/android/libraries/a/a/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kn:Lcom/google/android/libraries/a/a/f;

    .line 197
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kn:Lcom/google/android/libraries/a/a/f;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/a/a/f;->QT(Lcom/google/android/libraries/a/a/c;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 201
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 202
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 205
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/libraries/a/a/c;->Kt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    sget v0, Lcom/google/android/libraries/a/a/c;->Ks:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    .line 211
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/c;->QE()V

    .line 212
    return-void

    .line 203
    :cond_0
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_0

    .line 207
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/a/a/c;->QB(Landroid/content/Context;)V

    goto :goto_1
.end method

.method static synthetic QA(Lcom/google/android/libraries/a/a/c;)Lcom/google/android/libraries/a/a/f;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kn:Lcom/google/android/libraries/a/a/f;

    return-object v0
.end method

.method private static QB(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 698
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 699
    invoke-static {p0}, Lcom/google/android/libraries/a/a/c;->QI(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 700
    if-nez v0, :cond_1

    .line 701
    :cond_0
    sput v3, Lcom/google/android/libraries/a/a/c;->Ks:I

    .line 705
    :goto_0
    return-void

    .line 700
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 703
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "service.api.version"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/android/libraries/a/a/c;->Ks:I

    goto :goto_0
.end method

.method static synthetic QC(Lcom/google/android/libraries/a/a/c;I)V
    .locals 0

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/libraries/a/a/c;->QK(I)V

    return-void
.end method

.method private QD(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    iput-object p1, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    .line 411
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_1

    .line 423
    :goto_0
    return-void

    .line 412
    :cond_0
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/c;->Qt()V

    goto :goto_0

    .line 415
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :goto_1
    iput-object v2, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    goto :goto_0

    .line 416
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic QG(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 90
    invoke-static {p0}, Lcom/google/android/libraries/a/a/c;->QB(Landroid/content/Context;)V

    return-void
.end method

.method static QI(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 599
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x12

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "app://"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 600
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "v"

    const/4 v2, 0x5

    .line 601
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 602
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 603
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 604
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 605
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 603
    return-object v0
.end method

.method private QK(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 588
    iget v2, p0, Lcom/google/android/libraries/a/a/c;->Kr:I

    if-ne v2, p1, :cond_0

    .line 594
    :goto_0
    return-void

    .line 589
    :cond_0
    iput p1, p0, Lcom/google/android/libraries/a/a/c;->Kr:I

    .line 590
    iget-object v3, p0, Lcom/google/android/libraries/a/a/c;->Km:Lcom/google/android/libraries/a/a/a;

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    move v2, v0

    :goto_1
    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    :goto_2
    invoke-interface {v3, v2, v0}, Lcom/google/android/libraries/a/a/a;->dd(ZZ)V

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private QL(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 379
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    .line 380
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kp:Lcom/google/android/libraries/a/a/g;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/g;->QY()V

    .line 381
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Ko:Lcom/google/android/libraries/a/a/d;

    if-nez v0, :cond_1

    .line 385
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kn:Lcom/google/android/libraries/a/a/f;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/a/a/f;->QR(Lcom/google/android/libraries/a/a/c;Z)V

    .line 386
    return-void

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 382
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Ko:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->clear()V

    .line 383
    iput-object v2, p0, Lcom/google/android/libraries/a/a/c;->Ko:Lcom/google/android/libraries/a/a/d;

    goto :goto_1
.end method

.method static synthetic QM(Lcom/google/android/libraries/a/a/c;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/libraries/a/a/c;->Kr:I

    return v0
.end method

.method static synthetic QN(Lcom/google/android/libraries/a/a/c;)I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    return v0
.end method

.method static synthetic Qr(Lcom/google/android/libraries/a/a/c;)Lcom/google/android/libraries/a/a/g;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kp:Lcom/google/android/libraries/a/a/g;

    return-object v0
.end method

.method private Qt()V
    .locals 4

    .prologue
    .line 426
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 457
    :goto_0
    return-void

    .line 428
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Ko:Lcom/google/android/libraries/a/a/d;

    if-eqz v0, :cond_1

    .line 431
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Ko:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/a/a/d;->QP(Lcom/google/android/libraries/a/a/c;)V

    .line 432
    sget v0, Lcom/google/android/libraries/a/a/c;->Ks:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 436
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 437
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v2, "layout_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 438
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string/jumbo v2, "configuration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 439
    iget v1, p0, Lcom/google/android/libraries/a/a/c;->Kl:I

    const-string/jumbo v2, "client_options"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 440
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v2, p0, Lcom/google/android/libraries/a/a/c;->Ko:Lcom/google/android/libraries/a/a/d;

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V

    .line 442
    :goto_2
    sget v0, Lcom/google/android/libraries/a/a/c;->Ks:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 449
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V

    goto :goto_0

    .line 451
    :catch_0
    move-exception v0

    goto :goto_0

    .line 429
    :cond_1
    new-instance v0, Lcom/google/android/libraries/a/a/d;

    invoke-direct {v0}, Lcom/google/android/libraries/a/a/d;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/c;->Ko:Lcom/google/android/libraries/a/a/d;

    goto :goto_1

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/a/a/c;->Ko:Lcom/google/android/libraries/a/a/d;

    iget v3, p0, Lcom/google/android/libraries/a/a/c;->Kl:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    goto :goto_2

    .line 443
    :cond_3
    iget v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    goto :goto_0

    .line 444
    :cond_4
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic Qv(Lcom/google/android/libraries/a/a/c;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    return-object v0
.end method

.method private Qx()Z
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic Qz(Lcom/google/android/libraries/a/a/c;)Lcom/google/android/libraries/a/a/a;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Km:Lcom/google/android/libraries/a/a/a;

    return-object v0
.end method


# virtual methods
.method public QE()V
    .locals 2

    .prologue
    .line 394
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 397
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kn:Lcom/google/android/libraries/a/a/f;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/f;->QX()Z

    move-result v0

    if-nez v0, :cond_2

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/libraries/a/a/h;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/a/a/h;-><init>(Lcom/google/android/libraries/a/a/c;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 407
    :goto_0
    return-void

    .line 395
    :cond_1
    return-void

    .line 397
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kp:Lcom/google/android/libraries/a/a/g;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/g;->QX()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public QF(F)V
    .locals 1

    .prologue
    .line 509
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/c;->Qx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 518
    :goto_0
    return-void

    .line 511
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 512
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public QH(Lcom/google/android/libraries/a/a/e;)V
    .locals 2

    .prologue
    .line 367
    invoke-static {p1}, Lcom/google/android/libraries/a/a/e;->QQ(Lcom/google/android/libraries/a/a/e;)I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/a/a/c;->Kl:I

    if-ne v0, v1, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/a/a/e;->QQ(Lcom/google/android/libraries/a/a/e;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/a/a/c;->Kl:I

    .line 369
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 370
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/c;->Qt()V

    goto :goto_0
.end method

.method public QJ(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 544
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v1, :cond_0

    .line 553
    :goto_0
    return-void

    .line 546
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez p1, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 547
    :catch_0
    move-exception v0

    goto :goto_0

    .line 546
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public Qs()V
    .locals 1

    .prologue
    .line 488
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/c;->Qx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 497
    :goto_0
    return-void

    .line 490
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 491
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method Qu(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 1

    .prologue
    .line 577
    iput-object p1, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 578
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 585
    :goto_0
    return-void

    .line 579
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/c;->QK(I)V

    goto :goto_0

    .line 582
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/c;->Qt()V

    goto :goto_0
.end method

.method public Qw()V
    .locals 1

    .prologue
    .line 470
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/c;->Qx()Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    :goto_0
    return-void

    .line 472
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 473
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Qy(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 526
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v1, :cond_0

    .line 536
    :goto_0
    return-void

    .line 528
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 529
    if-nez p1, :cond_1

    .line 528
    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 530
    :catch_0
    move-exception v0

    goto :goto_0

    .line 529
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 220
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/c;->QD(Landroid/view/WindowManager$LayoutParams;)V

    .line 224
    return-void

    .line 221
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 349
    iget-object v1, p0, Lcom/google/android/libraries/a/a/c;->Kj:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/c;->QL(Z)V

    .line 350
    return-void

    .line 349
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 232
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/c;->QD(Landroid/view/WindowManager$LayoutParams;)V

    .line 236
    return-void

    .line 233
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 270
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 274
    iget v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    .line 275
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 271
    :cond_1
    return-void

    .line 275
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 277
    :try_start_0
    sget v0, Lcom/google/android/libraries/a/a/c;->Ks:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 280
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V

    goto :goto_0

    .line 282
    :catch_0
    move-exception v0

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 244
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 248
    iget v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    .line 249
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 245
    :cond_1
    return-void

    .line 249
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    sget v0, Lcom/google/android/libraries/a/a/c;->Ks:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 254
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V

    goto :goto_0

    .line 256
    :catch_0
    move-exception v0

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kn:Lcom/google/android/libraries/a/a/f;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/f;->QS(Z)V

    .line 301
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/c;->QE()V

    .line 303
    iget v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    .line 304
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 313
    :cond_0
    :goto_0
    return-void

    .line 297
    :cond_1
    return-void

    .line 304
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/c;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 326
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kn:Lcom/google/android/libraries/a/a/f;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/f;->QS(Z)V

    .line 328
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kp:Lcom/google/android/libraries/a/a/g;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/g;->QY()V

    .line 330
    iget v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    .line 331
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 340
    :cond_0
    :goto_0
    return-void

    .line 322
    :cond_1
    return-void

    .line 331
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kk:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/c;->Kq:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/c;->Ki:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    :catch_0
    move-exception v0

    goto :goto_0
.end method
