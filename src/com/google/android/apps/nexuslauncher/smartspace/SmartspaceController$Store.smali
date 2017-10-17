.class final enum Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum dV:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

.field public static final enum dW:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

.field private static final synthetic dX:[Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;


# instance fields
.field final filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    const-string/jumbo v1, "WEATHER"

    const-string/jumbo v2, "smartspace_weather"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dW:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    .line 46
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    const-string/jumbo v1, "CURRENT"

    const-string/jumbo v2, "smartspace_current"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dV:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    sget-object v1, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dW:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dV:Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dX:[Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->filename:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    return-object v0
.end method

.method public static values()[Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;->dX:[Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceController$Store;

    return-object v0
.end method
