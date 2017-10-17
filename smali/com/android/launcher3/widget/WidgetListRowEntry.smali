.class public Lcom/android/launcher3/widget/WidgetListRowEntry;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

.field public titleSectionName:Ljava/lang/String;

.field public final widgets:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/model/PackageItemInfo;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/android/launcher3/widget/WidgetListRowEntry;->pkgItem:Lcom/android/launcher3/model/PackageItemInfo;

    .line 41
    iput-object p2, p0, Lcom/android/launcher3/widget/WidgetListRowEntry;->widgets:Ljava/util/ArrayList;

    .line 42
    return-void
.end method
