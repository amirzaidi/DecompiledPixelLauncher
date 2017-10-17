.class public Lcom/android/launcher3/FolderInfo;
.super Lcom/android/launcher3/ItemInfo;
.source "SourceFile"


# instance fields
.field public contents:Ljava/util/ArrayList;

.field listeners:Ljava/util/ArrayList;

.field public options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfo;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/FolderInfo;->itemType:I

    .line 59
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/FolderInfo;->user:Landroid/os/UserHandle;

    .line 60
    return-void
.end method


# virtual methods
.method public add(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onAdd(Lcom/android/launcher3/ShortcutInfo;)V

    .line 69
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 72
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/FolderInfo;->itemsChanged(Z)V

    .line 73
    return-void
.end method

.method public addListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    return-void
.end method

.method public hasOption(I)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    iget v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public itemsChanged(Z)V
    .locals 2

    .prologue
    .line 112
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onItemsChanged(Z)V

    .line 112
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method

.method public onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V
    .locals 3

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/android/launcher3/ItemInfo;->onAddToDatabase(Lcom/android/launcher3/util/ContentWriter;)V

    .line 98
    const-string/jumbo v0, "title"

    iget-object v1, p0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/launcher3/util/ContentWriter;

    move-result-object v0

    .line 99
    const-string/jumbo v1, "options"

    iget v2, p0, Lcom/android/launcher3/FolderInfo;->options:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 98
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/ContentWriter;->put(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/launcher3/util/ContentWriter;

    .line 101
    return-void
.end method

.method public prepareAutoUpdate()V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0}, Lcom/android/launcher3/FolderInfo$FolderListener;->prepareAutoUpdate()V

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 121
    :cond_0
    return-void
.end method

.method public remove(Lcom/android/launcher3/ShortcutInfo;Z)V
    .locals 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 82
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onRemove(Lcom/android/launcher3/ShortcutInfo;)V

    .line 82
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/FolderInfo;->itemsChanged(Z)V

    .line 86
    return-void
.end method

.method public removeListener(Lcom/android/launcher3/FolderInfo$FolderListener;)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 109
    return-void
.end method

.method public setOption(IZLcom/android/launcher3/model/ModelWriter;)V
    .locals 3

    .prologue
    .line 141
    iget v0, p0, Lcom/android/launcher3/FolderInfo;->options:I

    .line 142
    if-eqz p2, :cond_1

    .line 143
    iget v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    .line 147
    :goto_0
    if-eqz p3, :cond_0

    iget v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    if-eq v0, v1, :cond_0

    .line 148
    invoke-virtual {p3, p0}, Lcom/android/launcher3/model/ModelWriter;->updateItemInDatabase(Lcom/android/launcher3/ItemInfo;)V

    .line 150
    :cond_0
    return-void

    .line 145
    :cond_1
    iget v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    not-int v2, p1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/FolderInfo;->options:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/launcher3/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 90
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/launcher3/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/FolderInfo$FolderListener;

    invoke-interface {v0, p1}, Lcom/android/launcher3/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 90
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 93
    :cond_0
    return-void
.end method
