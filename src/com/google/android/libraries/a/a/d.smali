.class public Lcom/google/android/libraries/a/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static LY:I


# instance fields
.field private LN:I

.field private final LO:Landroid/app/Activity;

.field private LP:Landroid/os/Bundle;

.field private LQ:Landroid/view/WindowManager$LayoutParams;

.field private LR:I

.field private final LS:Lcom/google/android/libraries/a/a/b;

.field private final LT:Lcom/google/android/libraries/a/a/g;

.field private LU:Lcom/google/android/libraries/a/a/e;

.field private final LV:Lcom/google/android/libraries/a/a/h;

.field protected LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

.field private LX:I

.field private final LZ:Landroid/content/BroadcastReceiver;

.field private mDestroyed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 129
    const/4 v0, -0x1

    sput v0, Lcom/google/android/libraries/a/a/d;->LY:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/a/a/b;Lcom/google/android/libraries/a/a/f;)V
    .locals 4

    .prologue
    const/16 v3, 0x13

    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    new-instance v0, Lcom/google/android/libraries/a/a/j;

    invoke-direct {v0, p0}, Lcom/google/android/libraries/a/a/j;-><init>(Lcom/google/android/libraries/a/a/d;)V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->LZ:Landroid/content/BroadcastReceiver;

    .line 160
    iput v2, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    .line 161
    iput-boolean v2, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    .line 163
    iput v2, p0, Lcom/google/android/libraries/a/a/d;->LX:I

    .line 198
    iput-object p1, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    .line 199
    iput-object p2, p0, Lcom/google/android/libraries/a/a/d;->LS:Lcom/google/android/libraries/a/a/b;

    .line 201
    new-instance v0, Lcom/google/android/libraries/a/a/h;

    const/16 v1, 0x41

    invoke-direct {v0, p1, v1}, Lcom/google/android/libraries/a/a/h;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->LV:Lcom/google/android/libraries/a/a/h;

    .line 203
    invoke-static {p3}, Lcom/google/android/libraries/a/a/f;->RK(Lcom/google/android/libraries/a/a/f;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/a/a/d;->LR:I

    .line 205
    invoke-static {p1}, Lcom/google/android/libraries/a/a/g;->get(Landroid/content/Context;)Lcom/google/android/libraries/a/a/g;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->LT:Lcom/google/android/libraries/a/a/g;

    .line 206
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LT:Lcom/google/android/libraries/a/a/g;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/a/a/g;->RN(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 209
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 210
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 211
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v1, v3, :cond_1

    .line 214
    :goto_0
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    iget-object v2, p0, Lcom/google/android/libraries/a/a/d;->LZ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 215
    sget v0, Lcom/google/android/libraries/a/a/d;->LY:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 220
    :goto_1
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/d;->Ry()V

    .line 226
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v3, :cond_3

    .line 232
    :cond_0
    :goto_2
    return-void

    .line 212
    :cond_1
    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    goto :goto_0

    .line 216
    :cond_2
    invoke-static {p1}, Lcom/google/android/libraries/a/a/d;->Ru(Landroid/content/Context;)V

    goto :goto_1

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    .line 227
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    .line 228
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    .line 229
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/d;->onAttachedToWindow()V

    goto :goto_2
.end method

.method static synthetic RA(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 92
    invoke-static {p0}, Lcom/google/android/libraries/a/a/d;->Ru(Landroid/content/Context;)V

    return-void
.end method

.method static RC(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 661
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

    .line 662
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "v"

    const/4 v2, 0x7

    .line 663
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 664
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 665
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.android.launcher3.WINDOW_OVERLAY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    .line 666
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 667
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    .line 665
    return-object v0
.end method

.method private RE(I)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 650
    iget v2, p0, Lcom/google/android/libraries/a/a/d;->LX:I

    if-ne v2, p1, :cond_0

    .line 656
    :goto_0
    return-void

    .line 651
    :cond_0
    iput p1, p0, Lcom/google/android/libraries/a/a/d;->LX:I

    .line 652
    iget-object v3, p0, Lcom/google/android/libraries/a/a/d;->LS:Lcom/google/android/libraries/a/a/b;

    and-int/lit8 v2, p1, 0x1

    if-nez v2, :cond_1

    move v2, v0

    :goto_1
    and-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_2

    :goto_2
    invoke-interface {v3, v2, v0}, Lcom/google/android/libraries/a/a/b;->et(ZZ)V

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private RF(Z)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    if-eqz v0, :cond_0

    .line 399
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    .line 400
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LV:Lcom/google/android/libraries/a/a/h;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/h;->RS()V

    .line 401
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LU:Lcom/google/android/libraries/a/a/e;

    if-nez v0, :cond_1

    .line 405
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LT:Lcom/google/android/libraries/a/a/g;

    invoke-virtual {v0, p0, p1}, Lcom/google/android/libraries/a/a/g;->RL(Lcom/google/android/libraries/a/a/d;Z)V

    .line 406
    return-void

    .line 397
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LZ:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LU:Lcom/google/android/libraries/a/a/e;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/e;->clear()V

    .line 403
    iput-object v2, p0, Lcom/google/android/libraries/a/a/d;->LU:Lcom/google/android/libraries/a/a/e;

    goto :goto_1
.end method

.method static synthetic RG(Lcom/google/android/libraries/a/a/d;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/libraries/a/a/d;->LX:I

    return v0
.end method

.method static synthetic RH(Lcom/google/android/libraries/a/a/d;)I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    return v0
.end method

.method static synthetic Rk(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/a/a/h;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LV:Lcom/google/android/libraries/a/a/h;

    return-object v0
.end method

.method private Rm()V
    .locals 4

    .prologue
    .line 449
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_0

    .line 483
    :goto_0
    return-void

    .line 451
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LU:Lcom/google/android/libraries/a/a/e;

    if-eqz v0, :cond_1

    .line 454
    :goto_1
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LU:Lcom/google/android/libraries/a/a/e;

    invoke-virtual {v0, p0}, Lcom/google/android/libraries/a/a/e;->RJ(Lcom/google/android/libraries/a/a/d;)V

    .line 455
    sget v0, Lcom/google/android/libraries/a/a/d;->LY:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 459
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 460
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    const-string/jumbo v2, "layout_params"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 461
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    const-string/jumbo v2, "configuration"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 462
    iget v1, p0, Lcom/google/android/libraries/a/a/d;->LR:I

    const-string/jumbo v2, "client_options"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 463
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LP:Landroid/os/Bundle;

    if-nez v1, :cond_3

    .line 466
    :goto_2
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v2, p0, Lcom/google/android/libraries/a/a/d;->LU:Lcom/google/android/libraries/a/a/e;

    invoke-interface {v1, v0, v2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached2(Landroid/os/Bundle;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;)V

    .line 468
    :goto_3
    sget v0, Lcom/google/android/libraries/a/a/d;->LY:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_4

    .line 475
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V

    goto :goto_0

    .line 477
    :catch_0
    move-exception v0

    goto :goto_0

    .line 452
    :cond_1
    new-instance v0, Lcom/google/android/libraries/a/a/e;

    invoke-direct {v0}, Lcom/google/android/libraries/a/a/e;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/a/a/d;->LU:Lcom/google/android/libraries/a/a/e;

    goto :goto_1

    .line 456
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/a/a/d;->LU:Lcom/google/android/libraries/a/a/e;

    iget v3, p0, Lcom/google/android/libraries/a/a/d;->LR:I

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/google/android/libraries/launcherclient/ILauncherOverlayCallback;I)V

    goto :goto_3

    .line 464
    :cond_3
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LP:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    goto :goto_2

    .line 469
    :cond_4
    iget v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_5

    .line 472
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V

    goto :goto_0

    .line 470
    :cond_5
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method static synthetic Ro(Lcom/google/android/libraries/a/a/d;)Landroid/app/Activity;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    return-object v0
.end method

.method private Rq()Z
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic Rs(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/a/a/b;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LS:Lcom/google/android/libraries/a/a/b;

    return-object v0
.end method

.method static synthetic Rt(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/a/a/g;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LT:Lcom/google/android/libraries/a/a/g;

    return-object v0
.end method

.method private static Ru(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 764
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 765
    invoke-static {p0}, Lcom/google/android/libraries/a/a/d;->RC(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 766
    if-nez v0, :cond_1

    .line 767
    :cond_0
    sput v3, Lcom/google/android/libraries/a/a/d;->LY:I

    .line 771
    :goto_0
    return-void

    .line 766
    :cond_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 769
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v1, "service.api.version"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/google/android/libraries/a/a/d;->LY:I

    goto :goto_0
.end method

.method static synthetic Rv(Lcom/google/android/libraries/a/a/d;I)V
    .locals 0

    .prologue
    .line 92
    invoke-direct {p0, p1}, Lcom/google/android/libraries/a/a/d;->RE(I)V

    return-void
.end method

.method private Rw(Landroid/view/WindowManager$LayoutParams;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 430
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-eq v0, p1, :cond_0

    .line 433
    iput-object p1, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    .line 434
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 436
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 446
    :goto_0
    return-void

    .line 431
    :cond_0
    return-void

    .line 435
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/d;->Rm()V

    goto :goto_0

    .line 438
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->windowDetached(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_1
    iput-object v2, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    goto :goto_0

    .line 439
    :catch_0
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public RB(Lcom/google/android/libraries/a/a/f;)V
    .locals 2

    .prologue
    .line 387
    invoke-static {p1}, Lcom/google/android/libraries/a/a/f;->RK(Lcom/google/android/libraries/a/a/f;)I

    move-result v0

    iget v1, p0, Lcom/google/android/libraries/a/a/d;->LR:I

    if-ne v0, v1, :cond_1

    .line 393
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    invoke-static {p1}, Lcom/google/android/libraries/a/a/f;->RK(Lcom/google/android/libraries/a/a/f;)I

    move-result v0

    iput v0, p0, Lcom/google/android/libraries/a/a/d;->LR:I

    .line 389
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 390
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/d;->Rm()V

    goto :goto_0
.end method

.method public RD(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 570
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 572
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez p1, :cond_1

    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->openOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 573
    :catch_0
    move-exception v0

    goto :goto_0

    .line 572
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public Rl()V
    .locals 1

    .prologue
    .line 514
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/d;->Rq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    :goto_0
    return-void

    .line 516
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->endScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 517
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method Rn(Lcom/google/android/libraries/launcherclient/ILauncherOverlay;)V
    .locals 1

    .prologue
    .line 639
    iput-object p1, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 640
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-eqz v0, :cond_0

    .line 643
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 647
    :goto_0
    return-void

    .line 641
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/d;->RE(I)V

    goto :goto_0

    .line 644
    :cond_1
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/d;->Rm()V

    goto :goto_0
.end method

.method public Rp()V
    .locals 1

    .prologue
    .line 496
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/d;->Rq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 498
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startScroll()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 499
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public Rr(Z)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 552
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v1, :cond_0

    .line 562
    :goto_0
    return-void

    .line 554
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    .line 555
    if-nez p1, :cond_1

    .line 554
    :goto_1
    invoke-interface {v1, v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->closeOverlay(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 556
    :catch_0
    move-exception v0

    goto :goto_0

    .line 555
    :cond_1
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public Rx(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 628
    iput-object p1, p0, Lcom/google/android/libraries/a/a/d;->LP:Landroid/os/Bundle;

    .line 629
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_1

    .line 632
    :cond_0
    :goto_0
    return-void

    .line 629
    :cond_1
    sget v0, Lcom/google/android/libraries/a/a/d;->LY:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_0

    .line 630
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/d;->Rm()V

    goto :goto_0
.end method

.method public Ry()V
    .locals 2

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 417
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LT:Lcom/google/android/libraries/a/a/g;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/g;->RR()Z

    move-result v0

    if-nez v0, :cond_2

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    new-instance v1, Lcom/google/android/libraries/a/a/i;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/a/a/i;-><init>(Lcom/google/android/libraries/a/a/d;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 427
    :goto_0
    return-void

    .line 415
    :cond_1
    return-void

    .line 417
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LV:Lcom/google/android/libraries/a/a/h;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/h;->RR()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0
.end method

.method public Rz(F)V
    .locals 1

    .prologue
    .line 535
    invoke-direct {p0}, Lcom/google/android/libraries/a/a/d;->Rq()Z

    move-result v0

    if-nez v0, :cond_0

    .line 544
    :goto_0
    return-void

    .line 537
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onScroll(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/d;->Rw(Landroid/view/WindowManager$LayoutParams;)V

    .line 244
    return-void

    .line 241
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 369
    iget-object v1, p0, Lcom/google/android/libraries/a/a/d;->LO:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/d;->RF(Z)V

    .line 370
    return-void

    .line 369
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    if-nez v0, :cond_0

    .line 255
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/a/a/d;->Rw(Landroid/view/WindowManager$LayoutParams;)V

    .line 256
    return-void

    .line 253
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 294
    iget v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    .line 295
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    return-void

    .line 295
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 297
    :try_start_0
    sget v0, Lcom/google/android/libraries/a/a/d;->LY:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 300
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V

    goto :goto_0

    .line 302
    :catch_0
    move-exception v0

    goto :goto_0

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 268
    iget v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    .line 269
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 282
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    return-void

    .line 269
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 271
    :try_start_0
    sget v0, Lcom/google/android/libraries/a/a/d;->LY:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 274
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V

    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    goto :goto_0

    .line 272
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->onResume()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 320
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LT:Lcom/google/android/libraries/a/a/g;

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/g;->RM(Z)V

    .line 321
    invoke-virtual {p0}, Lcom/google/android/libraries/a/a/d;->Ry()V

    .line 323
    iget v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    .line 324
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 317
    :cond_1
    return-void

    .line 324
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 341
    iget-boolean v0, p0, Lcom/google/android/libraries/a/a/d;->mDestroyed:Z

    if-nez v0, :cond_1

    .line 346
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LT:Lcom/google/android/libraries/a/a/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/g;->RM(Z)V

    .line 348
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LV:Lcom/google/android/libraries/a/a/h;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/h;->RS()V

    .line 350
    iget v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    .line 351
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_2

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    return-void

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LQ:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 353
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    iget v1, p0, Lcom/google/android/libraries/a/a/d;->LN:I

    invoke-interface {v0, v1}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->setActivityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 354
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public startSearch([BLandroid/os/Bundle;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 592
    sget v0, Lcom/google/android/libraries/a/a/d;->LY:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    .line 595
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    if-nez v0, :cond_1

    .line 602
    :goto_0
    return v3

    .line 593
    :cond_0
    return v3

    .line 597
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/d;->LW:Lcom/google/android/libraries/launcherclient/ILauncherOverlay;

    invoke-interface {v0, p1, p2}, Lcom/google/android/libraries/launcherclient/ILauncherOverlay;->startSearch([BLandroid/os/Bundle;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 598
    :catch_0
    move-exception v0

    .line 599
    const-string/jumbo v1, "DrawerOverlayClient"

    const-string/jumbo v2, "Error starting session for search"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
