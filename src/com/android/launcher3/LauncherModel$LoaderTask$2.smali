.class final Lcom/android/launcher3/LauncherModel$LoaderTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;


# direct methods
.method constructor <init>(Lcom/android/launcher3/LauncherModel$LoaderTask;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/LauncherModel$LoaderTask$2;->this$1:Lcom/android/launcher3/LauncherModel$LoaderTask;

    .line 1347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I
    .locals 4

    .prologue
    .line 1350
    iget-wide v0, p1, Lcom/android/launcher3/ItemInfo;->container:J

    iget-wide v2, p2, Lcom/android/launcher3/ItemInfo;->container:J

    invoke-static {v0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1348
    check-cast p1, Lcom/android/launcher3/ItemInfo;

    check-cast p2, Lcom/android/launcher3/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/LauncherModel$LoaderTask$2;->compare(Lcom/android/launcher3/ItemInfo;Lcom/android/launcher3/ItemInfo;)I

    move-result v0

    return v0
.end method
