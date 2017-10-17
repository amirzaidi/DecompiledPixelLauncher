.class public Landroid/support/v4/a/p;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private Xv:Ljava/lang/StringBuilder;

.field private final Xw:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/a/p;->Xv:Ljava/lang/StringBuilder;

    .line 43
    iput-object p1, p0, Landroid/support/v4/a/p;->Xw:Ljava/lang/String;

    .line 44
    return-void
.end method

.method private aiX()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    iget-object v0, p0, Landroid/support/v4/a/p;->Xv:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 68
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/p;->Xw:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/a/p;->Xv:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Landroid/support/v4/a/p;->Xv:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/a/p;->Xv:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/support/v4/a/p;->aiX()V

    .line 48
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/support/v4/a/p;->aiX()V

    .line 52
    return-void
.end method

.method public write([CII)V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    .line 64
    return-void

    .line 56
    :cond_0
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 57
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 61
    iget-object v2, p0, Landroid/support/v4/a/p;->Xv:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 58
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/a/p;->aiX()V

    goto :goto_1
.end method
