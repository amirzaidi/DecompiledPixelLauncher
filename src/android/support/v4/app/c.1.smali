.class Landroid/support/v4/app/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/aq;


# instance fields
.field private final Wf:Z

.field private Wg:I

.field private final Wh:Landroid/support/v4/app/U;


# direct methods
.method constructor <init>(Landroid/support/v4/app/U;Z)V
    .locals 0

    .prologue
    .line 3877
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3878
    iput-boolean p2, p0, Landroid/support/v4/app/c;->Wf:Z

    .line 3879
    iput-object p1, p0, Landroid/support/v4/app/c;->Wh:Landroid/support/v4/app/U;

    .line 3880
    return-void
.end method

.method static synthetic aii(Landroid/support/v4/app/c;)Z
    .locals 1

    .prologue
    .line 3871
    iget-boolean v0, p0, Landroid/support/v4/app/c;->Wf:Z

    return v0
.end method

.method static synthetic aik(Landroid/support/v4/app/c;)Landroid/support/v4/app/U;
    .locals 1

    .prologue
    .line 3871
    iget-object v0, p0, Landroid/support/v4/app/c;->Wh:Landroid/support/v4/app/U;

    return-object v0
.end method


# virtual methods
.method public aig()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3910
    iget v1, p0, Landroid/support/v4/app/c;->Wg:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public aih()V
    .locals 1

    .prologue
    .line 3889
    iget v0, p0, Landroid/support/v4/app/c;->Wg:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/c;->Wg:I

    .line 3890
    iget v0, p0, Landroid/support/v4/app/c;->Wg:I

    if-nez v0, :cond_0

    .line 3893
    iget-object v0, p0, Landroid/support/v4/app/c;->Wh:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    invoke-static {v0}, Landroid/support/v4/app/aV;->apr(Landroid/support/v4/app/aV;)V

    .line 3894
    return-void

    .line 3891
    :cond_0
    return-void
.end method

.method public aij()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3938
    iget-object v0, p0, Landroid/support/v4/app/c;->Wh:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    iget-object v1, p0, Landroid/support/v4/app/c;->Wh:Landroid/support/v4/app/U;

    iget-boolean v2, p0, Landroid/support/v4/app/c;->Wf:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/aV;->aoX(Landroid/support/v4/app/aV;Landroid/support/v4/app/U;ZZZ)V

    .line 3939
    return-void
.end method

.method public ail()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3920
    iget v0, p0, Landroid/support/v4/app/c;->Wg:I

    if-gtz v0, :cond_0

    move v1, v2

    .line 3921
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/c;->Wh:Landroid/support/v4/app/U;

    iget-object v5, v0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    .line 3922
    iget-object v0, v5, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    .line 3923
    :goto_1
    if-lt v4, v6, :cond_1

    .line 3930
    iget-object v0, p0, Landroid/support/v4/app/c;->Wh:Landroid/support/v4/app/U;

    iget-object v0, v0, Landroid/support/v4/app/U;->YM:Landroid/support/v4/app/aV;

    iget-object v4, p0, Landroid/support/v4/app/c;->Wh:Landroid/support/v4/app/U;

    iget-boolean v5, p0, Landroid/support/v4/app/c;->Wf:Z

    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v0, v4, v5, v2, v3}, Landroid/support/v4/app/aV;->aoX(Landroid/support/v4/app/aV;Landroid/support/v4/app/U;ZZZ)V

    .line 3931
    return-void

    :cond_0
    move v1, v3

    .line 3920
    goto :goto_0

    .line 3924
    :cond_1
    iget-object v0, v5, Landroid/support/v4/app/aV;->acd:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 3925
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/support/v4/app/e;->ajW(Landroid/support/v4/app/aq;)V

    .line 3926
    if-nez v1, :cond_3

    .line 3923
    :cond_2
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 3926
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/e;->aiI()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3927
    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajQ()V

    goto :goto_3

    :cond_4
    move v2, v3

    .line 3930
    goto :goto_2
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 3903
    iget v0, p0, Landroid/support/v4/app/c;->Wg:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/c;->Wg:I

    .line 3904
    return-void
.end method
