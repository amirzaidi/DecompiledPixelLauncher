.class final Lcom/google/android/apps/nexuslauncher/qsb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/a;


# instance fields
.field final synthetic ac:Lcom/google/android/gms/common/api/d;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/d;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->ac:Lcom/google/android/gms/common/api/d;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->val$context:Landroid/content/Context;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public bridge synthetic C(Lcom/google/android/gms/common/api/b;)V
    .locals 0

    .prologue
    .line 151
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/j;->ah(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public ah(Lcom/google/android/gms/common/api/Status;)V
    .locals 5

    .prologue
    .line 153
    sget-object v0, Lcom/google/android/gms/phenotype/f;->lQ:Lcom/google/android/gms/phenotype/a;

    .line 154
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->ac:Lcom/google/android/gms/common/api/d;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->val$context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ""

    const/4 v4, 0x0

    .line 153
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/google/android/gms/phenotype/a;->oD(Lcom/google/android/gms/common/api/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/c;

    move-result-object v0

    .line 155
    new-instance v1, Lcom/google/android/apps/nexuslauncher/qsb/k;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->val$context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/qsb/j;->ac:Lcom/google/android/gms/common/api/d;

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/apps/nexuslauncher/qsb/k;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/j;Landroid/content/Context;Lcom/google/android/gms/common/api/d;)V

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/api/c;->ds(Lcom/google/android/gms/common/api/a;)V

    .line 174
    return-void
.end method
