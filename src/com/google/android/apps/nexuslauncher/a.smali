.class public Lcom/google/android/apps/nexuslauncher/a;
.super Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;-><init>()V

    return-void
.end method

.method private cR(Landroid/preference/TwoStatePreference;)V
    .locals 3

    .prologue
    .line 90
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    const v1, 0x7f0c008b

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 92
    const v1, 0x7f0c008c

    .line 90
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 93
    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 90
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 95
    new-instance v1, Lcom/google/android/apps/nexuslauncher/f;

    invoke-direct {v1, p0, p1}, Lcom/google/android/apps/nexuslauncher/f;-><init>(Lcom/google/android/apps/nexuslauncher/a;Landroid/preference/TwoStatePreference;)V

    .line 94
    const v2, 0x7f0c008d

    .line 90
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 103
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    const-string/jumbo v0, "pref_show_predictions"

    .line 47
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 49
    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 51
    const-string/jumbo v0, "pref_enable_minus_one"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 52
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/b;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 54
    const-string/jumbo v1, ""

    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 56
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_0
    const-string/jumbo v1, "about_app_version"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 62
    const-string/jumbo v0, "open_source_licenses"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 63
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string/jumbo v2, "SettingsActivity"

    const-string/jumbo v3, "Unable to load my own package info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 74
    const-string/jumbo v0, "pref_show_predictions"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 76
    if-eqz v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/l;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/l;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/nexuslauncher/reflection/l;->cq(Z)V

    .line 78
    return v3

    .line 80
    :cond_0
    check-cast p1, Landroid/preference/TwoStatePreference;

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/a;->cR(Landroid/preference/TwoStatePreference;)V

    .line 83
    return v2

    .line 86
    :cond_1
    return v2
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 107
    const-string/jumbo v0, "open_source_licenses"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 112
    new-instance v1, Landroid/webkit/WebViewClient;

    invoke-direct {v1}, Landroid/webkit/WebViewClient;-><init>()V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 113
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 114
    const-string/jumbo v1, "file:///android_res/raw/license.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 115
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 116
    const v2, 0x7f0c009a

    .line 115
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 119
    return v3
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->onResume()V

    .line 68
    const-string/jumbo v0, "pref_enable_minus_one"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/a;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 69
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/util/a;->cB(Landroid/content/Context;)Z

    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 70
    return-void
.end method
