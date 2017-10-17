.class Lcom/google/android/apps/nexuslauncher/search/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final eG:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

.field final eH:Ljava/lang/String;

.field final eI:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;)V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/search/c;->eI:Ljava/util/ArrayList;

    .line 98
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/search/c;->eH:Ljava/lang/String;

    .line 99
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/search/c;->eG:Lcom/android/launcher3/allapps/search/AllAppsSearchBarController$Callbacks;

    .line 100
    return-void
.end method
