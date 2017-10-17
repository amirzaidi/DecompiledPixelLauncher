.class public Lcom/android/launcher3/keyboard/CustomActionsPopup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# instance fields
.field private final mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

.field private final mIcon:Landroid/view/View;

.field private final mLauncher:Lcom/android/launcher3/Launcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    .line 48
    iput-object p2, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    .line 49
    invoke-static {p1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getOpen(Lcom/android/launcher3/Launcher;)Lcom/android/launcher3/popup/PopupContainerWithArrow;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getAccessibilityDelegate()Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    goto :goto_0
.end method

.method private getActionList()Ljava/util/List;
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/ItemInfo;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 59
    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0

    .line 62
    :cond_1
    invoke-static {}, Landroid/view/accessibility/AccessibilityNodeInfo;->obtain()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v2, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->addSupportedActions(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;Z)V

    .line 64
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->getActionList()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 65
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->recycle()V

    .line 66
    return-object v1
.end method


# virtual methods
.method public canShow()Z
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->getActionList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 91
    iget-object v1, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mDelegate:Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;

    iget-object v2, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ItemInfo;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lcom/android/launcher3/ItemInfo;I)Z

    move-result v0

    return v0
.end method

.method public show()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 74
    invoke-direct {p0}, Lcom/android/launcher3/keyboard/CustomActionsPopup;->getActionList()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    return v5

    .line 79
    :cond_0
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/keyboard/CustomActionsPopup;->mIcon:Landroid/view/View;

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 80
    invoke-virtual {v1, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 81
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    .line 83
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getId()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->getLabel()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v2, v5, v4, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    .line 86
    const/4 v0, 0x1

    return v0
.end method
