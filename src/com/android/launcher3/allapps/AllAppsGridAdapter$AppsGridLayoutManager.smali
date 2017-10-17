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

    .line 107
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p2, v1, v1, v0}, Landroid/support/v7/widget/M;-><init>(Landroid/content/Context;IIZ)V

    .line 109
    return-void
.end method

.method private getRowsNotForAccessibility(I)I
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 158
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    .line 159
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

    .line 161
    :goto_0
    if-gt v2, v4, :cond_0

    .line 162
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    const/16 v5, 0x106

    invoke-static {v0, v5}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isViewType(II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 163
    add-int/lit8 v0, v1, 0x1

    .line 161
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    .line 166
    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getRowCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I
    .locals 2

    .prologue
    .line 129
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/M;->getRowCountForAccessibility(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;)I

    move-result v0

    .line 130
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

    .line 129
    sub-int/2addr v0, v1

    return v0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    invoke-super {p0, p1}, Landroid/support/v7/widget/M;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 117
    invoke-static {p1}, Landroid/support/v4/view/a/n;->afZ(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/r;

    move-result-object v0

    .line 119
    iget-object v1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumFilteredApps()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/r;->agd(I)V

    .line 121
    invoke-virtual {v0}, Landroid/support/v4/view/a/r;->age()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/view/a/r;->age()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 120
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/r;->agc(I)V

    .line 123
    invoke-virtual {v0}, Landroid/support/v4/view/a/r;->agf()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v4/view/a/r;->agf()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v2

    sub-int/2addr v1, v2

    .line 122
    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/view/a/r;->agh(I)V

    .line 124
    return-void
.end method

.method public onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v4/view/a/a;)V
    .locals 6

    .prologue
    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/M;->onInitializeAccessibilityNodeInfoForItem(Landroid/support/v7/widget/s;Landroid/support/v7/widget/e;Landroid/view/View;Landroid/support/v4/view/a/a;)V

    .line 138
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 139
    invoke-virtual {p4}, Landroid/support/v4/view/a/a;->aeI()Landroid/support/v4/view/a/l;

    move-result-object v5

    .line 140
    instance-of v1, v0, Landroid/support/v7/widget/O;

    if-eqz v1, :cond_0

    if-nez v5, :cond_1

    .line 141
    :cond_0
    return-void

    .line 143
    :cond_1
    check-cast v0, Landroid/support/v7/widget/O;

    .line 145
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->afS()I

    move-result v1

    invoke-virtual {v0}, Landroid/support/v7/widget/O;->Yb()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$AppsGridLayoutManager;->getRowsNotForAccessibility(I)I

    move-result v0

    sub-int v0, v1, v0

    .line 146
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->afP()I

    move-result v1

    .line 147
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->afU()I

    move-result v2

    .line 148
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->afR()I

    move-result v3

    .line 149
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->afV()Z

    move-result v4

    .line 150
    invoke-virtual {v5}, Landroid/support/v4/view/a/l;->afT()Z

    move-result v5

    .line 144
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/a/l;->afQ(IIIIZZ)Landroid/support/v4/view/a/l;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/support/v4/view/a/a;->aeN(Ljava/lang/Object;)V

    .line 151
    return-void
.end method
