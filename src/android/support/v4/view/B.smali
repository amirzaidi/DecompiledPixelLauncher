.class public final Landroid/support/v4/view/B;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static Wm:Z

.field private static Wn:Ljava/lang/reflect/Field;

.field static final Wo:Landroid/support/v4/view/E;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 140
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 143
    new-instance v0, Landroid/support/v4/view/E;

    invoke-direct {v0}, Landroid/support/v4/view/E;-><init>()V

    sput-object v0, Landroid/support/v4/view/B;->Wo:Landroid/support/v4/view/E;

    .line 145
    :goto_0
    return-void

    .line 141
    :cond_0
    new-instance v0, Landroid/support/v4/view/t;

    invoke-direct {v0}, Landroid/support/v4/view/t;-><init>()V

    sput-object v0, Landroid/support/v4/view/B;->Wo:Landroid/support/v4/view/E;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    return-void
.end method

.method static ahA(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 71
    sget-boolean v0, Landroid/support/v4/view/B;->Wm:Z

    if-eqz v0, :cond_0

    .line 82
    :goto_0
    sget-object v0, Landroid/support/v4/view/B;->Wn:Ljava/lang/reflect/Field;

    if-nez v0, :cond_1

    .line 90
    :goto_1
    return-void

    .line 73
    :cond_0
    :try_start_0
    const-class v0, Landroid/view/LayoutInflater;

    const-string/jumbo v1, "mFactory2"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Landroid/support/v4/view/B;->Wn:Ljava/lang/reflect/Field;

    .line 74
    sget-object v0, Landroid/support/v4/view/B;->Wn:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    :goto_2
    sput-boolean v4, Landroid/support/v4/view/B;->Wm:Z

    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "forceSetFactory2 Could not find field \'mFactory2\' on class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "LayoutInflaterCompatHC"

    const-class v3, Landroid/view/LayoutInflater;

    .line 77
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "; inflation may have unexpected results."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 84
    :cond_1
    :try_start_1
    sget-object v0, Landroid/support/v4/view/B;->Wn:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 85
    :catch_1
    move-exception v0

    .line 86
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

.method public static ahz(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V
    .locals 1

    .prologue
    .line 178
    sget-object v0, Landroid/support/v4/view/B;->Wo:Landroid/support/v4/view/E;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/E;->ahp(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    .line 179
    return-void
.end method
