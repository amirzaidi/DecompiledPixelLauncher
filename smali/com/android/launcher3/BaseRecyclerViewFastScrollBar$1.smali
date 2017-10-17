.class final Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;)Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 44
    invoke-static {p1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->-get0(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 42
    check-cast p1, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->get(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 49
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;->-wrap0(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;I)V

    .line 50
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/BaseRecyclerViewFastScrollBar$1;->set(Lcom/android/launcher3/BaseRecyclerViewFastScrollBar;Ljava/lang/Integer;)V

    return-void
.end method
