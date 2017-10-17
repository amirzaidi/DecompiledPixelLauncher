.class final Lcom/android/launcher3/compat/LauncherAppsCompatVO$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$acceptDelay:J

.field final synthetic val$request:Landroid/content/pm/LauncherApps$PinItemRequest;


# direct methods
.method constructor <init>(JLandroid/content/pm/LauncherApps$PinItemRequest;)V
    .locals 1

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO$1;->val$acceptDelay:J

    iput-object p3, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 126
    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO$1;->val$acceptDelay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompatVO$1;->val$request:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    .line 133
    :cond_0
    return-void

    .line 127
    :catch_0
    move-exception v0

    goto :goto_0
.end method
