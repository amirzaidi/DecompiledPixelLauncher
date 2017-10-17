.class final Lcom/google/android/apps/nexuslauncher/reflection/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/PendingIntent$OnFinished;


# instance fields
.field final synthetic bK:Lcom/google/android/apps/nexuslauncher/reflection/k;

.field final synthetic bL:Landroid/util/MutableLong;

.field final synthetic bM:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/reflection/k;Landroid/util/MutableLong;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->bK:Lcom/google/android/apps/nexuslauncher/reflection/k;

    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->bL:Landroid/util/MutableLong;

    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->bM:Ljava/util/concurrent/CountDownLatch;

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onSendFinished(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->bL:Landroid/util/MutableLong;

    const-string/jumbo v1, "time"

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->bL:Landroid/util/MutableLong;

    iget-wide v2, v2, Landroid/util/MutableLong;->value:J

    invoke-virtual {p2, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v0, Landroid/util/MutableLong;->value:J

    .line 64
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/p;->bM:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 65
    return-void
.end method
