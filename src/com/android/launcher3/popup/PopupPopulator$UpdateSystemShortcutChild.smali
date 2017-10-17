.class Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field private final mItemInfo:Lcom/android/launcher3/ItemInfo;

.field private final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mSystemShortcutChild:Landroid/view/View;

.field private final mSystemShortcutInfo:Lcom/android/launcher3/popup/SystemShortcut;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)V
    .locals 0

    .prologue
    .line 283
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 285
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 286
    iput-object p2, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mSystemShortcutChild:Landroid/view/View;

    .line 287
    iput-object p3, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mSystemShortcutInfo:Lcom/android/launcher3/popup/SystemShortcut;

    .line 288
    iput-object p4, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 289
    iput-object p5, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 290
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mSystemShortcutChild:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 295
    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mSystemShortcutChild:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mSystemShortcutInfo:Lcom/android/launcher3/popup/SystemShortcut;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/popup/PopupPopulator;->initializeSystemShortcut(Landroid/content/Context;Landroid/view/View;Lcom/android/launcher3/popup/SystemShortcut;)V

    .line 296
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mSystemShortcutChild:Landroid/view/View;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mSystemShortcutInfo:Lcom/android/launcher3/popup/SystemShortcut;

    .line 297
    iget-object v2, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateSystemShortcutChild;->mItemInfo:Lcom/android/launcher3/ItemInfo;

    .line 296
    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/popup/SystemShortcut;->getOnClickListener(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/ItemInfo;)Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    return-void
.end method
