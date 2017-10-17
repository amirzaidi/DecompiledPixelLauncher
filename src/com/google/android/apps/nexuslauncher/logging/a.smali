.class public Lcom/google/android/apps/nexuslauncher/logging/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private bN:Lcom/google/android/gms/clearcut/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance v0, Lcom/google/android/gms/clearcut/a;

    const-string/jumbo v1, "GOOGLE_NOW_LAUNCHER"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/google/android/gms/clearcut/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->bN:Lcom/google/android/gms/clearcut/a;

    .line 18
    return-void
.end method


# virtual methods
.method public bm(Lcom/android/launcher3/userevent/nano/LauncherLogProto$LauncherEvent;)V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/logging/a;->bN:Lcom/google/android/gms/clearcut/a;

    .line 29
    invoke-static {p1}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/google/android/gms/clearcut/a;->Ml([B)Lcom/google/android/gms/clearcut/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/clearcut/b;->My()Lcom/google/android/gms/common/api/f;

    .line 31
    return-void
.end method
