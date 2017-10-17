.class public Lcom/android/launcher3/widget/WidgetItemComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final mCollator:Ljava/text/Collator;

.field private final mMyUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    .line 32
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mCollator:Ljava/text/Collator;

    .line 29
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I
    .locals 3

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 39
    iget-object v1, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mMyUserHandle:Landroid/os/UserHandle;

    iget-object v2, p2, Lcom/android/launcher3/model/WidgetItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 40
    xor-int/2addr v1, v0

    if-eqz v1, :cond_1

    .line 41
    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetItemComparator;->mCollator:Ljava/text/Collator;

    iget-object v1, p1, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/launcher3/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 45
    if-eqz v0, :cond_2

    .line 46
    return v0

    .line 51
    :cond_2
    iget v0, p1, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v1, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    mul-int/2addr v0, v1

    .line 52
    iget v1, p2, Lcom/android/launcher3/model/WidgetItem;->spanX:I

    iget v2, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    mul-int/2addr v1, v2

    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    iget v0, p1, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    iget v1, p2, Lcom/android/launcher3/model/WidgetItem;->spanY:I

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 53
    :goto_1
    return v0

    .line 55
    :cond_3
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lcom/android/launcher3/model/WidgetItem;

    check-cast p2, Lcom/android/launcher3/model/WidgetItem;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetItemComparator;->compare(Lcom/android/launcher3/model/WidgetItem;Lcom/android/launcher3/model/WidgetItem;)I

    move-result v0

    return v0
.end method
