.class public Lcom/google/android/apps/nexuslauncher/search/d;
.super Lcom/android/launcher3/ItemInfoWithIcon;
.source "SourceFile"


# instance fields
.field private mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/ComponentKey;)V
    .locals 2

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/android/launcher3/ItemInfoWithIcon;-><init>()V

    .line 17
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 18
    const-string/jumbo v1, "android.intent.category.LAUNCHER"

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 19
    iget-object v1, p1, Lcom/android/launcher3/util/ComponentKey;->componentName:Landroid/content/ComponentName;

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 20
    const/high16 v1, 0x10200000

    .line 17
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mIntent:Landroid/content/Intent;

    .line 22
    iget-object v0, p1, Lcom/android/launcher3/util/ComponentKey;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->user:Landroid/os/UserHandle;

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->itemType:I

    .line 24
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/d;->mIntent:Landroid/content/Intent;

    return-object v0
.end method
