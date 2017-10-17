.class Landroid/support/v4/app/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static ZF:Ljava/lang/reflect/Method;

.field private static ZG:Z


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static alT(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 42
    sget-boolean v0, Landroid/support/v4/app/G;->ZG:Z

    if-eqz v0, :cond_0

    .line 52
    :goto_0
    sget-object v0, Landroid/support/v4/app/G;->ZF:Ljava/lang/reflect/Method;

    if-nez v0, :cond_1

    .line 61
    :goto_1
    return-object v4

    .line 44
    :cond_0
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Landroid/os/Bundle;

    const-string/jumbo v2, "getIBinder"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Landroid/support/v4/app/G;->ZF:Ljava/lang/reflect/Method;

    .line 45
    sget-object v0, Landroid/support/v4/app/G;->ZF:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_2
    sput-boolean v3, Landroid/support/v4/app/G;->ZG:Z

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    const-string/jumbo v1, "BundleCompatBaseImpl"

    const-string/jumbo v2, "Failed to retrieve getIBinder method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 54
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/app/G;->ZF:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v0

    .line 55
    :catch_1
    move-exception v0

    .line 57
    const-string/jumbo v1, "BundleCompatBaseImpl"

    const-string/jumbo v2, "Failed to invoke getIBinder via reflection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    sput-object v4, Landroid/support/v4/app/G;->ZF:Ljava/lang/reflect/Method;

    goto :goto_1
.end method
