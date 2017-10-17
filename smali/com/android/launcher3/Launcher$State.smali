.class final enum Lcom/android/launcher3/Launcher$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/Launcher$State;

.field public static final enum APPS:Lcom/android/launcher3/Launcher$State;

.field public static final enum APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

.field public static final enum NONE:Lcom/android/launcher3/Launcher$State;

.field public static final enum WIDGETS:Lcom/android/launcher3/Launcher$State;

.field public static final enum WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

.field public static final enum WORKSPACE:Lcom/android/launcher3/Launcher$State;

.field public static final enum WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 198
    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string/jumbo v1, "WORKSPACE"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string/jumbo v1, "WORKSPACE_SPRING_LOADED"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string/jumbo v1, "APPS"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string/jumbo v1, "APPS_SPRING_LOADED"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    .line 199
    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string/jumbo v1, "WIDGETS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    new-instance v0, Lcom/android/launcher3/Launcher$State;

    const-string/jumbo v1, "WIDGETS_SPRING_LOADED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    .line 198
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/launcher3/Launcher$State;

    sget-object v1, Lcom/android/launcher3/Launcher$State;->NONE:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WORKSPACE_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher3/Launcher$State;->APPS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS:Lcom/android/launcher3/Launcher$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/Launcher$State;->WIDGETS_SPRING_LOADED:Lcom/android/launcher3/Launcher$State;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher3/Launcher$State;->$VALUES:[Lcom/android/launcher3/Launcher$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/Launcher$State;
    .locals 1

    .prologue
    .line 198
    const-class v0, Lcom/android/launcher3/Launcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Launcher$State;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/Launcher$State;
    .locals 1

    .prologue
    .line 198
    sget-object v0, Lcom/android/launcher3/Launcher$State;->$VALUES:[Lcom/android/launcher3/Launcher$State;

    return-object v0
.end method
