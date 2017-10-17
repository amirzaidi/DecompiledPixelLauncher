.class final Lcom/android/launcher3/util/FlagOp$2;
.super Lcom/android/launcher3/util/FlagOp;
.source "SourceFile"


# instance fields
.field final synthetic val$flag:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .prologue
    .line 1
    iput p1, p0, Lcom/android/launcher3/util/FlagOp$2;->val$flag:I

    .line 14
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/util/FlagOp;-><init>(Lcom/android/launcher3/util/FlagOp;)V

    .line 1
    return-void
.end method


# virtual methods
.method public apply(I)I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/android/launcher3/util/FlagOp$2;->val$flag:I

    or-int/2addr v0, p1

    return v0
.end method
