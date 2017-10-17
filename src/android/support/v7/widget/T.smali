.class Landroid/support/v7/widget/T;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public Sb:I

.field public Sc:Z

.field public Sd:Z

.field public mFinished:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 2473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method resetInternal()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2480
    iput v0, p0, Landroid/support/v7/widget/T;->Sb:I

    .line 2481
    iput-boolean v0, p0, Landroid/support/v7/widget/T;->mFinished:Z

    .line 2482
    iput-boolean v0, p0, Landroid/support/v7/widget/T;->Sc:Z

    .line 2483
    iput-boolean v0, p0, Landroid/support/v7/widget/T;->Sd:Z

    .line 2484
    return-void
.end method
