.class Landroid/support/v4/app/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ap;


# instance fields
.field private final XP:Z

.field private XQ:I

.field private final XR:Landroid/support/v4/app/V;


# direct methods
.method constructor <init>(Landroid/support/v4/app/V;Z)V
    .locals 0

    .prologue
    .line 3798
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3799
    iput-boolean p2, p0, Landroid/support/v4/app/e;->XP:Z

    .line 3800
    iput-object p1, p0, Landroid/support/v4/app/e;->XR:Landroid/support/v4/app/V;

    .line 3801
    return-void
.end method

.method static synthetic ajw(Landroid/support/v4/app/e;)Z
    .locals 1

    .prologue
    .line 3792
    iget-boolean v0, p0, Landroid/support/v4/app/e;->XP:Z

    return v0
.end method

.method static synthetic ajy(Landroid/support/v4/app/e;)Landroid/support/v4/app/V;
    .locals 1

    .prologue
    .line 3792
    iget-object v0, p0, Landroid/support/v4/app/e;->XR:Landroid/support/v4/app/V;

    return-object v0
.end method


# virtual methods
.method public aju()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 3831
    iget v1, p0, Landroid/support/v4/app/e;->XQ:I

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ajv()V
    .locals 1

    .prologue
    .line 3810
    iget v0, p0, Landroid/support/v4/app/e;->XQ:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/support/v4/app/e;->XQ:I

    .line 3811
    iget v0, p0, Landroid/support/v4/app/e;->XQ:I

    if-nez v0, :cond_0

    .line 3814
    iget-object v0, p0, Landroid/support/v4/app/e;->XR:Landroid/support/v4/app/V;

    iget-object v0, v0, Landroid/support/v4/app/V;->aar:Landroid/support/v4/app/aR;

    invoke-static {v0}, Landroid/support/v4/app/aR;->aqs(Landroid/support/v4/app/aR;)V

    .line 3815
    return-void

    .line 3812
    :cond_0
    return-void
.end method

.method public ajx()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3859
    iget-object v0, p0, Landroid/support/v4/app/e;->XR:Landroid/support/v4/app/V;

    iget-object v0, v0, Landroid/support/v4/app/V;->aar:Landroid/support/v4/app/aR;

    iget-object v1, p0, Landroid/support/v4/app/e;->XR:Landroid/support/v4/app/V;

    iget-boolean v2, p0, Landroid/support/v4/app/e;->XP:Z

    invoke-static {v0, v1, v2, v3, v3}, Landroid/support/v4/app/aR;->apY(Landroid/support/v4/app/aR;Landroid/support/v4/app/V;ZZZ)V

    .line 3860
    return-void
.end method

.method public ajz()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3841
    iget v0, p0, Landroid/support/v4/app/e;->XQ:I

    if-gtz v0, :cond_0

    move v1, v2

    .line 3842
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/e;->XR:Landroid/support/v4/app/V;

    iget-object v5, v0, Landroid/support/v4/app/V;->aar:Landroid/support/v4/app/aR;

    .line 3843
    iget-object v0, v5, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v4, v2

    .line 3844
    :goto_1
    if-lt v4, v6, :cond_1

    .line 3851
    iget-object v0, p0, Landroid/support/v4/app/e;->XR:Landroid/support/v4/app/V;

    iget-object v0, v0, Landroid/support/v4/app/V;->aar:Landroid/support/v4/app/aR;

    iget-object v4, p0, Landroid/support/v4/app/e;->XR:Landroid/support/v4/app/V;

    iget-boolean v5, p0, Landroid/support/v4/app/e;->XP:Z

    if-eqz v1, :cond_4

    :goto_2
    invoke-static {v0, v4, v5, v2, v3}, Landroid/support/v4/app/aR;->apY(Landroid/support/v4/app/aR;Landroid/support/v4/app/V;ZZZ)V

    .line 3852
    return-void

    :cond_0
    move v1, v3

    .line 3841
    goto :goto_0

    .line 3845
    :cond_1
    iget-object v0, v5, Landroid/support/v4/app/aR;->adx:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 3846
    const/4 v7, 0x0

    invoke-virtual {v0, v7}, Landroid/support/v4/app/g;->alj(Landroid/support/v4/app/ap;)V

    .line 3847
    if-nez v1, :cond_3

    .line 3844
    :cond_2
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_1

    .line 3847
    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/g;->ajV()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 3848
    invoke-virtual {v0}, Landroid/support/v4/app/g;->ald()V

    goto :goto_3

    :cond_4
    move v2, v3

    .line 3851
    goto :goto_2
.end method

.method public startListening()V
    .locals 1

    .prologue
    .line 3824
    iget v0, p0, Landroid/support/v4/app/e;->XQ:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/app/e;->XQ:I

    .line 3825
    return-void
.end method
