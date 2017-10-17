.class Lcom/google/android/apps/nexuslauncher/qsb/c;
.super Landroid/support/v7/widget/m;
.source "SourceFile"


# instance fields
.field final synthetic bY:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/qsb/c;->bY:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    invoke-direct {p0}, Landroid/support/v7/widget/m;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;Lcom/google/android/apps/nexuslauncher/qsb/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/qsb/c;-><init>(Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;)V

    return-void
.end method


# virtual methods
.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/qsb/c;->bY:Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;

    check-cast p1, Lcom/android/launcher3/BaseRecyclerView;

    invoke-virtual {p1}, Lcom/android/launcher3/BaseRecyclerView;->getCurrentScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/qsb/AllAppsQsbLayout;->bv(I)V

    .line 196
    return-void
.end method
