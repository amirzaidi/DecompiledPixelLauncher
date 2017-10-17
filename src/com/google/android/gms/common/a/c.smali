.class public final Lcom/google/android/gms/common/a/c;
.super Ljava/lang/Object;


# static fields
.field private static ht:Ljava/lang/Boolean;

.field private static hu:Ljava/lang/Boolean;

.field private static hv:Ljava/lang/Boolean;


# direct methods
.method private static jv(Landroid/content/res/Resources;)Z
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/common/a/c;->ht:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/common/a/c;->ht:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/common/a/n;->ka()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/c;->ht:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    iget v2, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    const/4 v3, 0x3

    if-gt v2, v3, :cond_1

    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    const/16 v2, 0x258

    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static jw(Landroid/content/res/Resources;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/android/gms/common/a/c;->hu:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    :goto_0
    sget-object v0, Lcom/google/android/gms/common/a/c;->hu:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x3

    if-gt v0, v3, :cond_3

    move v0, v1

    :goto_1
    invoke-static {}, Lcom/google/android/gms/common/a/n;->jV()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_2
    invoke-static {p0}, Lcom/google/android/gms/common/a/c;->jv(Landroid/content/res/Resources;)Z

    move-result v0

    if-nez v0, :cond_5

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/c;->hu:Ljava/lang/Boolean;

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_2

    :cond_5
    move v1, v2

    goto :goto_2
.end method

.method public static jx(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/google/android/gms/common/a/c;->hv:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    :goto_0
    sget-object v0, Lcom/google/android/gms/common/a/c;->hv:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/gms/common/a/n;->jS()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/common/a/c;->hv:Ljava/lang/Boolean;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string/jumbo v2, "android.hardware.type.watch"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1
.end method
