.class public Lcom/android/launcher3/widget/WidgetsListAdapter;
.super Landroid/support/v7/widget/q;
.source "SourceFile"


# instance fields
.field private final mEntries:Ljava/util/ArrayList;

.field private final mIconClickListener:Landroid/view/View$OnClickListener;

.field private final mIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mIndent:I

.field private final mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v7/widget/q;-><init>()V

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    .line 70
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 71
    invoke-static {p3}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getWidgetCache()Lcom/android/launcher3/WidgetPreviewLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    .line 73
    new-instance v0, Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    invoke-direct {v0, p3}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    .line 75
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    .line 76
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 77
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    .line 78
    return-void
.end method


# virtual methods
.method public copyWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetListRowEntry;

    .line 108
    iget-object v3, v0, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v3, v3, Lcom/android/launcher3/model/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 109
    new-instance v2, Ljava/util/ArrayList;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 112
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 113
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/WidgetItem;

    iget-object v0, v0, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    iget-object v4, p1, Lcom/android/launcher3/util/PackageUserKey;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 117
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    move-object v0, v2

    goto :goto_1

    .line 120
    :cond_4
    return-object v1
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 213
    int-to-long v0, p1

    return-wide v0
.end method

.method public getSectionName(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetListRowEntry;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetListRowEntry;->titleSectionName:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/j;I)V
    .locals 0

    .prologue
    .line 123
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onBindViewHolder(Lcom/android/launcher3/widget/WidgetsRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/widget/WidgetsRowViewHolder;I)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 125
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetListRowEntry;

    .line 126
    iget-object v5, v0, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    .line 128
    iget-object v6, p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->cellContainer:Landroid/view/ViewGroup;

    .line 137
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v2, v1

    .line 138
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 140
    if-le v2, v4, :cond_1

    .line 141
    :goto_0
    if-ge v4, v2, :cond_2

    .line 142
    and-int/lit8 v1, v4, 0x1

    const/4 v7, 0x1

    if-ne v1, v7, :cond_0

    .line 144
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f040033

    invoke-virtual {v1, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 141
    :goto_1
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    .line 147
    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 148
    const v7, 0x7f040031

    .line 147
    invoke-virtual {v1, v7, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/widget/WidgetCell;

    .line 151
    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v7}, Lcom/android/launcher3/widget/WidgetCell;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v7, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v7}, Lcom/android/launcher3/widget/WidgetCell;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 153
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 156
    :cond_1
    if-ge v2, v4, :cond_2

    move v1, v2

    .line 157
    :goto_2
    if-ge v1, v4, :cond_2

    .line 158
    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/16 v7, 0x8

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 157
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 163
    :cond_2
    iget-object v1, p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->title:Lcom/android/launcher3/BubbleTextView;

    iget-object v0, v0, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromPackageItemInfo(Lcom/android/launcher3/model/PackageItemInfo;)V

    move v2, v3

    .line 166
    :goto_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 167
    mul-int/lit8 v0, v2, 0x2

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 168
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/WidgetItem;

    iget-object v4, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mWidgetPreviewLoader:Lcom/android/launcher3/WidgetPreviewLoader;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/widget/WidgetCell;->applyFromCellItem(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/WidgetPreviewLoader;)V

    .line 169
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->ensurePreview()V

    .line 170
    invoke-virtual {v0, v3}, Lcom/android/launcher3/widget/WidgetCell;->setVisibility(I)V

    .line 172
    if-lez v2, :cond_3

    .line 173
    mul-int/lit8 v0, v2, 0x2

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 166
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 176
    :cond_4
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/j;
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/widget/WidgetsRowViewHolder;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 184
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 185
    const v1, 0x7f040035

    .line 184
    invoke-virtual {v0, v1, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 189
    const v1, 0x7f0e0072

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndent:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 191
    new-instance v1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-direct {v1, v0}, Lcom/android/launcher3/widget/WidgetsRowViewHolder;-><init>(Landroid/view/ViewGroup;)V

    return-object v1
.end method

.method public bridge synthetic onFailedToRecycleView(Landroid/support/v7/widget/j;)Z
    .locals 1

    .prologue
    .line 203
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onFailedToRecycleView(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)Z

    move-result v0

    return v0
.end method

.method public onFailedToRecycleView(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)Z
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic onViewRecycled(Landroid/support/v7/widget/j;)V
    .locals 0

    .prologue
    .line 194
    check-cast p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/widget/WidgetsListAdapter;->onViewRecycled(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)V

    return-void
.end method

.method public onViewRecycled(Lcom/android/launcher3/widget/WidgetsRowViewHolder;)V
    .locals 3

    .prologue
    .line 196
    iget-object v0, p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->cellContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 197
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 198
    iget-object v0, p1, Lcom/android/launcher3/widget/WidgetsRowViewHolder;->cellContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    .line 199
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->clear()V

    .line 197
    add-int/lit8 v0, v1, 0x2

    move v1, v0

    goto :goto_0

    .line 201
    :cond_0
    return-void
.end method

.method public setWidgets(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 5

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 82
    new-instance v2, Lcom/android/launcher3/widget/WidgetItemComparator;

    invoke-direct {v2}, Lcom/android/launcher3/widget/WidgetItemComparator;-><init>()V

    .line 84
    invoke-virtual {p1}, Lcom/android/launcher3/util/MultiHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 85
    new-instance v4, Lcom/android/launcher3/widget/WidgetListRowEntry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/PackageItemInfo;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v4, v1, v0}, Lcom/android/launcher3/widget/WidgetListRowEntry;-><init>(Lcom/android/launcher3/model/PackageItemInfo;Ljava/util/ArrayList;)V

    .line 86
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mIndexer:Lcom/android/launcher3/compat/AlphabeticIndexCompat;

    iget-object v1, v4, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/compat/AlphabeticIndexCompat;->computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v4, Lcom/android/launcher3/widget/WidgetListRowEntry;->titleSectionName:Ljava/lang/String;

    .line 87
    iget-object v0, v4, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 88
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter;->mEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;

    invoke-direct {v1}, Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 92
    return-void
.end method
