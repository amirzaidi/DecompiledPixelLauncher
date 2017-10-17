.class public Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;
.super Landroid/preference/PreferenceFragment;
.source "SourceFile"


# instance fields
.field private mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

.field private mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string/jumbo v1, "com.android.launcher3.prefs"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 64
    const v0, 0x7f080010

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->addPreferencesFromResource(I)V

    .line 66
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 69
    const-string/jumbo v1, "pref_allowRotation"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 70
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 72
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 87
    :goto_0
    const-string/jumbo v1, "pref_icon_badging"

    invoke-virtual {p0, v1}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 88
    invoke-static {}, Landroid/support/v4/os/a;->isAtLeastO()Z

    move-result v2

    if-nez v2, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 90
    const-string/jumbo v2, "pref_add_icon_to_home"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 89
    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 91
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    :goto_1
    const-string/jumbo v0, "pref_override_icon_shape"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShapeOverride;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 104
    check-cast v0, Landroid/preference/ListPreference;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->handlePreferenceUi(Landroid/preference/ListPreference;)V

    .line 109
    :cond_0
    :goto_2
    return-void

    .line 74
    :cond_1
    new-instance v2, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;-><init>(Landroid/preference/Preference;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    .line 79
    const-string/jumbo v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 80
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    .line 78
    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 83
    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->onChange(Z)V

    .line 84
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getAllowRotationDefaultValue(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 94
    :cond_2
    new-instance v2, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    invoke-direct {v2, v1, v0}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;-><init>(Landroid/preference/Preference;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 96
    const-string/jumbo v1, "notification_badging"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 97
    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 95
    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 98
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->onChange(Z)V

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 115
    iput-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    if-eqz v0, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 119
    iput-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 121
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 122
    return-void
.end method
