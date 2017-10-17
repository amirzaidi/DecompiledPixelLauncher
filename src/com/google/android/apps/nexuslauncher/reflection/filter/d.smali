.class public Lcom/google/android/apps/nexuslauncher/reflection/filter/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final cj:[Ljava/lang/String;


# instance fields
.field private final ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

.field private final cl:Ljava/util/HashSet;

.field private final cm:Ljava/util/Map;

.field private final mMyUserHandle:Landroid/os/UserHandle;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    const/16 v0, 0x1b

    new-array v0, v0, [Ljava/lang/String;

    .line 38
    const-string/jumbo v1, "com.whatsapp"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 39
    const-string/jumbo v1, "com.facebook.katana"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 40
    const-string/jumbo v1, "com.facebook.orca"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 41
    const-string/jumbo v1, "com.google.android.youtube"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 42
    const-string/jumbo v1, "com.yodo1.crossyroad"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 43
    const-string/jumbo v1, "com.spotify.music"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 44
    const-string/jumbo v1, "com.android.chrome"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 45
    const-string/jumbo v1, "com.instagram.android"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 46
    const-string/jumbo v1, "com.google.android.gm"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 47
    const-string/jumbo v1, "com.skype.raider"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 48
    const-string/jumbo v1, "com.snapchat.android"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "com.viber.voip"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "com.twitter.android"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "com.android.phone"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 52
    const-string/jumbo v1, "com.google.android.music"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 53
    const-string/jumbo v1, "com.google.android.calendar"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 54
    const-string/jumbo v1, "com.google.android.apps.genie.geniewidget"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 55
    const-string/jumbo v1, "com.netflix.mediaclient"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 56
    const-string/jumbo v1, "bbc.iplayer.android"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 57
    const-string/jumbo v1, "com.google.android.videos"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 58
    const-string/jumbo v1, "com.android.settings"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    .line 59
    const-string/jumbo v1, "com.amazon.mShop.android.shopping"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 60
    const-string/jumbo v1, "com.microsoft.office.word"

    const/16 v2, 0x16

    aput-object v1, v0, v2

    .line 61
    const-string/jumbo v1, "com.google.android.apps.docs"

    const/16 v2, 0x17

    aput-object v1, v0, v2

    .line 62
    const-string/jumbo v1, "com.google.android.keep"

    const/16 v2, 0x18

    aput-object v1, v0, v2

    .line 63
    const-string/jumbo v1, "com.google.android.apps.plus"

    const/16 v2, 0x19

    aput-object v1, v0, v2

    .line 64
    const-string/jumbo v1, "com.google.android.talk"

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    .line 36
    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cj:[Ljava/lang/String;

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cj:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cm:Ljava/util/Map;

    .line 81
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cl:Ljava/util/HashSet;

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->mMyUserHandle:Landroid/os/UserHandle;

    .line 87
    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cj:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 90
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    sget-object v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cj:[Ljava/lang/String;

    aget-object v2, v2, v0

    const-string/jumbo v3, ""

    const/4 v4, -0x1

    invoke-direct {v1, v2, v3, v0, v4}, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 91
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aput-object v1, v2, v0

    .line 92
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cm:Ljava/util/Map;

    sget-object v3, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cj:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method private bu(F)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 126
    new-instance v1, Ljava/util/ArrayList;

    sget-object v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cj:[Ljava/lang/String;

    array-length v0, v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    const/4 v0, 0x0

    :goto_0
    sget-object v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cj:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 129
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->state:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 130
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bv(I)V

    .line 132
    :cond_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->state:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 133
    new-instance v2, Lcom/google/research/reflection/predictor/f;

    .line 135
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aget-object v4, v4, v0

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aget-object v5, v5, v0

    iget-object v5, v5, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->cn:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/reflection/g;->bZ(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v3

    .line 137
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, p1, v4

    .line 133
    invoke-direct {v2, v3, v4}, Lcom/google/research/reflection/predictor/f;-><init>(Ljava/lang/String;F)V

    .line 139
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_2
    return-object v1
.end method

.method private bv(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 146
    sget-object v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cj:[Ljava/lang/String;

    aget-object v1, v1, p1

    .line 151
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_2

    .line 153
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 154
    if-eqz v1, :cond_2

    .line 155
    iget-object v0, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object v1, v0

    .line 158
    :goto_0
    if-eqz v1, :cond_1

    .line 159
    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 160
    const-string/jumbo v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 161
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 163
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aget-object v1, v1, p1

    const/4 v2, 0x1

    iput v2, v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->state:I

    .line 164
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aget-object v1, v1, p1

    iput-object v0, v1, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->cn:Ljava/lang/String;

    .line 169
    :goto_1
    return-void

    .line 166
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aget-object v0, v0, p1

    iput v3, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->state:I

    .line 167
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->ck:[Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    aget-object v0, v0, p1

    const-string/jumbo v1, ""

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->cn:Ljava/lang/String;

    goto :goto_1

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method


# virtual methods
.method public bl(Ljava/util/List;Ljava/util/List;)V
    .locals 4

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 105
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 106
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    iget v0, v0, Lcom/google/research/reflection/predictor/f;->LQ:F

    sub-float/2addr v0, v1

    .line 108
    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bu(F)Ljava/util/ArrayList;

    move-result-object v1

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cl:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 112
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/predictor/f;

    .line 113
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cl:Ljava/util/HashSet;

    iget-object v0, v0, Lcom/google/research/reflection/predictor/f;->LR:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 115
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

    .line 116
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cl:Ljava/util/HashSet;

    iget-object v3, v0, Lcom/google/research/reflection/predictor/f;->LR:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 117
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    if-eqz p2, :cond_1

    .line 119
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 123
    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public br(ILandroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->mMyUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cm:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    iput p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->state:I

    .line 208
    invoke-virtual {p2}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->cn:Ljava/lang/String;

    .line 211
    :cond_0
    return-void
.end method

.method public bs(ILjava/lang/String;Landroid/os/UserHandle;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->mMyUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0, p3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->cm:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;

    .line 188
    if-eqz v0, :cond_0

    .line 189
    iput p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->state:I

    .line 192
    :cond_0
    return-void
.end method

.method public bt(I[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .prologue
    .line 173
    const/4 v0, 0x0

    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    .line 174
    invoke-virtual {p0, p1, v2, p3}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->bs(ILjava/lang/String;Landroid/os/UserHandle;)V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method
