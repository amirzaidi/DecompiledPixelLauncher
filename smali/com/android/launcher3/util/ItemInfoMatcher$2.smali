.class final Lcom/android/launcher3/util/ItemInfoMatcher$2;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic val$components:Ljava/util/HashSet;

.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Ljava/util/HashSet;Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$2;->val$components:Ljava/util/HashSet;

    iput-object p2, p0, Lcom/android/launcher3/util/ItemInfoMatcher$2;->val$user:Landroid/os/UserHandle;

    .line 80
    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/launcher3/util/ItemInfoMatcher$2;->val$components:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$2;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
