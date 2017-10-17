.class public abstract Lcom/google/research/reflection/layers/v;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static OX:D


# instance fields
.field OW:Z

.field OY:Lcom/google/research/reflection/layers/b;

.field OZ:Lcom/google/research/reflection/layers/b;

.field Pa:I

.field Pb:Lcom/google/research/reflection/common/a;

.field Pc:Lcom/google/research/reflection/common/a;

.field Pd:Z

.field Pe:I

.field Pf:I

.field Pg:Lcom/google/research/reflection/common/a;

.field Ph:Lcom/google/research/reflection/layers/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    const-wide v0, 0x3fb999999999999aL    # 0.1

    sput-wide v0, Lcom/google/research/reflection/layers/v;->OX:D

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    return-void
.end method

.method constructor <init>(ZIIII)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/google/research/reflection/common/a;

    invoke-direct {v0, p2, v1}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->Pg:Lcom/google/research/reflection/common/a;

    .line 52
    new-instance v0, Lcom/google/research/reflection/common/a;

    invoke-direct {v0, p2, v1}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->Pb:Lcom/google/research/reflection/common/a;

    .line 53
    new-instance v0, Lcom/google/research/reflection/common/a;

    invoke-direct {v0, p2, v1}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->Pc:Lcom/google/research/reflection/common/a;

    .line 55
    iput p3, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    .line 56
    iput p4, p0, Lcom/google/research/reflection/layers/v;->Pe:I

    .line 57
    iput p5, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    .line 58
    iput-boolean p1, p0, Lcom/google/research/reflection/layers/v;->OW:Z

    .line 60
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-direct {v0, p3, p5}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->Ph:Lcom/google/research/reflection/layers/b;

    .line 61
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-direct {v0, p3, p4}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->OY:Lcom/google/research/reflection/layers/b;

    .line 62
    new-instance v0, Lcom/google/research/reflection/layers/b;

    invoke-direct {v0, p3, p5}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->OZ:Lcom/google/research/reflection/layers/b;

    .line 63
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->OY:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 64
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->OZ:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 65
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Ph:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 66
    return-void
.end method

.method public static UV()D
    .locals 2

    .prologue
    .line 231
    sget-wide v0, Lcom/google/research/reflection/layers/v;->OX:D

    return-wide v0
.end method


# virtual methods
.method public abstract UB(ZLcom/google/research/reflection/layers/a;[Ljava/util/ArrayList;Lcom/google/research/reflection/layers/b;)Lcom/google/research/reflection/layers/b;
.end method

.method UC()V
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->OY:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 174
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->OZ:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 175
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Ph:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 176
    return-void
.end method

.method public abstract UD(Lcom/google/research/reflection/layers/a;ILcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;Lcom/google/research/reflection/layers/b;)V
.end method

.method public UO()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Pg:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 168
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Pb:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 169
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Pc:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 170
    return-void
.end method

.method UP(Ljava/io/DataInputStream;)V
    .locals 5

    .prologue
    .line 212
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    .line 213
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/v;->Uu()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    return-void

    .line 214
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {p0}, Lcom/google/research/reflection/layers/v;->Uu()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x13

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v3, "Expected "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " acquired "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method UQ(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/v;->Uu()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method public UR()I
    .locals 1

    .prologue
    .line 139
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    return v0
.end method

.method public US()I
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Pg:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SX()I

    move-result v0

    return v0
.end method

.method public UT()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pe:I

    return v0
.end method

.method public UU()Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->OZ:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method public UW(Lcom/google/research/reflection/layers/v;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 109
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Pg:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SX()I

    move-result v0

    .line 110
    new-instance v1, Lcom/google/research/reflection/common/a;

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v1, p1, Lcom/google/research/reflection/layers/v;->Pg:Lcom/google/research/reflection/common/a;

    .line 111
    new-instance v1, Lcom/google/research/reflection/common/a;

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v1, p1, Lcom/google/research/reflection/layers/v;->Pb:Lcom/google/research/reflection/common/a;

    .line 112
    new-instance v1, Lcom/google/research/reflection/common/a;

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v1, p1, Lcom/google/research/reflection/layers/v;->Pc:Lcom/google/research/reflection/common/a;

    .line 113
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pe:I

    iput v0, p1, Lcom/google/research/reflection/layers/v;->Pe:I

    .line 114
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    iput v0, p1, Lcom/google/research/reflection/layers/v;->Pf:I

    .line 115
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    iput v0, p1, Lcom/google/research/reflection/layers/v;->Pa:I

    .line 116
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/v;->OW:Z

    iput-boolean v0, p1, Lcom/google/research/reflection/layers/v;->OW:Z

    .line 118
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    iget v2, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p1, Lcom/google/research/reflection/layers/v;->Ph:Lcom/google/research/reflection/layers/b;

    .line 119
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    iget v2, p0, Lcom/google/research/reflection/layers/v;->Pe:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p1, Lcom/google/research/reflection/layers/v;->OY:Lcom/google/research/reflection/layers/b;

    .line 120
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    iget v2, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p1, Lcom/google/research/reflection/layers/v;->OZ:Lcom/google/research/reflection/layers/b;

    .line 121
    iget-object v0, p1, Lcom/google/research/reflection/layers/v;->OY:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 122
    iget-object v0, p1, Lcom/google/research/reflection/layers/v;->OZ:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 123
    iget-object v0, p1, Lcom/google/research/reflection/layers/v;->Ph:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 124
    return-void
.end method

.method public UX()I
    .locals 1

    .prologue
    .line 147
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    return v0
.end method

.method public UY()Lcom/google/research/reflection/layers/b;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->OY:Lcom/google/research/reflection/layers/b;

    return-object v0
.end method

.method public abstract Uu()Ljava/lang/String;
.end method

.method public Uv(Ljava/io/DataOutputStream;)V
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 73
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 74
    iget v0, p0, Lcom/google/research/reflection/layers/v;->Pe:I

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 75
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Pg:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SX()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 76
    iget-boolean v0, p0, Lcom/google/research/reflection/layers/v;->OW:Z

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    .line 77
    return-void
.end method

.method public Uw(Ljava/io/DataInputStream;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 80
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    .line 81
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    .line 82
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p0, Lcom/google/research/reflection/layers/v;->Pe:I

    .line 83
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 84
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/research/reflection/layers/v;->OW:Z

    .line 86
    new-instance v1, Lcom/google/research/reflection/common/a;

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/v;->Pg:Lcom/google/research/reflection/common/a;

    .line 87
    new-instance v1, Lcom/google/research/reflection/common/a;

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/v;->Pb:Lcom/google/research/reflection/common/a;

    .line 88
    new-instance v1, Lcom/google/research/reflection/common/a;

    invoke-direct {v1, v0, v2}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v1, p0, Lcom/google/research/reflection/layers/v;->Pc:Lcom/google/research/reflection/common/a;

    .line 90
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    iget v2, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->Ph:Lcom/google/research/reflection/layers/b;

    .line 91
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    iget v2, p0, Lcom/google/research/reflection/layers/v;->Pe:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->OY:Lcom/google/research/reflection/layers/b;

    .line 92
    new-instance v0, Lcom/google/research/reflection/layers/b;

    iget v1, p0, Lcom/google/research/reflection/layers/v;->Pa:I

    iget v2, p0, Lcom/google/research/reflection/layers/v;->Pf:I

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/layers/b;-><init>(II)V

    iput-object v0, p0, Lcom/google/research/reflection/layers/v;->OZ:Lcom/google/research/reflection/layers/b;

    .line 93
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->OY:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 94
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->OZ:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 95
    iget-object v0, p0, Lcom/google/research/reflection/layers/v;->Ph:Lcom/google/research/reflection/layers/b;

    iget-object v0, v0, Lcom/google/research/reflection/layers/b;->Nl:[D

    invoke-static {v0}, Lcom/google/research/reflection/layers/k;->Up([D)V

    .line 96
    return-void
.end method

.method public abstract clone()Lcom/google/research/reflection/layers/v;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    invoke-virtual {p0}, Lcom/google/research/reflection/layers/v;->clone()Lcom/google/research/reflection/layers/v;

    move-result-object v0

    return-object v0
.end method

.method public abstract update()V
.end method
