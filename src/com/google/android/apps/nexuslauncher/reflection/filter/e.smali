.class Lcom/google/android/apps/nexuslauncher/reflection/filter/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public D:I

.field public E:Ljava/lang/String;

.field public F:J

.field final synthetic G:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/filter/d;Landroid/content/ComponentName;JJ)V
    .locals 1

    .prologue
    .line 105
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->G:Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;->A(Lcom/google/android/apps/nexuslauncher/reflection/filter/d;)Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    move-result-object v0

    invoke-virtual {v0, p2, p3, p4}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;->i(Landroid/content/ComponentName;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->E:Ljava/lang/String;

    .line 107
    iput-wide p5, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->F:J

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->D:I

    .line 109
    return-void
.end method
