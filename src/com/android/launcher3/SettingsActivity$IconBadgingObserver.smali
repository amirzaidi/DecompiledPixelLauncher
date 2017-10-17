.class Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field private final mBadgingPref:Landroid/preference/Preference;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/preference/Preference;Landroid/content/ContentResolver;)V
    .locals 1

    .prologue
    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 162
    iput-object p1, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mBadgingPref:Landroid/preference/Preference;

    .line 163
    iput-object p2, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mResolver:Landroid/content/ContentResolver;

    .line 164
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 168
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "notification_badging"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 169
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/SettingsActivity$IconBadgingObserver;->mBadgingPref:Landroid/preference/Preference;

    if-eqz v0, :cond_1

    .line 170
    const v0, 0x7f0c0056

    .line 169
    :goto_1
    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(I)V

    .line 172
    return-void

    .line 168
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :cond_1
    const v0, 0x7f0c0057

    goto :goto_1
.end method
