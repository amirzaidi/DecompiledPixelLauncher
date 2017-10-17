.class final Lcom/android/launcher3/popup/PopupPopulator$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)I
    .locals 2

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, -0x1

    return v0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isDeclaredInManifest()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const/4 v0, 0x1

    return v0

    .line 124
    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getRank()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getRank()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 116
    check-cast p1, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    check-cast p2, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/popup/PopupPopulator$1;->compare(Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)I

    move-result v0

    return v0
.end method
