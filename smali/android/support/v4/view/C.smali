.class public final Landroid/support/v4/view/C;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static UM:Z

.field private static UN:Ljava/lang/reflect/Field;

.field static final UO:Landroid/support/v4/view/E;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 141
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 144
    new-instance v0, Landroid/support/v4/view/E;

    invoke-direct {v0}, Landroid/support/v4/view/E;-><init>()V

    sput-object v0, Landroid/support/v4/view/C;->UO:Landroid/support/v4/view/E;

    .line 146
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V

    sput-object v0, Landroid/support/v4/view/C;->UO:Landroid/support/v4/view/E;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    return-void
.end method

.method public static agq(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 1

    .prologue
    .line 179
    sget-object v0, Landroid/support/v4/view/C;->UO:Landroid/support/v4/view/E;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/E;->agg(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 180
    return-void
.end method

.method static agr(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 72
    sget-boolean v0, Landroid/support/v4/view/C;->UM:Z

    if-eqz v0, :cond_0

    .line 83
    :goto_0
    sget-object v0, Landroid/support/v4/view/C;->UN:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 91
    :goto_1
    return-void

    .line 74
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/LayoutInflater;

    const-string/jumbo v1, "mFactory2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/C;->UN:Ljava/lang/reflect/Field;

    .line 75
    sget-object v0, Landroid/support/v4/view/C;->UN:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_2
    sput-boolean v4, Landroid/support/v4/view/C;->UM:Z

    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Landroid/view/LayoutInflater;

    const-string/jumbo v3, "LayoutInflaterCompatHC"

    .line 78
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; inflation may have unexpected results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 77
    invoke-static {v3, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 85
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/view/C;->UN:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 86
    :catch_1
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceSetFactory2 could not set the Factory2 on LayoutInflater "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "; inflation may have unexpected results."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "LayoutInflaterCompatHC"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
