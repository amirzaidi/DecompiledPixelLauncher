.class Landroid/support/v7/widget/aE;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public SG:I

.field public SH:Z

.field public SI:I

.field public SJ:Landroid/support/v7/widget/RecyclerView;

.field public position:I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    iput-boolean v1, p0, Landroid/support/v7/widget/aE;->SH:Z

    .line 45
    iput v1, p0, Landroid/support/v7/widget/aE;->SI:I

    .line 46
    iput v1, p0, Landroid/support/v7/widget/aE;->SG:I

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/aE;->SJ:Landroid/support/v7/widget/RecyclerView;

    .line 48
    iput v1, p0, Landroid/support/v7/widget/aE;->position:I

    .line 49
    return-void
.end method
