.class final Lcom/android/launcher3/util/ItemInfoMatcher$1;
.super Lcom/android/launcher3/util/ItemInfoMatcher;
.source "SourceFile"


# instance fields
.field final synthetic val$user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/os/UserHandle;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$1;->val$user:Landroid/os/UserHandle;

    .line 70
    invoke-direct {p0}, Lcom/android/launcher3/util/ItemInfoMatcher;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public matches(Lcom/android/launcher3/ItemInfo;Landroid/content/ComponentName;)Z
    .locals 2

    .prologue
    .line 73
    iget-object v0, p1, Lcom/android/launcher3/ItemInfo;->user:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/launcher3/util/ItemInfoMatcher$1;->val$user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
