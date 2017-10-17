.class public Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field private final mComparator:Lcom/android/launcher3/util/LabelComparator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    new-instance v0, Lcom/android/launcher3/util/LabelComparator;

    invoke-direct {v0}, Lcom/android/launcher3/util/LabelComparator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;->mComparator:Lcom/android/launcher3/util/LabelComparator;

    .line 219
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/widget/WidgetListRowEntry;Lcom/android/launcher3/widget/WidgetListRowEntry;)I
    .locals 3

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;->mComparator:Lcom/android/launcher3/util/LabelComparator;

    iget-object v1, p1, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/PackageItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LabelComparator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 223
    check-cast p1, Lcom/android/launcher3/widget/WidgetListRowEntry;

    check-cast p2, Lcom/android/launcher3/widget/WidgetListRowEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/widget/WidgetsListAdapter$WidgetListRowEntryComparator;->compare(Lcom/android/launcher3/widget/WidgetListRowEntry;Lcom/android/launcher3/widget/WidgetListRowEntry;)I

    move-result v0

    return v0
.end method
