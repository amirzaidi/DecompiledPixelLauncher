.class Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    .line 156
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 160
    check-cast p2, Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/graphics/IconShapeOverride;->-wrap0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    .line 165
    iget-object v1, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0065

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 166
    const/4 v2, 0x1

    .line 163
    invoke-static {v0, v4, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Landroid/app/ProgressDialog;

    .line 168
    new-instance v0, Lcom/android/launcher3/util/LooperExecutor;

    invoke-static {}, Lcom/android/launcher3/LauncherModel;->getWorkerLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;-><init>(Landroid/os/Looper;)V

    .line 169
    new-instance v1, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;

    iget-object v2, p0, Lcom/android/launcher3/graphics/IconShapeOverride$PreferenceChangeHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2, v4}, Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/graphics/IconShapeOverride$OverrideApplyHandler;)V

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    .line 171
    :cond_0
    return v3
.end method
