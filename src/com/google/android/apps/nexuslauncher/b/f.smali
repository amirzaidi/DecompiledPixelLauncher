.class final Lcom/google/android/apps/nexuslauncher/b/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic fp:Lcom/google/android/apps/nexuslauncher/b/c;

.field final synthetic fq:Lcom/google/android/apps/nexuslauncher/b/b;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/b/c;Lcom/google/android/apps/nexuslauncher/b/b;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->fp:Lcom/google/android/apps/nexuslauncher/b/c;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/b/f;->fq:Lcom/google/android/apps/nexuslauncher/b/b;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b/f;->fp:Lcom/google/android/apps/nexuslauncher/b/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b/f;->fq:Lcom/google/android/apps/nexuslauncher/b/b;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/b/c;->dR(Lcom/google/android/apps/nexuslauncher/b/c;Lcom/google/android/apps/nexuslauncher/b/b;)V

    .line 120
    return-void
.end method
