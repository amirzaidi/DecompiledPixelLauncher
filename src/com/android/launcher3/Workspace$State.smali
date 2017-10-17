.class public final enum Lcom/android/launcher3/Workspace$State;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/Workspace$State;

.field public static final enum NORMAL:Lcom/android/launcher3/Workspace$State;

.field public static final enum NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

.field public static final enum OVERVIEW:Lcom/android/launcher3/Workspace$State;

.field public static final enum OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

.field public static final enum SPRING_LOADED:Lcom/android/launcher3/Workspace$State;


# instance fields
.field public final containerType:I

.field public final hasMultipleVisiblePages:Z

.field public final shouldUpdateWidget:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 193
    new-instance v0, Lcom/android/launcher3/Workspace$State;

    const-string/jumbo v1, "NORMAL"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace$State;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    .line 194
    new-instance v0, Lcom/android/launcher3/Workspace$State;

    const-string/jumbo v1, "NORMAL_HIDDEN"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x4

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace$State;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    .line 195
    new-instance v0, Lcom/android/launcher3/Workspace$State;

    const-string/jumbo v1, "SPRING_LOADED"

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace$State;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    .line 196
    new-instance v0, Lcom/android/launcher3/Workspace$State;

    const-string/jumbo v1, "OVERVIEW"

    const/4 v2, 0x3

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x6

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace$State;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    .line 197
    new-instance v0, Lcom/android/launcher3/Workspace$State;

    const-string/jumbo v1, "OVERVIEW_HIDDEN"

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/Workspace$State;-><init>(Ljava/lang/String;IZZI)V

    sput-object v0, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    .line 192
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/launcher3/Workspace$State;

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL:Lcom/android/launcher3/Workspace$State;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/Workspace$State;->NORMAL_HIDDEN:Lcom/android/launcher3/Workspace$State;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/Workspace$State;->SPRING_LOADED:Lcom/android/launcher3/Workspace$State;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW:Lcom/android/launcher3/Workspace$State;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/Workspace$State;->OVERVIEW_HIDDEN:Lcom/android/launcher3/Workspace$State;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/launcher3/Workspace$State;->$VALUES:[Lcom/android/launcher3/Workspace$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZI)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    iput-boolean p3, p0, Lcom/android/launcher3/Workspace$State;->shouldUpdateWidget:Z

    .line 205
    iput-boolean p4, p0, Lcom/android/launcher3/Workspace$State;->hasMultipleVisiblePages:Z

    .line 206
    iput p5, p0, Lcom/android/launcher3/Workspace$State;->containerType:I

    .line 207
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/Workspace$State;
    .locals 1

    .prologue
    .line 192
    const-class v0, Lcom/android/launcher3/Workspace$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace$State;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/Workspace$State;
    .locals 1

    .prologue
    .line 192
    sget-object v0, Lcom/android/launcher3/Workspace$State;->$VALUES:[Lcom/android/launcher3/Workspace$State;

    return-object v0
.end method
