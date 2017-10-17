.class public Lcom/android/launcher3/popup/PopupPopulator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final NUM_DYNAMIC:I = 0x2

.field private static final SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 112
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$1;

    invoke-direct {v0}, Lcom/android/launcher3/popup/PopupPopulator$1;-><init>()V

    .line 111
    sput-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    .line 53
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createUpdateRunnable(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;Landroid/os/Handler;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/notification/NotificationItemView;Ljava/util/List;Ljava/util/List;)Ljava/lang/Runnable;
    .locals 13

    .prologue
    .line 185
    invoke-virtual {p1}, Lcom/android/launcher3/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 186
    iget-object v7, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    .line 187
    new-instance v0, Lcom/android/launcher3/popup/PopupPopulator$2;

    move-object/from16 v1, p7

    move-object v2, p0

    move-object/from16 v3, p6

    move-object v4, p2

    move-object/from16 v6, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p3

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object v12, p1

    invoke-direct/range {v0 .. v12}, Lcom/android/launcher3/popup/PopupPopulator$2;-><init>(Lcom/android/launcher3/notification/NotificationItemView;Lcom/android/launcher3/Launcher;Ljava/util/List;Landroid/os/Handler;Landroid/content/ComponentName;Ljava/util/List;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/launcher3/popup/PopupContainerWithArrow;Ljava/util/List;Ljava/util/List;Lcom/android/launcher3/ItemInfo;)V

    return-object v0
.end method

.method public static getItemsToPopulate(Ljava/util/List;Ljava/util/List;Ljava/util/List;)[Lcom/android/launcher3/popup/PopupPopulator$Item;
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    move v2, v0

    .line 78
    :goto_0
    if-eqz v2, :cond_1

    .line 79
    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 80
    const/4 v4, 0x4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 81
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    .line 80
    add-int/2addr v3, v0

    .line 82
    new-array v4, v3, [Lcom/android/launcher3/popup/PopupPopulator$Item;

    move v0, v1

    .line 83
    :goto_2
    if-ge v0, v3, :cond_2

    .line 84
    sget-object v5, Lcom/android/launcher3/popup/PopupPopulator$Item;->SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    aput-object v5, v4, v0

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_0
    move v2, v1

    .line 77
    goto :goto_0

    :cond_1
    move v0, v1

    .line 78
    goto :goto_1

    .line 86
    :cond_2
    if-eqz v2, :cond_3

    .line 88
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->NOTIFICATION:Lcom/android/launcher3/popup/PopupPopulator$Item;

    aput-object v0, v4, v1

    .line 91
    :cond_3
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v2, v0, 0x1

    .line 92
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    .line 93
    add-int/lit8 v0, v3, -0x1

    sub-int v5, v0, v1

    if-eqz v2, :cond_4

    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT_ICON:Lcom/android/launcher3/popup/PopupPopulator$Item;

    :goto_4
    aput-object v0, v4, v5

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 93
    :cond_4
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator$Item;->SYSTEM_SHORTCUT:Lcom/android/launcher3/popup/PopupPopulator$Item;

    goto :goto_4

    .line 95
    :cond_5
    return-object v4
.end method

.method public static initializeSystemShortcut(Landroid/content/Context;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;)V
    .locals 3

    .prologue
    .line 302
    instance-of v0, p1, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    if-eqz v0, :cond_1

    move-object v0, p1

    .line 304
    check-cast v0, Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 305
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getIconView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2, p0}, Lcom/android/launcher3/popup/SystemShortcut;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 306
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->getBubbleText()Lcom/android/launcher3/BubbleTextView;

    move-result-object v0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/popup/SystemShortcut;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setText(Ljava/lang/CharSequence;)V

    .line 313
    :cond_0
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 314
    return-void

    .line 307
    :cond_1
    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 309
    check-cast v0, Landroid/widget/ImageView;

    .line 310
    invoke-virtual {p2, p0}, Lcom/android/launcher3/popup/SystemShortcut;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    invoke-virtual {p2, p0}, Lcom/android/launcher3/popup/SystemShortcut;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static reverseItems([Lcom/android/launcher3/popup/PopupPopulator$Item;)[Lcom/android/launcher3/popup/PopupPopulator$Item;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 99
    if-nez p0, :cond_0

    return-object v0

    .line 100
    :cond_0
    array-length v1, p0

    .line 101
    new-array v2, v1, [Lcom/android/launcher3/popup/PopupPopulator$Item;

    .line 102
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    .line 103
    sub-int v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aget-object v3, p0, v3

    aput-object v3, v2, v0

    .line 102
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_1
    return-object v2
.end method

.method public static sortAndFilterShortcuts(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/4 v7, 0x4

    .line 136
    if-eqz p1, :cond_1

    .line 137
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 138
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    .line 146
    :cond_1
    sget-object v0, Lcom/android/launcher3/popup/PopupPopulator;->SHORTCUT_RANK_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v7, :cond_2

    .line 148
    return-object p0

    .line 153
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 155
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    move v2, v1

    .line 156
    :goto_0
    if-ge v2, v4, :cond_5

    .line 157
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 158
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 159
    if-ge v5, v7, :cond_4

    .line 161
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isDynamic()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 163
    add-int/lit8 v0, v1, 0x1

    :goto_1
    move v1, v0

    .line 156
    :cond_3
    :goto_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 169
    :cond_4
    invoke-virtual {v0}, Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;->isDynamic()Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v6, 0x2

    if-ge v1, v6, :cond_3

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 171
    sub-int/2addr v5, v1

    .line 172
    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 176
    :cond_5
    return-object v3

    :cond_6
    move v0, v1

    goto :goto_1
.end method
