.class final Lcom/google/android/apps/nexuslauncher/graphics/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic eU:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;


# direct methods
.method constructor <init>(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/graphics/a;->eU:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 29
    const-string/jumbo v0, "android.intent.action.TIME_TICK"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 30
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/graphics/a;->eU:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-static {v1, v0}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->du(Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;Z)V

    .line 31
    return-void
.end method
