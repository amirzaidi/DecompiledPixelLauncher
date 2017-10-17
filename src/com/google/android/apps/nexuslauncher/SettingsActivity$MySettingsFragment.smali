.class public Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;
.super Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const-string/jumbo v0, "pref_show_predictions"

    .line 69
    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    .line 71
    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 73
    const-string/jumbo v0, "pref_enable_minus_one"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/qsb/a;->br(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 76
    const-string/jumbo v1, ""

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 79
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 78
    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    const-string/jumbo v1, "about_app_version"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cY()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 84
    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "pref_smartspace"

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 90
    :goto_1
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    const-string/jumbo v2, "SettingsActivity"

    const-string/jumbo v3, "Unable to load my own package info"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_0

    .line 88
    :cond_0
    const-string/jumbo v0, "pref_smartspace"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 101
    const-string/jumbo v0, "pref_show_predictions"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/reflection/c;->getInstance(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/reflection/c;->aD(Z)V

    .line 105
    return v2

    .line 109
    :cond_0
    new-instance v0, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;-><init>()V

    .line 110
    invoke-virtual {v0, p0, v3}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 111
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$SuggestionConfirmationFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 112
    return v3

    .line 115
    :cond_1
    return v3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 2

    .prologue
    .line 120
    const-string/jumbo v0, "pref_smartspace"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cZ()V

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 94
    invoke-super {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->onResume()V

    .line 95
    const-string/jumbo v0, "pref_enable_minus_one"

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/SettingsActivity$MySettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/apps/nexuslauncher/a/b;->dz(Landroid/content/Context;)Z

    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 97
    return-void
.end method
