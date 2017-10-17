.class Landroid/support/v4/app/aP;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static aoY(Landroid/support/v4/app/as;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 63
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 64
    invoke-virtual {p0}, Landroid/support/v4/app/as;->anG()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "resultKey"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Landroid/support/v4/app/as;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, "label"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p0}, Landroid/support/v4/app/as;->anI()[Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, "choices"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 67
    invoke-virtual {p0}, Landroid/support/v4/app/as;->anH()Z

    move-result v0

    const-string/jumbo v2, "allowFreeFormInput"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 68
    invoke-virtual {p0}, Landroid/support/v4/app/as;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "extras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 70
    invoke-virtual {p0}, Landroid/support/v4/app/as;->anF()Ljava/util/Set;

    move-result-object v0

    .line 71
    if-nez v0, :cond_1

    .line 78
    :cond_0
    :goto_0
    return-object v1

    .line 71
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    const-string/jumbo v0, "allowedDataTypes"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 73
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 74
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static aoZ([Landroid/support/v4/app/as;)[Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    if-eqz p0, :cond_0

    .line 97
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    .line 98
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 101
    return-object v1

    .line 95
    :cond_0
    return-object v0

    .line 99
    :cond_1
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/support/v4/app/aP;->aoY(Landroid/support/v4/app/as;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v0

    .line 98
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
