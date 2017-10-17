.class public Landroid/support/v4/a/p;
.super Ljava/io/Writer;
.source "SourceFile"


# instance fields
.field private VM:Ljava/lang/StringBuilder;

.field private final VN:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/a/p;->VM:Ljava/lang/StringBuilder;

    .line 44
    iput-object p1, p0, Landroid/support/v4/a/p;->VN:Ljava/lang/String;

    .line 45
    return-void
.end method

.method private ahN()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 68
    iget-object v0, p0, Landroid/support/v4/a/p;->VM:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Landroid/support/v4/a/p;->VN:Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v4/a/p;->VM:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    iget-object v0, p0, Landroid/support/v4/a/p;->VM:Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/support/v4/a/p;->VM:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/support/v4/a/p;->ahN()V

    .line 49
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v4/a/p;->ahN()V

    .line 53
    return-void
.end method

.method public write([CII)V
    .locals 3

    .prologue
    .line 56
    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    .line 65
    return-void

    .line 57
    :cond_0
    add-int v1, p2, v0

    aget-char v1, p1, v1

    .line 58
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    .line 62
    iget-object v2, p0, Landroid/support/v4/a/p;->VM:Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 56
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0}, Landroid/support/v4/a/p;->ahN()V

    goto :goto_1
.end method
