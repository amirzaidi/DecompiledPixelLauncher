.class public Lcom/google/research/reflection/layers/m;
.super Lcom/google/research/reflection/layers/o;
.source "SourceFile"


# instance fields
.field private Nv:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/research/reflection/layers/o;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/reflection/layers/m;->Nv:I

    .line 29
    return-void
.end method

.method public constructor <init>(IIIIIIIIZ)V
    .locals 12

    .prologue
    .line 23
    const/4 v1, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v11}, Lcom/google/research/reflection/layers/o;-><init>(ZIIIIIIIZZF)V

    .line 18
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/research/reflection/layers/m;->Nv:I

    .line 25
    iput p1, p0, Lcom/google/research/reflection/layers/m;->Nv:I

    .line 26
    return-void
.end method

.method static synthetic VM(Lcom/google/research/reflection/layers/m;)I
    .locals 1

    .prologue
    .line 12
    iget v0, p0, Lcom/google/research/reflection/layers/m;->Nv:I

    return v0
.end method


# virtual methods
.method public VI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const-string/jumbo v0, "OutputLayer"

    return-object v0
.end method

.method public VJ(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/o;->VJ(Ljava/io/DataOutputStream;)V

    .line 74
    iget v0, p0, Lcom/google/research/reflection/layers/m;->Nv:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/m;->We(Ljava/io/DataOutputStream;)V

    .line 76
    return-void
.end method

.method public VK(Ljava/io/DataInputStream;)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/google/research/reflection/layers/o;->VK(Ljava/io/DataInputStream;)V

    .line 81
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/m;->Nv:I

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/layers/m;->Wd(Ljava/io/DataInputStream;)V

    .line 83
    return-void
.end method

.method VL(ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
    .locals 8

    .prologue
    .line 38
    invoke-static {}, Lcom/google/research/reflection/layers/e;->Vq()Lcom/google/research/reflection/layers/e;

    move-result-object v6

    iget-object v0, p2, Lcom/google/research/reflection/layers/b;->Mr:[D

    array-length v7, v0

    new-instance v0, Lcom/google/research/reflection/layers/d;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/research/reflection/layers/d;-><init>(Lcom/google/research/reflection/layers/m;ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V

    invoke-virtual {v6, v7, v0}, Lcom/google/research/reflection/layers/e;->Vp(ILcom/google/research/reflection/layers/c;)V

    .line 60
    return-void
.end method

.method public clone()Lcom/google/research/reflection/layers/m;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Lcom/google/research/reflection/layers/m;

    invoke-direct {v0}, Lcom/google/research/reflection/layers/m;-><init>()V

    .line 65
    invoke-super {p0, v0}, Lcom/google/research/reflection/layers/o;->VN(Lcom/google/research/reflection/layers/o;)V

    .line 66
    iget v1, p0, Lcom/google/research/reflection/layers/m;->Nv:I

    iput v1, v0, Lcom/google/research/reflection/layers/m;->Nv:I

    .line 67
    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/research/reflection/layers/o;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/m;->clone()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/google/research/reflection/layers/v;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/m;->clone()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/m;->clone()Lcom/google/research/reflection/layers/m;

    move-result-object v0

    return-object v0
.end method
