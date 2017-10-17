.class public abstract Lcom/google/android/gms/common/internal/P;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static jh(Lcom/google/android/gms/internal/aC;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/P;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/L;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/L;-><init>(Landroid/content/Intent;Lcom/google/android/gms/internal/aC;I)V

    return-object v0
.end method

.method public static ji(Landroid/app/Activity;Landroid/content/Intent;I)Lcom/google/android/gms/common/internal/P;
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/internal/G;

    invoke-direct {v0, p1, p0, p2}, Lcom/google/android/gms/common/internal/G;-><init>(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-object v0
.end method


# virtual methods
.method public abstract iB()V
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/common/internal/P;->iB()V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DialogRedirect"

    const-string/jumbo v2, "Can\'t redirect to app settings for Google Play services"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
