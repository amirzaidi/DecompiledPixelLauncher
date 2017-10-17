.class public Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;
.super Landroid/support/v7/widget/Q;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)V
    .locals 1

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    .line 176
    invoke-direct {p0}, Landroid/support/v7/widget/Q;-><init>()V

    .line 177
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->setSpanIndexCacheEnabled(Z)V

    .line 178
    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get0(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->isIconViewType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    const/4 v0, 0x1

    return v0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/AllAppsGridAdapter$GridSpanSizer;->this$0:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-static {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->-get1(Lcom/android/launcher3/allapps/AllAppsGridAdapter;)I

    move-result v0

    return v0
.end method
