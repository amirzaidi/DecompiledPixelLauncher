.class public final enum Lcom/android/launcher3/Workspace$Direction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/Workspace$Direction;

.field public static final enum X:Lcom/android/launcher3/Workspace$Direction;

.field public static final enum Y:Lcom/android/launcher3/Workspace$Direction;


# instance fields
.field private final viewProperty:Landroid/util/Property;


# direct methods
.method static synthetic -get0(Lcom/android/launcher3/Workspace$Direction;)Landroid/util/Property;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/Workspace$Direction;->viewProperty:Landroid/util/Property;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 214
    new-instance v0, Lcom/android/launcher3/Workspace$Direction;

    const-string/jumbo v1, "X"

    sget-object v2, Lcom/android/launcher3/Workspace;->TRANSLATION_X:Landroid/util/Property;

    invoke-direct {v0, v1, v3, v2}, Lcom/android/launcher3/Workspace$Direction;-><init>(Ljava/lang/String;ILandroid/util/Property;)V

    sput-object v0, Lcom/android/launcher3/Workspace$Direction;->X:Lcom/android/launcher3/Workspace$Direction;

    .line 215
    new-instance v0, Lcom/android/launcher3/Workspace$Direction;

    const-string/jumbo v1, "Y"

    sget-object v2, Lcom/android/launcher3/Workspace;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v0, v1, v4, v2}, Lcom/android/launcher3/Workspace$Direction;-><init>(Ljava/lang/String;ILandroid/util/Property;)V

    sput-object v0, Lcom/android/launcher3/Workspace$Direction;->Y:Lcom/android/launcher3/Workspace$Direction;

    .line 213
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/Workspace$Direction;

    sget-object v1, Lcom/android/launcher3/Workspace$Direction;->X:Lcom/android/launcher3/Workspace$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/Workspace$Direction;->Y:Lcom/android/launcher3/Workspace$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/launcher3/Workspace$Direction;->$VALUES:[Lcom/android/launcher3/Workspace$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/util/Property;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 220
    iput-object p3, p0, Lcom/android/launcher3/Workspace$Direction;->viewProperty:Landroid/util/Property;

    .line 221
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/Workspace$Direction;
    .locals 1

    .prologue
    .line 213
    const-class v0, Lcom/android/launcher3/Workspace$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/Workspace$Direction;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/Workspace$Direction;
    .locals 1

    .prologue
    .line 213
    sget-object v0, Lcom/android/launcher3/Workspace$Direction;->$VALUES:[Lcom/android/launcher3/Workspace$Direction;

    return-object v0
.end method
