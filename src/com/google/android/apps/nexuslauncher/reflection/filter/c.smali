.class Lcom/google/android/apps/nexuslauncher/reflection/filter/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cf:I

.field public cg:Ljava/lang/String;

.field public ch:J

.field final synthetic ci:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/filter/b;Landroid/content/ComponentName;JJ)V
    .locals 1

    .prologue
    .line 101
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->ci:Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->bq(Lcom/google/android/apps/nexuslauncher/reflection/filter/b;)Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;->aY(Landroid/content/ComponentName;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->cg:Ljava/lang/String;

    .line 103
    iput-wide p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->ch:J

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;->cf:I

    .line 105
    return-void
.end method
