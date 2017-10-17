.class Lcom/google/android/apps/nexuslauncher/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/LauncherCallbacks;
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# instance fields
.field private fH:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

.field final synthetic fI:Lcom/google/android/apps/nexuslauncher/a;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/nexuslauncher/a;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/a;Lcom/google/android/apps/nexuslauncher/b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/b;-><init>(Lcom/google/android/apps/nexuslauncher/a;)V

    return-void
.end method

.method private el()Lcom/google/android/apps/nexuslauncher/search/a;
    .locals 3

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fE:Lcom/google/android/apps/nexuslauncher/search/a;

    if-nez v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    new-instance v1, Lcom/google/android/apps/nexuslauncher/search/a;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/google/android/apps/nexuslauncher/search/a;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/LauncherCallbacks;)V

    iput-object v1, v0, Lcom/google/android/apps/nexuslauncher/a;->fE:Lcom/google/android/apps/nexuslauncher/search/a;

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fE:Lcom/google/android/apps/nexuslauncher/search/a;

    return-object v0
.end method


# virtual methods
.method public bindAllApplications(Ljava/util/ArrayList;)V
    .locals 1

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b;->el()Lcom/google/android/apps/nexuslauncher/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/a;->di()V

    .line 253
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 221
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cX(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 223
    return-void
.end method

.method public finishBindingItems(Z)V
    .locals 0

    .prologue
    .line 248
    return-void
.end method

.method public getPredictedApps()Ljava/util/List;
    .locals 7

    .prologue
    .line 318
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ec(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/LauncherExterns;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/LauncherExterns;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_show_predictions"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 321
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 322
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->aT(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 323
    const-string/jumbo v2, "reflection_last_predictions"

    const/4 v3, 0x0

    .line 322
    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 332
    const-string/jumbo v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 333
    const/4 v0, 0x0

    array-length v3, v2

    :goto_0
    if-ge v0, v3, :cond_1

    aget-object v4, v2, v0

    .line 334
    new-instance v5, Lcom/android/launcher3/util/ComponentKey;

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v6}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 337
    :cond_1
    return-object v1
.end method

.method public handleBackPressed()Z
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    return v0
.end method

.method public hasCustomContentToLeft()Z
    .locals 1

    .prologue
    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public hasSettings()Z
    .locals 1

    .prologue
    .line 313
    const/4 v0, 0x1

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 192
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->onAttachedToWindow()V

    .line 206
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 92
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    new-instance v2, Lcom/google/android/apps/nexuslauncher/d;

    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/google/android/apps/nexuslauncher/d;-><init>(Lcom/android/launcher3/Launcher;)V

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/a;->fz:Lcom/google/android/apps/nexuslauncher/d;

    .line 94
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    new-instance v2, Lcom/google/android/libraries/a/a/d;

    .line 95
    iget-object v3, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v3}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v4, v4, Lcom/google/android/apps/nexuslauncher/a;->fz:Lcom/google/android/apps/nexuslauncher/d;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ek(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/a/a/f;

    move-result-object v5

    .line 94
    invoke-direct {v2, v3, v4, v5}, Lcom/google/android/libraries/a/a/d;-><init>(Landroid/app/Activity;Lcom/google/android/libraries/a/a/b;Lcom/google/android/libraries/a/a/f;)V

    iput-object v2, v1, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    .line 96
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/a;->fz:Lcom/google/android/apps/nexuslauncher/d;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v1, v2}, Lcom/google/android/apps/nexuslauncher/d;->eq(Lcom/google/android/libraries/a/a/d;)V

    .line 97
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/reflection/c;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/apps/nexuslauncher/a;->eh(Lcom/google/android/apps/nexuslauncher/a;Lcom/google/android/apps/nexuslauncher/reflection/c;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    .line 98
    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 101
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cW()V

    .line 102
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const v1, 0x7f0e0011

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fH:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    .line 108
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 109
    const-string/jumbo v1, "system_ui_visibility"

    .line 110
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v2}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    .line 109
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 111
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v1, v0}, Lcom/google/android/libraries/a/a/d;->Rx(Landroid/os/Bundle;)V

    .line 112
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/b;->el()Lcom/google/android/apps/nexuslauncher/search/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/a;->onCreate()V

    .line 113
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->onDestroy()V

    .line 171
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fE:Lcom/google/android/apps/nexuslauncher/search/a;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/search/a;->onDestroy()V

    .line 172
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 176
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->onDetachedFromWindow()V

    .line 211
    return-void
.end method

.method public onHomeIntent()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/a;->eb(Lcom/google/android/apps/nexuslauncher/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/d;->Rr(Z)V

    .line 228
    return-void
.end method

.method public onInteractionBegin()V
    .locals 0

    .prologue
    .line 258
    return-void
.end method

.method public onInteractionEnd()V
    .locals 0

    .prologue
    .line 263
    return-void
.end method

.method public onLauncherProviderChange()V
    .locals 4

    .prologue
    .line 242
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ed(Lcom/google/android/apps/nexuslauncher/a;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/c;->ay(J)V

    .line 243
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/a;->ei(Lcom/google/android/apps/nexuslauncher/a;Z)Z

    .line 162
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->onPause()V

    .line 163
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fH:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fH:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->onPause()V

    .line 166
    :cond_0
    return-void
.end method

.method public onPostCreate(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 184
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 128
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/a;->ei(Lcom/google/android/apps/nexuslauncher/a;Z)Z

    .line 129
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ef(Lcom/google/android/apps/nexuslauncher/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/a;->eg(Lcom/google/android/apps/nexuslauncher/a;Z)Z

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->onResume()V

    .line 134
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ed(Lcom/google/android/apps/nexuslauncher/a;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/c;->ay(J)V

    .line 135
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fH:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fH:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->onResume()V

    .line 141
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 180
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 350
    const-string/jumbo v0, "pref_enable_minus_one"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/a;->ek(Landroid/content/SharedPreferences;)Lcom/google/android/libraries/a/a/f;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/libraries/a/a/d;->RB(Lcom/google/android/libraries/a/a/f;)V

    .line 353
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/a;->ej(Lcom/google/android/apps/nexuslauncher/a;Z)Z

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->onStart()V

    .line 147
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/a;->ej(Lcom/google/android/apps/nexuslauncher/a;Z)Z

    .line 152
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fy:Lcom/google/android/libraries/a/a/d;

    invoke-virtual {v0}, Lcom/google/android/libraries/a/a/d;->onStop()V

    .line 153
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ee(Lcom/google/android/apps/nexuslauncher/a;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0, v1}, Lcom/google/android/apps/nexuslauncher/a;->eg(Lcom/google/android/apps/nexuslauncher/a;Z)Z

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/a;->fz:Lcom/google/android/apps/nexuslauncher/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/d;->er()V

    .line 157
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0

    .prologue
    .line 238
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .prologue
    .line 201
    return-void
.end method

.method public onWorkspaceLockedChanged()V
    .locals 0

    .prologue
    .line 268
    return-void
.end method

.method public populateCustomContentContainer()V
    .locals 0

    .prologue
    .line 294
    return-void
.end method

.method public preOnCreate()V
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/graphics/DrawableFactory;->get(Landroid/content/Context;)Lcom/android/launcher3/graphics/DrawableFactory;

    .line 88
    return-void
.end method

.method public preOnResume()V
    .locals 0

    .prologue
    .line 124
    return-void
.end method

.method public shouldMoveToDefaultScreenOnHomeIntent()Z
    .locals 1

    .prologue
    .line 308
    const/4 v0, 0x1

    return v0
.end method

.method public shouldShowDiscoveryBounce()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 358
    const-string/jumbo v1, "pref_show_discovery_bounce"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 359
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_show_discovery_bounce"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 360
    const/4 v0, 0x1

    return v0

    .line 362
    :cond_0
    return v2
.end method

.method public startSearch(Ljava/lang/String;ZLandroid/os/Bundle;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 275
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ea(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    const v2, 0x7f0e0040

    invoke-virtual {v0, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 276
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->isClickable()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    .line 277
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

    .line 279
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/b;->fI:Lcom/google/android/apps/nexuslauncher/a;

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/a;->ec(Lcom/google/android/apps/nexuslauncher/a;)Lcom/android/launcher3/LauncherExterns;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/LauncherExterns;->clearTypedText()V

    .line 281
    const/4 v0, 0x1

    return v0

    .line 283
    :cond_2
    const/4 v0, 0x0

    return v0
.end method
