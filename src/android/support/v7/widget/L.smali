.class Landroid/support/v7/widget/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field PZ:J

.field Qa:Ljava/util/ArrayList;

.field Qb:J

.field Qc:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 5089
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5090
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/L;->Qa:Ljava/util/ArrayList;

    .line 5091
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v7/widget/L;->Qc:I

    .line 5092
    iput-wide v2, p0, Landroid/support/v7/widget/L;->Qb:J

    .line 5093
    iput-wide v2, p0, Landroid/support/v7/widget/L;->PZ:J

    return-void
.end method
