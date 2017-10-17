.class final Lcom/android/launcher3/compat/LauncherAppsCompat$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$acceptDelay:J

.field final synthetic val$request:Lcom/android/launcher3/compat/PinItemRequestCompat;


# direct methods
.method constructor <init>(JLcom/android/launcher3/compat/PinItemRequestCompat;)V
    .locals 1

    .prologue
    .line 1
    iput-wide p1, p0, Lcom/android/launcher3/compat/LauncherAppsCompat$1;->val$acceptDelay:J

    iput-object p3, p0, Lcom/android/launcher3/compat/LauncherAppsCompat$1;->val$request:Lcom/android/launcher3/compat/PinItemRequestCompat;

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    :try_start_0
    iget-wide v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompat$1;->val$acceptDelay:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompat$1;->val$request:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/launcher3/compat/LauncherAppsCompat$1;->val$request:Lcom/android/launcher3/compat/PinItemRequestCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/compat/PinItemRequestCompat;->accept()Z

    .line 130
    :cond_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    goto :goto_0
.end method
