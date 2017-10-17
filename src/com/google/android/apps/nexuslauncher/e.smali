.class Lcom/google/android/apps/nexuslauncher/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherCallbacks;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field final synthetic dL:Lcom/google/android/apps/nexuslauncher/d;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/nexuslauncher/d;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/d;Lcom/google/android/apps/nexuslauncher/e;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/e;-><init>(Lcom/google/android/apps/nexuslauncher/d;)V

    return-void
.end method


# virtual methods
.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/qsb/d;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/qsb/d;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/apps/nexuslauncher/qsb/d;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public finishBindingItems(Z)V
    .locals 0

    .prologue
    .line 196
    return-void
.end method

.method public getAllAppsSearchBarController()Lcom/android/launcher3/allapps/AllAppsSearchBarController;
    .locals 1

    .prologue
    .line 266
    new-instance v0, Lcom/google/android/apps/nexuslauncher/b;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/b;-><init>()V

    return-object v0
.end method

.method public getPredictedApps()Ljava/util/List;
    .locals 7

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dj(Lcom/google/android/apps/nexuslauncher/d;)Lcom/android/launcher3/LauncherExterns;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/LauncherExterns;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_show_predictions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 274
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->ca(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 276
    const-string/jumbo v2, "reflection_last_predictions"

    const/4 v3, 0x0

    .line 275
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 285
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 286
    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 287
    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v6}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 290
    :cond_1
    return-object v1
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomContentToLeft()Z
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    return v0
.end method

.method public hasSettings()Z
    .locals 1

    .prologue
    .line 261
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 142
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->onAttachedToWindow()V

    .line 156
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 76
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/c;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/d;->dj(Lcom/google/android/apps/nexuslauncher/d;)Lcom/android/launcher3/LauncherExterns;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/nexuslauncher/c;-><init>(Lcom/android/launcher3/LauncherExterns;)V

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/d;->dF:Lcom/google/android/apps/nexuslauncher/c;

    .line 78
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    new-instance v2, Lcom/google/android/libraries/a/a/c;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/d;->dF:Lcom/google/android/apps/nexuslauncher/c;

    .line 79
    new-instance v5, Lcom/google/android/libraries/a/a/e;

    .line 80
    const-string/jumbo v6, "pref_enable_minus_one"

    invoke-interface {v0, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 79
    invoke-direct {v5, v6, v7, v7}, Lcom/google/android/libraries/a/a/e;-><init>(ZZZ)V

    .line 78
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/libraries/a/a/c;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/a/a/a;Lcom/google/android/libraries/a/a/e;)V

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    .line 81
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/d;->dF:Lcom/google/android/apps/nexuslauncher/c;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/c;->de(Lcom/google/android/libraries/a/a/c;)V

    .line 82
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/l;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/l;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/d;->do(Lcom/google/android/apps/nexuslauncher/d;Lcom/google/android/apps/nexuslauncher/reflection/l;)Lcom/google/android/apps/nexuslauncher/reflection/l;

    .line 83
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 84
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->onDestroy()V

    .line 125
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 126
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->onDetachedFromWindow()V

    .line 161
    return-void
.end method

.method public onHomeIntent()V
    .locals 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/d;->di(Lcom/google/android/apps/nexuslauncher/d;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/c;->Qy(Z)V

    .line 176
    return-void
.end method

.method public onInteractionBegin()V
    .locals 0

    .prologue
    .line 206
    return-void
.end method

.method public onInteractionEnd()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public onLauncherProviderChange()V
    .locals 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dk(Lcom/google/android/apps/nexuslauncher/d;)Lcom/google/android/apps/nexuslauncher/reflection/l;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/l;->cv(J)V

    .line 191
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 138
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/d;->dp(Lcom/google/android/apps/nexuslauncher/d;Z)Z

    .line 119
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->onPause()V

    .line 120
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 134
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 92
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/d;->dp(Lcom/google/android/apps/nexuslauncher/d;Z)Z

    .line 93
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dm(Lcom/google/android/apps/nexuslauncher/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/d;->dn(Lcom/google/android/apps/nexuslauncher/d;Z)Z

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->onResume()V

    .line 98
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dk(Lcom/google/android/apps/nexuslauncher/d;)Lcom/google/android/apps/nexuslauncher/reflection/l;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/l;->cv(J)V

    .line 99
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 130
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 314
    const-string/jumbo v0, "pref_enable_minus_one"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    new-instance v1, Lcom/google/android/libraries/a/a/e;

    .line 316
    const-string/jumbo v2, "pref_enable_minus_one"

    invoke-interface {p1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 315
    invoke-direct {v1, v2, v3, v3}, Lcom/google/android/libraries/a/a/e;-><init>(ZZZ)V

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/c;->QH(Lcom/google/android/libraries/a/a/e;)V

    .line 318
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/d;->dq(Lcom/google/android/apps/nexuslauncher/d;Z)Z

    .line 104
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->onStart()V

    .line 105
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 109
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/d;->dq(Lcom/google/android/apps/nexuslauncher/d;Z)Z

    .line 110
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/d;->dE:Lcom/google/android/libraries/a/a/c;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/c;->onStop()V

    .line 111
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dl(Lcom/google/android/apps/nexuslauncher/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/d;->dn(Lcom/google/android/apps/nexuslauncher/d;Z)Z

    .line 114
    :cond_0
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .prologue
    .line 186
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public onWorkspaceLockedChanged()V
    .locals 0

    .prologue
    .line 216
    return-void
.end method

.method public populateCustomContentContainer()V
    .locals 0

    .prologue
    .line 242
    return-void
.end method

.method public preOnCreate()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a/a;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/a/a;

    .line 72
    return-void
.end method

.method public preOnResume()V
    .locals 0

    .prologue
    .line 88
    return-void
.end method

.method public setLauncherSearchCallback(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 310
    return-void
.end method

.method public shouldMoveToDefaultScreenOnHomeIntent()Z
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowDiscoveryBounce()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v0

    .line 323
    const-string/jumbo v1, "com.android.launcher3.device.prefs"

    .line 322
    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 324
    const-string/jumbo v1, "pref_show_discovery_bounce"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 325
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_show_discovery_bounce"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 326
    const/4 v0, 0x1

    return v0

    .line 328
    :cond_0
    return v2
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 223
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dh(Lcom/google/android/apps/nexuslauncher/d;)Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f0e0062

    invoke-virtual {v0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 224
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 225
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    instance-of v2, v2, Landroid/view/View;

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0

    .line 227
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/e;->dL:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/d;->dj(Lcom/google/android/apps/nexuslauncher/d;)Lcom/android/launcher3/LauncherExterns;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/LauncherExterns;->clearTypedText()V

    .line 229
    const/4 v0, 0x1

    return v0

    .line 231
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
