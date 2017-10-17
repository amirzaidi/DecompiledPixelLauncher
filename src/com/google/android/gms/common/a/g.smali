.class public final Lcom/google/android/gms/common/a/g;
.super Ljava/lang/Object;


# direct methods
.method public static mr(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/google/android/gms/internal/az;->uR(Landroid/content/Context;)Lcom/google/android/gms/internal/aW;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/aW;->xC(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static ms(Landroid/content/Context;I)Z
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "com.google.android.gms"

    invoke-static {p0, p1, v0}, Lcom/google/android/gms/common/a/g;->mr(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    :try_start_0
    const-string/jumbo v1, "com.google.android.gms"

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/gms/common/j;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/common/j;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/common/j;->qN(Landroid/content/pm/PackageManager;Landroid/content/pm/PackageInfo;)Z

    move-result v0

    return v0

    :cond_0
    return v3

    :catch_0
    move-exception v0

    const-string/jumbo v0, "UidVerifier"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return v3

    :cond_1
    const-string/jumbo v0, "UidVerifier"

    const-string/jumbo v1, "Package manager can\'t find google play services package, defaulting to false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
