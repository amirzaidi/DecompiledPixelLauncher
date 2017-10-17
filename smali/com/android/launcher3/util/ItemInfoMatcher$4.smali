.class final Lcom/android/launcher3/util/ItemInfoMatcher$4;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic val$keys:Ljava/util/HashSet;


# direct methods
.method constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$4;->val$keys:Ljava/util/HashSet;

    .line 99
    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2

    .prologue
    .line 102
    iget v0, p1, Lcom/android/launcher3/ItemInfo;->itemType:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/launcher3/util/ItemInfoMatcher$4;->val$keys:Ljava/util/HashSet;

    invoke-static {p1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromItemInfo(Lcom/android/launcher3/ItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 102
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
