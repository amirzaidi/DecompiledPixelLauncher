.class Landroid/support/v7/widget/L;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field RG:J

.field RH:Ljava/util/ArrayList;

.field RI:J

.field RJ:I


# direct methods
.method constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 5127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/L;->RH:Ljava/util/ArrayList;

    .line 5129
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v7/widget/L;->RJ:I

    .line 5130
    iput-wide v2, p0, Landroid/support/v7/widget/L;->RI:J

    .line 5131
    iput-wide v2, p0, Landroid/support/v7/widget/L;->RG:J

    return-void
.end method
