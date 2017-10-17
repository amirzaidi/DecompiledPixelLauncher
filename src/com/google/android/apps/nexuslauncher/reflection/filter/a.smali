.class public Lcom/google/android/apps/nexuslauncher/reflection/filter/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final o:[Ljava/lang/String;


# instance fields
.field private final mMyUserHandle:Landroid/os/UserHandle;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

.field private final q:Ljava/util/HashSet;

.field private final r:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x1e

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "com.google.android.apps.photos"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "com.google.android.apps.maps"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "com.google.android.gm"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "com.google.android.deskclock"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "com.android.settings"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "com.whatsapp"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "com.facebook.katana"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "com.facebook.orca"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "com.google.android.youtube"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "com.yodo1.crossyroad"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "com.spotify.music"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "com.android.chrome"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "com.instagram.android"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "com.skype.raider"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "com.snapchat.android"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "com.viber.voip"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "com.twitter.android"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "com.android.phone"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "com.google.android.music"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "com.google.android.calendar"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "com.google.android.apps.genie.geniewidget"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "com.netflix.mediaclient"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "bbc.iplayer.android"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "com.google.android.videos"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "com.amazon.mShop.android.shopping"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "com.microsoft.office.word"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "com.google.android.apps.docs"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 65
    const-string/jumbo v1, "com.google.android.keep"

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    .line 66
    const-string/jumbo v1, "com.google.android.apps.plus"

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    .line 67
    const-string/jumbo v1, "com.google.android.talk"

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->r:Ljava/util/Map;

    .line 84
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->q:Ljava/util/HashSet;

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 88
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->mMyUserHandle:Landroid/os/UserHandle;

    .line 90
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 93
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string/jumbo v3, ""

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 94
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aput-object v1, v2, v0

    .line 95
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->r:Ljava/util/Map;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 97
    :cond_0
    return-void
.end method

.method private o(F)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 129
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 131
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 132
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 133
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p(I)V

    .line 135
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 136
    new-instance v2, Lcom/google/research/reflection/predictor/f;

    .line 138
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->s:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/reflection/g;->aU(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 140
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    .line 136
    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/predictor/f;-><init>(Ljava/lang/String;F)V

    .line 142
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    :cond_2
    return-object v1
.end method

.method private p(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 149
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 154
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_2

    .line 156
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 157
    if-eqz v1, :cond_2

    .line 158
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v1, v0

    .line 161
    :goto_0
    if-eqz v1, :cond_1

    .line 162
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 163
    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 164
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->state:I

    .line 167
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aget-object v1, v1, p1

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->s:Ljava/lang/String;

    .line 172
    :goto_1
    return-void

    .line 169
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aget-object v0, v0, p1

    iput v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->state:I

    .line 170
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->p:[Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->s:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public n(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 108
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 109
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    iget v0, v0, Lcom/google/research/reflection/predictor/f;->MK:F

    sub-float/2addr v0, v1

    .line 111
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->o(F)Ljava/util/ArrayList;

    move-result-object v1

    .line 114
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->q:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 115
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    .line 116
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->q:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/google/research/reflection/predictor/f;->ML:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 118
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    .line 119
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->q:Ljava/util/HashSet;

    iget-object v3, v0, Lcom/google/research/reflection/predictor/f;->ML:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    if-eqz p2, :cond_1

    .line 122
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 126
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public q(I[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 176
    const/4 v0, 0x0

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 177
    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->r(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 176
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public r(ILjava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->mMyUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->r:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    .line 191
    if-eqz v0, :cond_0

    .line 192
    iput p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->state:I

    .line 195
    :cond_0
    return-void
.end method

.method public s(ILandroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->mMyUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;->r:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    .line 209
    if-eqz v0, :cond_0

    .line 210
    iput p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->state:I

    .line 211
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->s:Ljava/lang/String;

    .line 214
    :cond_0
    return-void
.end method
