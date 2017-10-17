.class public Lcom/google/android/apps/nexuslauncher/a/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field public static final dl:Landroid/content/ComponentName;

.field private static dp:Lcom/google/android/apps/nexuslauncher/a/a;


# instance fields
.field dm:Landroid/graphics/drawable/LayerDrawable;

.field private dn:I

.field private do:I

.field private dq:I

.field private final mContext:Landroid/content/Context;

.field private mScale:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/a/a;->LOCK:Ljava/lang/Object;

    .line 28
    new-instance v0, Landroid/content/ComponentName;

    .line 29
    const-string/jumbo v1, "com.google.android.deskclock"

    const-string/jumbo v2, "com.android.deskclock.DeskClock"

    .line 28
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/a/a;->dl:Landroid/content/ComponentName;

    .line 22
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 53
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    .line 57
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 58
    const-string/jumbo v1, "com.google.android.deskclock"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 59
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 58
    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/util/a;->cC(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    .line 60
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p1, p0, v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 61
    new-instance v1, Lcom/google/android/apps/nexuslauncher/a/c;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/a/c;-><init>(Lcom/google/android/apps/nexuslauncher/a/a;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    return-void
.end method

.method private static cL(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 128
    if-eqz p2, :cond_0

    .line 129
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private cP()V
    .locals 5

    .prologue
    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "com.google.android.deskclock"

    .line 77
    const/16 v2, 0x2080

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 79
    if-nez v1, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 83
    const-string/jumbo v2, "com.google.android.deskclock"

    .line 82
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 84
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    .line 85
    const-string/jumbo v3, "com.google.android.apps.nexuslauncher.LEVEL_PER_TICK_ICON"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 84
    invoke-static {v2, v0, v3}, Lcom/google/android/apps/nexuslauncher/a/a;->cL(Landroid/content/Context;Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dm:Landroid/graphics/drawable/LayerDrawable;

    .line 87
    const-string/jumbo v0, "com.google.android.apps.nexuslauncher.HOUR_LAYER_INDEX"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dn:I

    .line 88
    const-string/jumbo v0, "com.google.android.apps.nexuslauncher.MINUTE_LAYER_INDEX"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->do:I

    .line 89
    const-string/jumbo v0, "com.google.android.apps.nexuslauncher.SECOND_LAYER_INDEX"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dq:I

    .line 91
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dm:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconNormalizer;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dm:Landroid/graphics/drawable/LayerDrawable;

    const/4 v2, 0x0

    .line 93
    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 92
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mScale:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 95
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic cQ(Lcom/google/android/apps/nexuslauncher/a/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/a/a;->cP()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/a/a;
    .locals 3

    .prologue
    .line 140
    sget-object v1, Lcom/google/android/apps/nexuslauncher/a/a;->LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 141
    :try_start_0
    sget-object v0, Lcom/google/android/apps/nexuslauncher/a/a;->dp:Lcom/google/android/apps/nexuslauncher/a/a;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/a;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/google/android/apps/nexuslauncher/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/a/a;->dp:Lcom/google/android/apps/nexuslauncher/a/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 145
    sget-object v0, Lcom/google/android/apps/nexuslauncher/a/a;->dp:Lcom/google/android/apps/nexuslauncher/a/a;

    return-object v0

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public cM(Ljava/util/Calendar;)Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    const/16 v5, 0xc

    const/16 v4, 0xa

    const/4 v3, -0x1

    .line 103
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dn:I

    if-eq v0, v3, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dm:Landroid/graphics/drawable/LayerDrawable;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dn:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 108
    :cond_0
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->do:I

    if-eq v0, v3, :cond_1

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dm:Landroid/graphics/drawable/LayerDrawable;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->do:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 110
    invoke-virtual {p1, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x3c

    invoke-virtual {p1, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 113
    :cond_1
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dq:I

    if-eq v0, v3, :cond_2

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dm:Landroid/graphics/drawable/LayerDrawable;

    iget v1, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dq:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 116
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xa

    .line 117
    const/16 v2, 0xe

    invoke-virtual {p1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    .line 116
    add-int/2addr v1, v2

    .line 115
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 120
    :cond_2
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dm:Landroid/graphics/drawable/LayerDrawable;

    return-object v0
.end method

.method public cN()F
    .locals 1

    .prologue
    .line 124
    iget v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->mScale:F

    return v0
.end method

.method public cO()Z
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/a/a;->dm:Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/a/a;->cP()V

    .line 72
    return-void
.end method
