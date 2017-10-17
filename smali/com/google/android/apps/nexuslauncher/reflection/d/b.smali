.class public Lcom/google/android/apps/nexuslauncher/reflection/d/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/reflection/f;


# instance fields
.field private final bJ:Ljava/util/ArrayList;

.field private final bK:Lcom/google/android/gms/common/api/d;

.field private final bL:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

.field private final bM:J

.field private final bN:Ljava/util/List;

.field private final bO:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .prologue
    const/4 v1, 0x4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bJ:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bL:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bN:Ljava/util/List;

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bO:Ljava/util/List;

    .line 54
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->aZ(Landroid/content/Context;)Lcom/google/android/gms/common/api/d;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bK:Lcom/google/android/gms/common/api/d;

    .line 55
    invoke-static {p1}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v0

    .line 56
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/UserManagerCompat;->getSerialNumberForUser(Landroid/os/UserHandle;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bM:J

    .line 65
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bN:Ljava/util/List;

    .line 66
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/d/e;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bK:Lcom/google/android/gms/common/api/d;

    sget-object v3, Lcom/google/android/gms/location/b;->Ce:Lcom/google/android/gms/location/a;

    invoke-direct {v1, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/d/e;-><init>(Lcom/google/android/gms/common/api/d;Lcom/google/android/gms/location/a;)V

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/d/d;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bL:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-direct {v0, v1, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/d;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/b/b;Landroid/content/Context;)V

    .line 75
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bO:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bJ:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bc(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bN:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bK:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dv()V

    .line 89
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bd()V

    .line 90
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/util/List;J)V
    .locals 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bJ:Ljava/util/ArrayList;

    .line 99
    new-instance v0, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bL:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    .line 100
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bN:Ljava/util/List;

    .line 101
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bO:Ljava/util/List;

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bK:Lcom/google/android/gms/common/api/d;

    .line 103
    iput-wide p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bM:J

    .line 106
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bd()V

    .line 107
    return-void
.end method

.method private aZ(Landroid/content/Context;)Lcom/google/android/gms/common/api/d;
    .locals 2

    .prologue
    .line 183
    new-instance v0, Lcom/google/android/gms/common/api/e;

    invoke-direct {v0, p1}, Lcom/google/android/gms/common/api/e;-><init>(Landroid/content/Context;)V

    .line 185
    sget-object v1, Lcom/google/android/gms/location/b;->Cd:Lcom/google/android/gms/common/api/h;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/e;->dO(Lcom/google/android/gms/common/api/h;)Lcom/google/android/gms/common/api/e;

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->dI()Lcom/google/android/gms/common/api/e;

    .line 193
    invoke-virtual {v0}, Lcom/google/android/gms/common/api/e;->build()Lcom/google/android/gms/common/api/d;

    move-result-object v0

    return-object v0
.end method

.method private bb()Lcom/google/android/apps/nexuslauncher/reflection/a/a;
    .locals 4

    .prologue
    .line 159
    const/4 v1, 0x0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bL:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;->ay()Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->am([B)Lcom/google/android/apps/nexuslauncher/reflection/a/a;
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    const-string/jumbo v2, "Reflection.Situation"

    const-string/jumbo v3, "error duplicating Event"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method private bc(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/d/a;
    .locals 5

    .prologue
    .line 200
    const/4 v1, 0x0

    .line 201
    const-string/jumbo v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    .line 202
    const-string/jumbo v2, "android:get_usage_stats"

    .line 203
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 202
    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    .line 204
    if-nez v0, :cond_0

    .line 205
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/d/a;

    .line 206
    const-string/jumbo v0, "usagestats"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManager;

    .line 205
    invoke-direct {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/d/a;-><init>(Landroid/app/usage/UsageStatsManager;)V

    move-object v0, v1

    .line 212
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public aX(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;JJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/b/b;
    .locals 2

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bd()V

    .line 123
    invoke-virtual/range {p0 .. p9}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->ba(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;JJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    move-result-object v0

    return-object v0
.end method

.method public aY(Landroid/content/ComponentName;J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 171
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/g;->bZ(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 172
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bM:J

    cmp-long v1, p2, v2

    if-eqz v1, :cond_0

    .line 173
    const-string/jumbo v1, "%s#%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 175
    :cond_0
    return-object v0
.end method

.method public ba(Ljava/lang/String;Ljava/lang/String;Ljava/util/Calendar;JJLjava/lang/String;Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/reflection/b/b;
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bb()Lcom/google/android/apps/nexuslauncher/reflection/a/a;

    move-result-object v0

    .line 138
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->aw:J

    .line 139
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->ay:Ljava/lang/String;

    .line 140
    invoke-virtual {p3}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    iget-wide v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->aw:J

    invoke-virtual {v1, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->ax:J

    .line 141
    iput-wide p4, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->am:J

    .line 142
    iput-wide p6, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->ap:J

    .line 144
    iput-object p8, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->as:Ljava/lang/String;

    .line 145
    iput-object p1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->an:Ljava/lang/String;

    .line 146
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "GEL"

    aput-object v2, v1, v4

    const/4 v2, 0x1

    aput-object p9, v1, v2

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->aq:[Ljava/lang/String;

    .line 147
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 148
    :cond_0
    const-string/jumbo v1, "app_launch"

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->az:Ljava/lang/String;

    .line 155
    :goto_0
    new-instance v1, Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-direct {v1, v0}, Lcom/google/android/apps/nexuslauncher/reflection/b/b;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/a/a;)V

    return-object v1

    .line 150
    :cond_1
    iput-object p2, v0, Lcom/google/android/apps/nexuslauncher/reflection/a/a;->az:Ljava/lang/String;

    goto :goto_0
.end method

.method public bd()V
    .locals 3

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bN:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/d/c;

    .line 111
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bL:Lcom/google/android/apps/nexuslauncher/reflection/b/b;

    invoke-interface {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/d/c;->aW(Lcom/google/android/apps/nexuslauncher/reflection/b/b;)V

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method

.method public be()V
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bK:Lcom/google/android/gms/common/api/d;

    invoke-virtual {v0}, Lcom/google/android/gms/common/api/d;->dx()V

    .line 218
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->bJ:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/reflection/f;

    .line 219
    invoke-interface {v0}, Lcom/google/android/apps/nexuslauncher/reflection/f;->be()V

    goto :goto_0

    .line 221
    :cond_0
    return-void
.end method
