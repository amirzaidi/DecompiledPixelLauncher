.class Lcom/google/android/libraries/a/a/i;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic KH:Lcom/google/android/libraries/a/a/c;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/a/a/c;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/google/android/libraries/a/a/i;->KH:Lcom/google/android/libraries/a/a/c;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 137
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 139
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_2

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/google/android/libraries/a/a/i;->KH:Lcom/google/android/libraries/a/a/c;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/c;->Qr(Lcom/google/android/libraries/a/a/c;)Lcom/google/android/libraries/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/g;->QY()V

    .line 143
    iget-object v0, p0, Lcom/google/android/libraries/a/a/i;->KH:Lcom/google/android/libraries/a/a/c;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/c;->QA(Lcom/google/android/libraries/a/a/c;)Lcom/google/android/libraries/a/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/f;->QY()V

    .line 144
    invoke-static {p1}, Lcom/google/android/libraries/a/a/c;->QG(Landroid/content/Context;)V

    .line 145
    iget-object v0, p0, Lcom/google/android/libraries/a/a/i;->KH:Lcom/google/android/libraries/a/a/c;

    invoke-static {v0}, Lcom/google/android/libraries/a/a/c;->QN(Lcom/google/android/libraries/a/a/c;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_3

    .line 149
    :cond_1
    :goto_0
    return-void

    .line 139
    :cond_2
    if-eqz v0, :cond_1

    const-string/jumbo v1, "com.google.android.googlequicksearchbox"

    .line 140
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_3
    iget-object v0, p0, Lcom/google/android/libraries/a/a/i;->KH:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->QE()V

    goto :goto_0
.end method
