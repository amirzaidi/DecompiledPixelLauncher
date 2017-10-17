.class final Lcom/android/launcher3/popup/PopupPopulator$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/popup/PopupPopulator$2;

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;

.field final synthetic val$originalInfo:Lcom/android/launcher3/ItemInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/popup/PopupPopulator$2;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupPopulator$2$1;->this$1:Lcom/android/launcher3/popup/PopupPopulator$2;

    iput-object p2, p0, Lcom/android/launcher3/popup/PopupPopulator$2$1;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-object p3, p0, Lcom/android/launcher3/popup/PopupPopulator$2$1;->val$originalInfo:Lcom/android/launcher3/ItemInfo;

    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$2$1;->val$launcher:Lcom/android/launcher3/Launcher;

    .line 231
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$2$1;->val$originalInfo:Lcom/android/launcher3/ItemInfo;

    invoke-static {v1}, Lcom/android/launcher3/util/PackageUserKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/util/PackageUserKey;

    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->refreshAndBindWidgetsForPackageUser(Lcom/android/launcher3/util/PackageUserKey;)V

    .line 232
    return-void
.end method
