.class Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

.field whichEdge:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/CellLayout$ViewCluster;)V
    .locals 1

    .prologue
    .line 1500
    iput-object p1, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1501
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    .line 1500
    return-void
.end method


# virtual methods
.method public compare(Landroid/view/View;Landroid/view/View;)I
    .locals 3

    .prologue
    .line 1503
    iget-object v0, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v0, v0, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/CellAndSpan;

    .line 1504
    iget-object v1, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->this$1:Lcom/android/launcher3/CellLayout$ViewCluster;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$ViewCluster;->config:Lcom/android/launcher3/CellLayout$ItemConfiguration;

    iget-object v1, v1, Lcom/android/launcher3/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/CellAndSpan;

    .line 1505
    iget v2, p0, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->whichEdge:I

    packed-switch v2, :pswitch_data_0

    .line 1514
    :pswitch_0
    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    sub-int/2addr v0, v1

    return v0

    .line 1507
    :pswitch_1
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanX:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    return v0

    .line 1509
    :pswitch_2
    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->cellX:I

    sub-int/2addr v0, v1

    return v0

    .line 1511
    :pswitch_3
    iget v2, v1, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v1, v1, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/launcher3/util/CellAndSpan;->cellY:I

    iget v0, v0, Lcom/android/launcher3/util/CellAndSpan;->spanY:I

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    return v0

    .line 1505
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1502
    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/CellLayout$ViewCluster$PositionComparator;->compare(Landroid/view/View;Landroid/view/View;)I

    move-result v0

    return v0
.end method
