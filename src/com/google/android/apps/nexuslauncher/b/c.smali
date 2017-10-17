.class public Lcom/google/android/apps/nexuslauncher/b/c;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# static fields
.field public static final fk:Landroid/content/ComponentName;


# instance fields
.field private final fl:Ljava/util/Set;

.field private fm:Lcom/google/android/apps/nexuslauncher/b/b;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Landroid/content/ComponentName;

    .line 45
    const-string/jumbo v1, "com.google.android.deskclock"

    const-string/jumbo v2, "com.android.deskclock.DeskClock"

    .line 44
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/b/c;->fk:Landroid/content/ComponentName;

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 70
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/c;->fl:Ljava/util/Set;

    .line 68
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/c;->fm:Lcom/google/android/apps/nexuslauncher/b/b;

    .line 71
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/c;->mContext:Landroid/content/Context;

    .line 74
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 75
    const-string/jumbo v1, "com.google.android.deskclock"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    .line 76
    const-string/jumbo v3, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "android.intent.action.PACKAGE_CHANGED"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 75
    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/a/b;->dy(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, p0, v1, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 78
    new-instance v1, Lcom/google/android/apps/nexuslauncher/b/d;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/b/d;-><init>(Lcom/google/android/apps/nexuslauncher/b/c;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 87
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/e;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/b/e;-><init>(Lcom/google/android/apps/nexuslauncher/b/c;)V

    .line 94
    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.intent.action.TIMEZONE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 95
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 86
    invoke-virtual {p1, v0, v1, v5, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 96
    return-void
.end method

.method public static dK(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/b/c;->dL(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/b/b;->clone()Lcom/google/android/apps/nexuslauncher/b/b;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_0

    .line 142
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/b/b;->dG()Z

    .line 143
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    return-object v0

    .line 145
    :cond_0
    return-object v1
.end method

.method private static dL(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/b/b;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 151
    invoke-static {}, Lcom/android/launcher3/util/Preconditions;->assertWorkerThread()V

    .line 152
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/b/b;-><init>()V

    .line 154
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 155
    const-string/jumbo v2, "com.google.android.deskclock"

    .line 156
    const/16 v3, 0x2080

    .line 155
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    .line 157
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 158
    if-nez v3, :cond_0

    .line 159
    return-object v0

    .line 161
    :cond_0
    const-string/jumbo v4, "com.google.android.apps.nexuslauncher.LEVEL_PER_TICK_ICON_ROUND"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 162
    if-nez v4, :cond_1

    .line 163
    return-object v0

    .line 166
    :cond_1
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4, p1}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    .line 170
    const-string/jumbo v1, "com.google.android.apps.nexuslauncher.HOUR_LAYER_INDEX"

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 169
    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fg:I

    .line 172
    const-string/jumbo v1, "com.google.android.apps.nexuslauncher.MINUTE_LAYER_INDEX"

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 171
    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fi:I

    .line 174
    const-string/jumbo v1, "com.google.android.apps.nexuslauncher.SECOND_LAYER_INDEX"

    const/4 v2, -0x1

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 173
    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    .line 176
    const-string/jumbo v1, "com.google.android.apps.nexuslauncher.DEFAULT_HOUR"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fc:I

    .line 177
    const-string/jumbo v1, "com.google.android.apps.nexuslauncher.DEFAULT_MINUTE"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fd:I

    .line 178
    const-string/jumbo v1, "com.google.android.apps.nexuslauncher.DEFAULT_SECOND"

    const/4 v2, 0x0

    invoke-virtual {v3, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fe:I

    .line 180
    if-eqz p2, :cond_2

    .line 181
    invoke-static {p0}, Lcom/android/launcher3/graphics/IconNormalizer;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/IconNormalizer;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    .line 182
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 181
    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/graphics/IconNormalizer;->getScale(Landroid/graphics/drawable/Drawable;Landroid/graphics/RectF;Landroid/graphics/Path;[Z)F

    move-result v1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->scale:F

    .line 185
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/b/b;->dI()Landroid/graphics/drawable/LayerDrawable;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v2

    .line 187
    iget v3, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fg:I

    if-ltz v3, :cond_3

    iget v3, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fg:I

    if-lt v3, v2, :cond_4

    .line 188
    :cond_3
    const/4 v3, -0x1

    iput v3, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fg:I

    .line 190
    :cond_4
    iget v3, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fi:I

    if-ltz v3, :cond_5

    iget v3, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fi:I

    if-lt v3, v2, :cond_6

    .line 191
    :cond_5
    const/4 v3, -0x1

    iput v3, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fi:I

    .line 193
    :cond_6
    iget v3, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    if-ltz v3, :cond_7

    iget v3, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    if-lt v3, v2, :cond_8

    .line 194
    :cond_7
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    .line 202
    :goto_0
    return-object v0

    .line 196
    :cond_8
    iget v2, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/drawable/LayerDrawable;->setDrawable(ILandroid/graphics/drawable/Drawable;)V

    .line 197
    const/4 v1, -0x1

    iput v1, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fj:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    iput-object v6, v0, Lcom/google/android/apps/nexuslauncher/b/b;->fb:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method private dM(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    move-object v1, v0

    .line 107
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/c;->fl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/b/a;

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/b/a;->dF(Ljava/util/TimeZone;)V

    goto :goto_1

    .line 106
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method private dN()V
    .locals 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/c;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/c;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/LauncherAppState;->getIDP(Landroid/content/Context;)Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/InvariantDeviceProfile;->fillResIconDpi:I

    const/4 v2, 0x1

    .line 114
    invoke-static {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/b/c;->dL(Landroid/content/Context;IZ)Lcom/google/android/apps/nexuslauncher/b/b;

    move-result-object v0

    .line 116
    new-instance v1, Lcom/android/launcher3/MainThreadExecutor;

    invoke-direct {v1}, Lcom/android/launcher3/MainThreadExecutor;-><init>()V

    new-instance v2, Lcom/google/android/apps/nexuslauncher/b/f;

    invoke-direct {v2, p0, v0}, Lcom/google/android/apps/nexuslauncher/b/f;-><init>(Lcom/google/android/apps/nexuslauncher/b/c;Lcom/google/android/apps/nexuslauncher/b/b;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/MainThreadExecutor;->execute(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method private dO(Lcom/google/android/apps/nexuslauncher/b/b;)V
    .locals 3

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/c;->fm:Lcom/google/android/apps/nexuslauncher/b/b;

    .line 127
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/c;->fl:Ljava/util/Set;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/b/a;

    .line 128
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b/c;->fm:Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-virtual {v2}, Lcom/google/android/apps/nexuslauncher/b/b;->clone()Lcom/google/android/apps/nexuslauncher/b/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/b/a;->dE(Lcom/google/android/apps/nexuslauncher/b/b;)V

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method static synthetic dP(Lcom/google/android/apps/nexuslauncher/b/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/b/c;->dM(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic dQ(Lcom/google/android/apps/nexuslauncher/b/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/c;->dN()V

    return-void
.end method

.method static synthetic dR(Lcom/google/android/apps/nexuslauncher/b/c;Lcom/google/android/apps/nexuslauncher/b/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/b/c;->dO(Lcom/google/android/apps/nexuslauncher/b/b;)V

    return-void
.end method


# virtual methods
.method public dJ(Landroid/graphics/Bitmap;)Lcom/google/android/apps/nexuslauncher/b/a;
    .locals 2

    .prologue
    .line 134
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b/a;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/c;->fm:Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/b/b;->clone()Lcom/google/android/apps/nexuslauncher/b/b;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/apps/nexuslauncher/b/a;-><init>(Landroid/graphics/Bitmap;Lcom/google/android/apps/nexuslauncher/b/b;)V

    .line 135
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/c;->fl:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 136
    return-object v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 100
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b/c;->dN()V

    .line 101
    return-void
.end method
