.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;
.super Landroid/support/v7/widget/M;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;Landroid/content/Context;)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 102
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 103
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v1, v0}, Landroid/support/v7/widget/M;-><init>(Landroid/content/Context;IIZ)V

    .line 104
    return-void
.end method

.method private getRowsNotForAccessibility(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 153
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    .line 154
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    move v2, v0

    move v1, v0

    .line 156
    :goto_0
    if-gt v2, v4, :cond_0

    .line 157
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/16 v5, 0x206

    invoke-static {v0, v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 158
    add-int/lit8 v0, v1, 0x1

    .line 156
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 161
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getPaddingBottom()I
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get2(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragLayer;->getInsets()Landroid/graphics/Rect;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getRowCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    .line 124
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/M;->getRowCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v1

    .line 124
    sub-int/2addr v0, v1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 108
    invoke-super {p0, p1}, Landroid/support/v7/widget/M;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 112
    invoke-static {p1}, Landroid/support/v4/view/a/r;->aeY(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/v;

    move-result-object v0

    .line 114
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumFilteredApps()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/v;->afc(I)V

    .line 116
    invoke-virtual {v0}, Landroid/support/v4/view/a/v;->afd()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/view/a/v;->afd()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 115
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/v;->afb(I)V

    .line 118
    invoke-virtual {v0}, Landroid/support/v4/view/a/v;->afe()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/view/a/v;->afe()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 117
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/v;->afg(I)V

    .line 119
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 6

    .prologue
    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/M;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 133
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 134
    invoke-virtual {p4}, Landroid/support/v4/view/a/a;->adG()Landroid/support/v4/view/a/l;

    move-result-object v5

    .line 135
    instance-of v1, v0, Landroid/support/v7/widget/O;

    if-eqz v1, :cond_0

    if-nez v5, :cond_1

    .line 136
    :cond_0
    return-void

    .line 138
    :cond_1
    check-cast v0, Landroid/support/v7/widget/O;

    .line 140
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->aeQ()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/O;->Xb()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v0

    sub-int v0, v1, v0

    .line 141
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->aeN()I

    move-result v1

    .line 142
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->aeS()I

    move-result v2

    .line 143
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->aeP()I

    move-result v3

    .line 144
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->aeT()Z

    move-result v4

    .line 145
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->aeR()Z

    move-result v5

    .line 139
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/l;->aeO(IIIIZZ)Landroid/support/v4/view/a/l;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->adL(Ljava/lang/Object;)V

    .line 146
    return-void
.end method
