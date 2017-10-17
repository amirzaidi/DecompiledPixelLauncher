.class Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

.field private final mDetail:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

.field private final mShortcutChild:Lcom/android/launcher3/shortcuts/DeepShortcutView;

.field private final mShortcutChildInfo:Lcom/android/launcher3/ShortcutInfo;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/popup/PopupContainerWithArrow;Lcom/android/launcher3/shortcuts/DeepShortcutView;Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;)V
    .locals 0

    .prologue
    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    iput-object p1, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 245
    iput-object p2, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;->mShortcutChild:Lcom/android/launcher3/shortcuts/DeepShortcutView;

    .line 246
    iput-object p3, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;->mShortcutChildInfo:Lcom/android/launcher3/ShortcutInfo;

    .line 247
    iput-object p4, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;->mDetail:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 248
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 252
    iget-object v0, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;->mShortcutChild:Lcom/android/launcher3/shortcuts/DeepShortcutView;

    iget-object v1, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;->mShortcutChildInfo:Lcom/android/launcher3/ShortcutInfo;

    iget-object v2, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;->mDetail:Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;

    .line 253
    iget-object v3, p0, Lcom/android/launcher3/popup/PopupPopulator$UpdateShortcutChild;->mContainer:Lcom/android/launcher3/popup/PopupContainerWithArrow;

    iget-object v3, v3, Lcom/android/launcher3/popup/PopupContainerWithArrow;->mShortcutsItemView:Lcom/android/launcher3/shortcuts/ShortcutsItemView;

    .line 252
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/shortcuts/DeepShortcutView;->applyShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Lcom/android/launcher3/shortcuts/ShortcutInfoCompat;Lcom/android/launcher3/shortcuts/ShortcutsItemView;)V

    .line 254
    return-void
.end method
