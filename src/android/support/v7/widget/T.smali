.class Landroid/support/v7/widget/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Qu:I

.field public Qv:Z

.field public Qw:Z

.field public mFinished:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2462
    iput v0, p0, Landroid/support/v7/widget/T;->Qu:I

    .line 2463
    iput-boolean v0, p0, Landroid/support/v7/widget/T;->mFinished:Z

    .line 2464
    iput-boolean v0, p0, Landroid/support/v7/widget/T;->Qv:Z

    .line 2465
    iput-boolean v0, p0, Landroid/support/v7/widget/T;->Qw:Z

    .line 2466
    return-void
.end method
