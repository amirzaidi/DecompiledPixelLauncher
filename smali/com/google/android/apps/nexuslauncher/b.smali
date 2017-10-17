.class public Lcom/google/android/apps/nexuslauncher/b;
.super Lcom/android/launcher3/allapps/DefaultAppSearchController;
.source "SourceFile"


# instance fields
.field private dw:Z

.field private dx:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/android/launcher3/allapps/DefaultAppSearchController;-><init>()V

    return-void
.end method

.method private cV()V
    .locals 6

    .prologue
    .line 81
    new-instance v0, Lcom/google/android/apps/nexuslauncher/h;

    const-wide/16 v2, 0xbd6

    const-wide/16 v4, 0x1e

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/nexuslauncher/h;-><init>(Lcom/google/android/apps/nexuslauncher/b;JJ)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dx:Landroid/os/CountDownTimer;

    .line 96
    return-void
.end method

.method private cW()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dw:Z

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setEnabled(Z)V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setCursorVisible(Z)V

    .line 103
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b;->hideKeyboard()V

    .line 104
    return-void
.end method

.method private cX(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 107
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setEnabled(Z)V

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setCursorVisible(Z)V

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->mInput:Lcom/android/launcher3/ExtendedEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 111
    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/b;->focusSearchField()V

    .line 115
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dw:Z

    .line 116
    return-void
.end method

.method static synthetic cY(Lcom/google/android/apps/nexuslauncher/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dw:Z

    return v0
.end method

.method static synthetic cZ(Lcom/google/android/apps/nexuslauncher/b;)Lcom/android/launcher3/ExtendedEditText;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->mInput:Lcom/android/launcher3/ExtendedEditText;

    return-object v0
.end method

.method static synthetic da(Lcom/google/android/apps/nexuslauncher/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b;->cW()V

    return-void
.end method

.method static synthetic db(Lcom/google/android/apps/nexuslauncher/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/b;->cX(Z)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dw:Z

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "\u2b06\ufe0f\u2b06\ufe0f\u2b07\ufe0f\u2b07\ufe0f\u2b05\ufe0f\u27a1\ufe0f\u2b05\ufe0f\u27a1\ufe0f"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dx:Landroid/os/CountDownTimer;

    if-nez v0, :cond_1

    .line 57
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b;->cV()V

    .line 60
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->clear()V

    .line 62
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dx:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 63
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dx:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 66
    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/allapps/DefaultAppSearchController;->afterTextChanged(Landroid/text/Editable;)V

    .line 67
    return-void
.end method

.method public createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 28
    const-string/jumbo v0, "market://search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 30
    const-string/jumbo v1, "c"

    const-string/jumbo v2, "apps"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 31
    const-string/jumbo v1, "pcampaignid"

    const-string/jumbo v2, "nxl_search_12613299"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 32
    const-string/jumbo v1, "q"

    .line 28
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dx:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dw:Z

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->dx:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 74
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/b;->cX(Z)V

    .line 77
    :cond_0
    invoke-super {p0}, Lcom/android/launcher3/allapps/DefaultAppSearchController;->reset()V

    .line 78
    return-void
.end method
