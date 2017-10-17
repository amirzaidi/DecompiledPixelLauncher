.class public Lcom/android/launcher3/graphics/IconShapeOverride;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static synthetic -wrap0(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lcom/android/launcher3/graphics/IconShapeOverride;->getAppliedValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static apply(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 85
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    return-void

    .line 88
    :cond_0
    invoke-static {p0}, Lcom/android/launcher3/graphics/IconShapeOverride;->getAppliedValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 90
    return-void

    .line 92
    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/graphics/IconShapeOverride;->isSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 93
    return-void

    .line 99
    :cond_2
    :try_start_0
    new-instance v1, Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/graphics/IconShapeOverride;->getConfigResId()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/android/launcher3/graphics/IconShapeOverride$ResourcesOverride;-><init>(Landroid/content/res/Resources;ILjava/lang/String;)V

    .line 100
    invoke-static {}, Lcom/android/launcher3/graphics/IconShapeOverride;->getSystemResField()Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    :goto_0
    return-void

    .line 101
    :catch_0
    move-exception v0

    .line 102
    const-string/jumbo v1, "IconShapeOverride"

    const-string/jumbo v2, "Unable to override icon shape"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "pref_override_icon_shape"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0
.end method

.method private static getAppliedValue(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    invoke-static {p0}, Lcom/android/launcher3/Utilities;->getDevicePrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "pref_override_icon_shape"

    const-string/jumbo v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getConfigResId()I
    .locals 4

    .prologue
    .line 115
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v1, "config_icon_mask"

    const-string/jumbo v2, "string"

    const-string/jumbo v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getSystemResField()Ljava/lang/reflect/Field;
    .locals 2

    .prologue
    .line 109
    const-class v0, Landroid/content/res/Resources;

    const-string/jumbo v1, "mSystem"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 110
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 111
    return-object v0
.end method

.method public static handlePreferenceUi(Landroid/preference/ListPreference;)V
    .locals 3

    .prologue
    .line 123
    invoke-virtual {p0}, Landroid/preference/ListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->getAppliedValue(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 125
    new-instance v1, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;-><init>(Landroid/content/Context;Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;)V

    invoke-virtual {p0, v1}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    return-void
.end method

.method public static isSupported(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 62
    invoke-static {}, Lcom/android/launcher3/Utilities;->isAtLeastO()Z

    move-result v2

    if-nez v2, :cond_0

    .line 63
    return v1

    .line 66
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 67
    const-string/jumbo v3, "development_settings_enabled"

    .line 66
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eq v2, v0, :cond_1

    .line 68
    return v1

    .line 72
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/android/launcher3/graphics/IconShapeOverride;->getSystemResField()Ljava/lang/reflect/Field;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 74
    return v1

    .line 76
    :catch_0
    move-exception v0

    .line 78
    return v1

    .line 81
    :cond_2
    invoke-static {}, Lcom/android/launcher3/graphics/IconShapeOverride;->getConfigResId()I

    move-result v2

    if-eqz v2, :cond_3

    :goto_0
    return v0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
