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
    .line 68
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string/jumbo v1, "com.android.launcher3.prefs"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 77
    const v0, 0x7f08000f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->addPreferencesFromResource(I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 82
    const-string/jumbo v0, "pref_allowRotation"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0005

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 101
    :goto_0
    const-string/jumbo v0, "pref_icon_badging"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/views/ButtonPreference;

    .line 102
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v2

    if-nez v2, :cond_2

    .line 103
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 104
    const-string/jumbo v2, "pref_add_icon_to_home"

    invoke-virtual {p0, v2}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 103
    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 105
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 119
    :goto_1
    const-string/jumbo v0, "pref_override_icon_shape"

    invoke-virtual {p0, v0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 120
    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/graphics/IconShapeOverride;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    check-cast v0, Landroid/preference/ListPreference;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->handlePreferenceUi(Landroid/preference/ListPreference;)V

    .line 127
    :cond_0
    :goto_2
    return-void

    .line 87
    :cond_1
    new-instance v2, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;-><init>(Landroid/preference/Preference;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    .line 92
    const-string/jumbo v2, "accelerometer_rotation"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 93
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    .line 91
    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 96
    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    invoke-virtual {v2, v5}, Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;->onChange(Z)V

    .line 97
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getAllowRotationDefaultValue(Landroid/content/Context;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setDefaultValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 108
    :cond_2
    new-instance v2, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 109
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    .line 108
    invoke-direct {v2, v0, v1, v3}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;-><init>(Lcom/android/launcher3/views/ButtonPreference;Landroid/content/ContentResolver;Landroid/app/FragmentManager;)V

    iput-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 111
    const-string/jumbo v0, "notification_badging"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 112
    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 110
    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 114
    const-string/jumbo v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 115
    iget-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 113
    invoke-virtual {v1, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->onChange(Z)V

    goto :goto_1

    .line 124
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

    .line 131
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 133
    iput-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mRotationLockObserver:Lcom/android/launcher3/SettingsActivity$SystemDisplayRotationLockObserver;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    if-eqz v0, :cond_1

    .line 136
    invoke-virtual {p0}, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 137
    iput-object v2, p0, Lcom/android/launcher3/SettingsActivity$LauncherSettingsFragment;->mIconBadgingObserver:Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;

    .line 139
    :cond_1
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 140
    return-void
.end method
