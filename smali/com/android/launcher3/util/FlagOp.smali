.class public abstract Lcom/android/launcher3/util/FlagOp;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static NO_OP:Lcom/android/launcher3/util/FlagOp;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 5
    new-instance v0, Lcom/android/launcher3/util/FlagOp$1;

    invoke-direct {v0}, Lcom/android/launcher3/util/FlagOp$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/FlagOp;->NO_OP:Lcom/android/launcher3/util/FlagOp;

    .line 3
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/util/FlagOp;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/FlagOp;-><init>()V

    return-void
.end method

.method public static addFlag(I)Lcom/android/launcher3/util/FlagOp;
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/android/launcher3/util/FlagOp$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/FlagOp$2;-><init>(I)V

    return-object v0
.end method

.method public static removeFlag(I)Lcom/android/launcher3/util/FlagOp;
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/android/launcher3/util/FlagOp$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/FlagOp$3;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public apply(I)I
    .locals 0

    .prologue
    .line 10
    return p1
.end method
