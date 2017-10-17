.class Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mBadgingPref:Lcom/android/launcher3/views/ButtonPreference;

.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ButtonPreference;Landroid/content/ContentResolver;Landroid/app/FragmentManager;)V
    .locals 1

    .prologue
    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 183
    iput-object p1, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mBadgingPref:Lcom/android/launcher3/views/ButtonPreference;

    .line 184
    iput-object p2, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mResolver:Landroid/content/ContentResolver;

    .line 185
    iput-object p3, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mFragmentManager:Landroid/app/FragmentManager;

    .line 186
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x1

    .line 190
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "notification_badging"

    invoke-static {v1, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_2

    move v4, v0

    .line 191
    :goto_0
    if-eqz v4, :cond_3

    const v1, 0x7f0c0058

    .line 194
    :goto_1
    if-eqz v4, :cond_1

    .line 197
    iget-object v4, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "enabled_notification_listeners"

    invoke-static {v4, v5}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 199
    new-instance v5, Landroid/content/ComponentName;

    iget-object v6, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mBadgingPref:Lcom/android/launcher3/views/ButtonPreference;

    invoke-virtual {v6}, Lcom/android/launcher3/views/ButtonPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Lcom/android/launcher3/notification/NotificationListener;

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 200
    if-eqz v4, :cond_4

    .line 201
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 202
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 203
    :cond_0
    :goto_2
    if-nez v0, :cond_1

    .line 204
    const v1, 0x7f0c005a

    .line 207
    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mBadgingPref:Lcom/android/launcher3/views/ButtonPreference;

    xor-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/views/ButtonPreference;->setWidgetFrameVisible(Z)V

    .line 208
    iget-object v3, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mBadgingPref:Lcom/android/launcher3/views/ButtonPreference;

    if-eqz v0, :cond_5

    move-object v0, v2

    :goto_3
    invoke-virtual {v3, v0}, Lcom/android/launcher3/views/ButtonPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 209
    iget-object v0, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mBadgingPref:Lcom/android/launcher3/views/ButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/views/ButtonPreference;->setSummary(I)V

    .line 211
    return-void

    :cond_2
    move v4, v3

    .line 190
    goto :goto_0

    .line 191
    :cond_3
    const v1, 0x7f0c0059

    goto :goto_1

    :cond_4
    move v0, v3

    .line 200
    goto :goto_2

    :cond_5
    move-object v0, p0

    .line 208
    goto :goto_3
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3

    .prologue
    .line 215
    new-instance v0, Lcom/android/launcher3/SettingsActivity$NotificationAccessConfirmation;

    invoke-direct {v0}, Lcom/android/launcher3/SettingsActivity$NotificationAccessConfirmation;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mFragmentManager:Landroid/app/FragmentManager;

    const-string/jumbo v2, "notification_access"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/SettingsActivity$NotificationAccessConfirmation;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 216
    const/4 v0, 0x1

    return v0
.end method
