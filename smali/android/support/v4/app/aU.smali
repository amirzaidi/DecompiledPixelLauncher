.class Landroid/support/v4/app/aU;
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

.method static anX(Landroid/support/v4/app/at;)Landroid/os/Bundle;
    .locals 4

    .prologue
    .line 69
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 70
    invoke-virtual {p0}, Landroid/support/v4/app/at;->amr()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "resultKey"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p0}, Landroid/support/v4/app/at;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, "label"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Landroid/support/v4/app/at;->amt()[Ljava/lang/CharSequence;

    move-result-object v0

    const-string/jumbo v2, "choices"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putCharSequenceArray(Ljava/lang/String;[Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0}, Landroid/support/v4/app/at;->ams()Z

    move-result v0

    const-string/jumbo v2, "allowFreeFormInput"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    invoke-virtual {p0}, Landroid/support/v4/app/at;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v2, "extras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Landroid/support/v4/app/at;->amq()Ljava/util/Set;

    move-result-object v0

    .line 77
    if-nez v0, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-object v1

    .line 77
    :cond_1
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 78
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 79
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    const-string/jumbo v0, "allowedDataTypes"

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 79
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 80
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method static anY([Landroid/support/v4/app/at;)[Landroid/os/Bundle;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 100
    if-eqz p0, :cond_0

    .line 103
    array-length v0, p0

    new-array v1, v0, [Landroid/os/Bundle;

    .line 104
    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-lt v0, v2, :cond_1

    .line 107
    return-object v1

    .line 101
    :cond_0
    return-object v0

    .line 105
    :cond_1
    aget-object v2, p0, v0

    invoke-static {v2}, Landroid/support/v4/app/aU;->anX(Landroid/support/v4/app/at;)Landroid/os/Bundle;

    move-result-object v2

    aput-object v2, v1, v0

    .line 104
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
