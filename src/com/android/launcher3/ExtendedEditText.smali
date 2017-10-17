.class public Lcom/android/launcher3/ExtendedEditText;
.super Landroid/widget/EditText;
.source "SourceFile"


# instance fields
.field private mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

.field private mForceDisableSuggestions:Z

.field private mShowImeAfterFirstLayout:Z


# direct methods
.method static synthetic -set0(Lcom/android/launcher3/ExtendedEditText;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mShowImeAfterFirstLayout:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/launcher3/ExtendedEditText;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/ExtendedEditText;->showSoftInput()Z

    move-result v0

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 55
    return-void
.end method

.method private showSoftInput()Z
    .locals 2

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 101
    const/4 v1, 0x1

    .line 100
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    .line 99
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public dispatchBackKey()V
    .locals 3

    .prologue
    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 106
    invoke-virtual {p0}, Lcom/android/launcher3/ExtendedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    .line 105
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    invoke-interface {v0}, Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    .line 110
    :cond_0
    return-void
.end method

.method public forceDisableSuggestions(Z)V
    .locals 0

    .prologue
    .line 117
    iput-boolean p1, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    .line 118
    return-void
.end method

.method public isSuggestionsEnabled()Z
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mForceDisableSuggestions:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/EditText;->isSuggestionsEnabled()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    .line 64
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    invoke-interface {v0}, Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result v0

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 81
    invoke-super/range {p0 .. p5}, Landroid/widget/EditText;->onLayout(ZIIII)V

    .line 82
    iget-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mShowImeAfterFirstLayout:Z

    if-eqz v0, :cond_0

    .line 84
    new-instance v0, Lcom/android/launcher3/ExtendedEditText$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/ExtendedEditText$1;-><init>(Lcom/android/launcher3/ExtendedEditText;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/ExtendedEditText;->post(Ljava/lang/Runnable;)Z

    .line 92
    :cond_0
    return-void
.end method

.method public setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/android/launcher3/ExtendedEditText;->mBackKeyListener:Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;

    .line 59
    return-void
.end method

.method public showKeyboard()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/android/launcher3/ExtendedEditText;->showSoftInput()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/ExtendedEditText;->mShowImeAfterFirstLayout:Z

    .line 96
    return-void
.end method
