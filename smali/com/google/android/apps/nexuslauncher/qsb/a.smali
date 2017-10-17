.class public Lcom/google/android/apps/nexuslauncher/qsb/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static VALIDITY_DURATION:J


# instance fields
.field public final a:J

.field public final b:I

.field public final c:J

.field public final d:Landroid/widget/RemoteViews;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-wide/32 v0, 0x6ddd00

    sput-wide v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->VALIDITY_DURATION:J

    .line 16
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    .line 37
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.googlequicksearchbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 39
    :goto_0
    if-eqz v0, :cond_0

    .line 40
    iget-wide v2, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->a:J

    .line 41
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->b:I

    .line 47
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->c:J

    .line 48
    return-void

    .line 43
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->a:J

    .line 44
    iput v4, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->b:I

    goto :goto_1

    .line 38
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string/jumbo v0, "gsa_version"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->b:I

    .line 52
    const-string/jumbo v0, "gsa_update_time"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->a:J

    .line 53
    const-string/jumbo v0, "publish_time"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->c:J

    .line 54
    const-string/jumbo v0, "views"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/widget/RemoteViews;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    .line 55
    return-void
.end method


# virtual methods
.method public a()J
    .locals 4

    .prologue
    .line 70
    sget-wide v0, Lcom/google/android/apps/nexuslauncher/qsb/a;->VALIDITY_DURATION:J

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->c:J

    add-long/2addr v0, v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 58
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 59
    const-string/jumbo v1, "gsa_version"

    iget v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    const-string/jumbo v1, "gsa_update_time"

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 61
    const-string/jumbo v1, "publish_time"

    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->c:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 62
    const-string/jumbo v1, "views"

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/a;->d:Landroid/widget/RemoteViews;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 63
    return-object v0
.end method
