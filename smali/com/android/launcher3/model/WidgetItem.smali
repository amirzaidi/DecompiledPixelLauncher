.class public Lcom/android/launcher3/model/WidgetItem;
.super Lcom/android/launcher3/util/ComponentKey;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# static fields
.field private static sCollator:Ljava/text/Collator;

.field private static sMyUserHandle:Landroid/os/UserHandle;


# instance fields
.field public final activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

.field public final label:Ljava/lang/String;

.field public final spanX:I

.field public final spanY:I

.field public final widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/LauncherAppWidgetProviderInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher3/InvariantDeviceProfile;)V
    .locals 2

    .prologue
    .line 34
    iget-object v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 36
    invoke-virtual {p1, p2}, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->getLabel(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    .line 40
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanX:I

    iget v1, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 41
    iget v0, p1, Lcom/android/launcher3/LauncherAppWidgetProviderInfo;->spanY:I

    iget v1, p3, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    .line 42
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 45
    invoke-virtual {p1}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    .line 46
    invoke-virtual {p1}, Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/model/WidgetItem;->widgetInfo:Lcom/android/launcher3/LauncherAppWidgetProviderInfo;

    .line 48
    iput-object p1, p0, Lcom/android/launcher3/model/WidgetItem;->activityInfo:Lcom/android/launcher3/compat/ShortcutConfigActivityInfo;

    .line 49
    iput v2, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iput v2, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    .line 50
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/launcher3/model/WidgetItem;)I
    .locals 3

    .prologue
    .line 54
    sget-object v0, Lcom/android/launcher3/model/WidgetItem;->sMyUserHandle:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/WidgetItem;->sMyUserHandle:Landroid/os/UserHandle;

    .line 57
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/model/WidgetItem;->sCollator:Ljava/text/Collator;

    .line 62
    :cond_0
    sget-object v0, Lcom/android/launcher3/model/WidgetItem;->sMyUserHandle:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 63
    sget-object v1, Lcom/android/launcher3/model/WidgetItem;->sMyUserHandle:Landroid/os/UserHandle;

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 64
    xor-int/2addr v1, v0

    if-eqz v1, :cond_2

    .line 65
    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 68
    :cond_2
    sget-object v0, Lcom/android/launcher3/model/WidgetItem;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 69
    if-eqz v0, :cond_3

    .line 70
    return v0

    .line 75
    :cond_3
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v1, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    mul-int/2addr v0, v1

    .line 76
    iget v1, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v2, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    mul-int/2addr v1, v2

    .line 77
    if-ne v0, v1, :cond_4

    .line 78
    iget v0, p0, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget v1, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 77
    :goto_1
    return v0

    .line 79
    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 52
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/model/WidgetItem;->compareTo(Lcom/android/launcher3/model/WidgetItem;)I

    move-result v0

    return v0
.end method
