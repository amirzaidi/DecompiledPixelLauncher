.class Landroid/support/v4/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/aF;


# instance fields
.field final synthetic XL:Landroid/support/v4/app/aV;

.field final XM:Ljava/lang/String;

.field final XN:I

.field final mFlags:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/aV;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 3843
    iput-object p1, p0, Landroid/support/v4/app/s;->XL:Landroid/support/v4/app/aV;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3844
    iput-object p2, p0, Landroid/support/v4/app/s;->XM:Ljava/lang/String;

    .line 3845
    iput p3, p0, Landroid/support/v4/app/s;->XN:I

    .line 3846
    iput p4, p0, Landroid/support/v4/app/s;->mFlags:I

    .line 3847
    return-void
.end method


# virtual methods
.method public akA(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3852
    iget-object v0, p0, Landroid/support/v4/app/s;->XL:Landroid/support/v4/app/aV;

    iget-object v0, v0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    if-nez v0, :cond_1

    .line 3862
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/s;->XL:Landroid/support/v4/app/aV;

    iget-object v3, p0, Landroid/support/v4/app/s;->XM:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/s;->XN:I

    iget v5, p0, Landroid/support/v4/app/s;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aV;->apY(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 3852
    :cond_1
    iget v0, p0, Landroid/support/v4/app/s;->XN:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/s;->XM:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3855
    iget-object v0, p0, Landroid/support/v4/app/s;->XL:Landroid/support/v4/app/aV;

    iget-object v0, v0, Landroid/support/v4/app/aV;->acs:Landroid/support/v4/app/e;

    invoke-virtual {v0}, Landroid/support/v4/app/e;->ajt()Landroid/support/v4/app/bb;

    move-result-object v0

    .line 3856
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/bb;->aom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3859
    return v1
.end method
