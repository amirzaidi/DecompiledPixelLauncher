.class public abstract Lcom/android/launcher3/allapps/AllAppsSearchBarController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;


# instance fields
.field protected mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field protected mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

.field protected mInput:Lcom/android/launcher3/ExtendedEditText;

.field protected mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mQuery:Ljava/lang/String;

.field protected mSearchAlgorithm:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    .prologue
    .line 107
    invoke-interface {p1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 108
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 115
    :goto_0
    return-void

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 98
    return-void
.end method

.method public createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 192
    const-string/jumbo v0, "market://search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    .line 194
    const-string/jumbo v1, "c"

    const-string/jumbo v2, "apps"

    .line 192
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 195
    const-string/jumbo v1, "q"

    .line 192
    invoke-virtual {v0, v1, p1}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 197
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public focusSearchField()V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->showKeyboard()V

    .line 179
    return-void
.end method

.method protected hideKeyboard()V
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v1}, Lcom/android/launcher3/ExtendedEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 165
    return-void
.end method

.method public final initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/ExtendedEditText;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;)V
    .locals 2

    .prologue
    .line 67
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    .line 68
    iput-object p4, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    .line 69
    iput-object p3, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 71
    iput-object p2, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    .line 72
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/ExtendedEditText;->setOnBackKeyListener(Lcom/android/launcher3/ExtendedEditText$OnBackKeyListener;)V

    .line 77
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->onInitializeSearch()Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    .line 81
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->onInitialized()V

    .line 82
    return-void
.end method

.method public isSearchFieldFocused()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->isFocused()Z

    move-result v0

    return v0
.end method

.method public onBackKey()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    invoke-virtual {v0}, Lcom/android/launcher3/ExtendedEditText;->getEditableText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->reset()V

    .line 147
    const/4 v0, 0x1

    return v0

    .line 149
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 129
    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    .line 130
    return v2

    .line 134
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    return v2

    .line 138
    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->createMarketSearchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    move-result v0

    return v0
.end method

.method protected abstract onInitializeSearch()Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;
.end method

.method protected onInitialized()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method protected refreshSearchResult()V
    .locals 3

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->cancel(Z)V

    .line 123
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mSearchAlgorithm:Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;)V

    .line 124
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->unfocusSearchField()V

    .line 157
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mCb:Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    .line 158
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->setText(Ljava/lang/CharSequence;)V

    .line 159
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mQuery:Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->hideKeyboard()V

    .line 161
    return-void
.end method

.method protected unfocusSearchField()V
    .locals 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsSearchBarController;->mInput:Lcom/android/launcher3/ExtendedEditText;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/android/launcher3/ExtendedEditText;->focusSearch(I)Landroid/view/View;

    move-result-object v0

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 172
    :cond_0
    return-void
.end method
