.class public Lcom/google/android/gms/common/a/j;
.super Ljava/lang/Object;


# direct methods
.method public static jH(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/android/gms/common/a/n;->jY()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/google/android/gms/internal/aG;->uS(Landroid/content/Context;)Lcom/google/android/gms/internal/bc;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/google/android/gms/internal/bc;->xE(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-nez v1, :cond_3

    :goto_0
    return v0

    :cond_1
    return v0

    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/a/j;->jI()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    return v0
.end method

.method public static jI()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
