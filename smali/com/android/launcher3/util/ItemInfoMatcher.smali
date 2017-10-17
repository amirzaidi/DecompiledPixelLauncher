.class public abstract Lcom/android/launcher3/util/ItemInfoMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ofComponents(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher$2;-><init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static ofPackages(Ljava/util/HashSet;Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1

    .prologue
    .line 90
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/ItemInfoMatcher$3;-><init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V

    return-object v0
.end method

.method public static ofShortcutKeys(Ljava/util/HashSet;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$4;-><init>(Ljava/util/HashSet;)V

    return-object v0
.end method

.method public static ofUser(Landroid/os/UserHandle;)Lcom/android/launcher3/util/ItemInfoMatcher;
    .locals 1

    .prologue
    .line 70
    new-instance v0, Lcom/android/launcher3/util/ItemInfoMatcher$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/ItemInfoMatcher$1;-><init>(Landroid/os/UserHandle;)V

    return-object v0
.end method


# virtual methods
.method public final filterItemInfos(Ljava/lang/Iterable;)Ljava/util/HashSet;
    .locals 5

    .prologue
    .line 42
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 43
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    .line 44
    instance-of v3, v0, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v3, :cond_1

    .line 45
    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 46
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 47
    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 50
    :cond_1
    instance-of v3, v0, Lcom/android/launcher3/FolderInfo;

    if-eqz v3, :cond_3

    .line 51
    check-cast v0, Lcom/android/launcher3/FolderInfo;

    .line 52
    iget-object v0, v0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutInfo;

    .line 53
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v4

    .line 54
    if-eqz v4, :cond_2

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 55
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_3
    instance-of v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    if-eqz v3, :cond_0

    .line 59
    check-cast v0, Lcom/android/launcher3/LauncherAppWidgetInfo;

    .line 60
    iget-object v3, v0, Lcom/android/launcher3/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 61
    if-eqz v3, :cond_0

    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/util/ItemInfoMatcher;->matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    :cond_4
    return-object v1
.end method

.method public abstract matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
.end method
