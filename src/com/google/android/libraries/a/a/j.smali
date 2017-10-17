.class Lcom/google/android/libraries/a/a/j;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic Mm:Lcom/google/android/libraries/a/a/d;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/a/a/d;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/google/android/libraries/a/a/j;->Mm:Lcom/google/android/libraries/a/a/d;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 144
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 146
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/j;->Mm:Lcom/google/android/libraries/a/a/d;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/d;->Rk(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/a/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/h;->RS()V

    .line 150
    iget-object v0, p0, Lcom/google/android/libraries/a/a/j;->Mm:Lcom/google/android/libraries/a/a/d;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/d;->Rt(Lcom/google/android/libraries/a/a/d;)Lcom/google/android/libraries/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/g;->RS()V

    .line 151
    invoke-static {p1}, Lcom/google/android/libraries/a/a/d;->RA(Landroid/content/Context;)V

    .line 152
    iget-object v0, p0, Lcom/google/android/libraries/a/a/j;->Mm:Lcom/google/android/libraries/a/a/d;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/d;->RH(Lcom/google/android/libraries/a/a/d;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 156
    :cond_1
    :goto_0
    return-void

    .line 146
    :cond_2
    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    .line 147
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 153
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/a/a/j;->Mm:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->Ry()V

    goto :goto_0
.end method
