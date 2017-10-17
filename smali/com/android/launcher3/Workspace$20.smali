.class final Lcom/android/launcher3/Workspace$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/launcher3/Workspace$ItemOperator;


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/Workspace;

.field final synthetic val$updates:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Workspace;Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/Workspace$20;->this$0:Lcom/android/launcher3/Workspace;

    iput-object p2, p0, Lcom/android/launcher3/Workspace$20;->val$updates:Ljava/util/HashSet;

    .line 3961
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/android/launcher3/ItemInfo;Landroid/view/View;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 3964
    instance-of v0, p1, Lcom/android/launcher3/ShortcutInfo;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/android/launcher3/BubbleTextView;

    if-eqz v0, :cond_0

    .line 3965
    iget-object v0, p0, Lcom/android/launcher3/Workspace$20;->val$updates:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 3964
    if-eqz v0, :cond_0

    .line 3966
    check-cast p1, Lcom/android/launcher3/ShortcutInfo;

    .line 3967
    check-cast p2, Lcom/android/launcher3/BubbleTextView;

    .line 3968
    invoke-static {p2}, Lcom/android/launcher3/Workspace;->getTextViewIcon(Landroid/widget/TextView;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3969
    instance-of v2, v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    if-eqz v2, :cond_1

    .line 3970
    check-cast v0, Lcom/android/launcher3/graphics/PreloadIconDrawable;

    invoke-virtual {v0}, Lcom/android/launcher3/graphics/PreloadIconDrawable;->hasNotCompleted()Z

    move-result v0

    .line 3971
    :goto_0
    invoke-virtual {p1}, Lcom/android/launcher3/ShortcutInfo;->isPromise()Z

    move-result v2

    if-eq v2, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p2, p1, v0}, Lcom/android/launcher3/BubbleTextView;->applyFromShortcutInfo(Lcom/android/launcher3/ShortcutInfo;Z)V

    .line 3974
    :cond_0
    return v1

    :cond_1
    move v0, v1

    .line 3969
    goto :goto_0

    :cond_2
    move v0, v1

    .line 3971
    goto :goto_1
.end method
