.class public Lcom/google/android/apps/nexuslauncher/reflection/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final bs:Ljava/util/List;

.field public static final bt:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 78
    const-string/jumbo v0, "^([^/]+)/([^#/]+)(#(\\d+))?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->bt:Ljava/util/regex/Pattern;

    .line 131
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    .line 132
    const-string/jumbo v1, "reflection.engine"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 133
    const-string/jumbo v1, "reflection.engine.background"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 134
    const-string/jumbo v1, "reflection.events"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 135
    const-string/jumbo v1, "model.properties.xml"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 136
    const-string/jumbo v1, "reflection_multi_process.xml"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 137
    const-string/jumbo v1, "client_actions"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 131
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 130
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 129
    sput-object v0, Lcom/google/android/apps/nexuslauncher/reflection/g;->bs:Ljava/util/List;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aT(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    .prologue
    .line 140
    const-string/jumbo v0, "reflection.private.properties"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static aU(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
