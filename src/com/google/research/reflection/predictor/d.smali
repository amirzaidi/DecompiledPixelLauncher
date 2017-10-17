.class public Lcom/google/research/reflection/predictor/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected MB:Z

.field private MC:I

.field protected MD:Lcom/google/research/reflection/common/a;

.field private ME:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/32 v0, 0x36ee80

    iput-wide v0, p0, Lcom/google/research/reflection/predictor/d;->ME:J

    .line 24
    const/16 v0, 0x64

    iput v0, p0, Lcom/google/research/reflection/predictor/d;->MC:I

    .line 31
    new-instance v0, Lcom/google/research/reflection/common/a;

    iget v1, p0, Lcom/google/research/reflection/predictor/d;->MC:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/research/reflection/common/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    .line 32
    return-void
.end method

.method public static SA(Ljava/lang/String;Lcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/d;
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/google/research/reflection/predictor/d;

    invoke-direct {v0}, Lcom/google/research/reflection/predictor/d;-><init>()V

    .line 142
    if-nez p0, :cond_0

    .line 146
    :goto_0
    return-object v0

    .line 143
    :cond_0
    sget-object v0, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 144
    invoke-static {v0, p1}, Lcom/google/research/reflection/predictor/d;->SC([BLcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/d;

    move-result-object v0

    goto :goto_0
.end method

.method public static SC([BLcom/google/research/reflection/a/b;)Lcom/google/research/reflection/predictor/d;
    .locals 3

    .prologue
    .line 115
    new-instance v1, Lcom/google/research/reflection/predictor/d;

    invoke-direct {v1}, Lcom/google/research/reflection/predictor/d;-><init>()V

    .line 117
    :try_start_0
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 118
    invoke-virtual {v1, v0, p1}, Lcom/google/research/reflection/predictor/d;->SB(Ljava/io/DataInputStream;Lcom/google/research/reflection/a/b;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/DataInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :goto_0
    return-object v1

    .line 120
    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static SF(Lcom/google/research/reflection/predictor/d;)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 150
    if-nez p0, :cond_0

    .line 154
    return-object v0

    .line 151
    :cond_0
    invoke-static {p0}, Lcom/google/research/reflection/predictor/d;->SH(Lcom/google/research/reflection/predictor/d;)[B

    move-result-object v0

    .line 152
    new-instance v1, Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v1
.end method

.method public static SH(Lcom/google/research/reflection/predictor/d;)[B
    .locals 2

    .prologue
    .line 128
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 129
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 130
    invoke-virtual {p0, v1}, Lcom/google/research/reflection/predictor/d;->SD(Ljava/io/DataOutputStream;)V

    .line 131
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V

    .line 132
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 136
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public SB(Ljava/io/DataInputStream;Lcom/google/research/reflection/a/b;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/d;->clear()V

    .line 98
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v3

    move v1, v2

    .line 100
    :goto_0
    if-lt v1, v3, :cond_0

    .line 111
    return-void

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v4

    .line 102
    if-nez v0, :cond_2

    .line 103
    :cond_1
    new-array v0, v4, [B

    .line 105
    :goto_1
    invoke-virtual {p1, v0, v2, v4}, Ljava/io/DataInputStream;->read([BII)I

    .line 106
    invoke-interface {p2, v0, v2, v4}, Lcom/google/research/reflection/a/b;->I([BII)Lcom/google/research/reflection/a/b;

    move-result-object v4

    .line 107
    invoke-virtual {p0, v4}, Lcom/google/research/reflection/predictor/d;->SG(Lcom/google/research/reflection/a/b;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 100
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_2
    array-length v5, v0

    if-lt v5, v4, :cond_1

    goto :goto_1

    .line 108
    :cond_3
    invoke-virtual {p0, v4}, Lcom/google/research/reflection/predictor/d;->Sz(Lcom/google/research/reflection/a/b;)V

    goto :goto_2
.end method

.method public SD(Ljava/io/DataOutputStream;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-virtual {p0}, Lcom/google/research/reflection/predictor/d;->size()I

    move-result v3

    .line 85
    invoke-virtual {p1, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    move v1, v2

    .line 86
    :goto_0
    if-lt v1, v3, :cond_0

    .line 92
    iput-boolean v2, p0, Lcom/google/research/reflection/predictor/d;->MB:Z

    .line 93
    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/b;

    .line 88
    invoke-interface {v0}, Lcom/google/research/reflection/a/b;->R()[B

    move-result-object v0

    .line 89
    array-length v4, v0

    invoke-virtual {p1, v4}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 90
    array-length v4, v0

    invoke-virtual {p1, v0, v2, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 86
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public SE()Lcom/google/research/reflection/common/a;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    return-object v0
.end method

.method protected SG(Lcom/google/research/reflection/a/b;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->Q()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 64
    :cond_0
    const/4 v0, 0x1

    .line 62
    :goto_0
    return v0

    .line 63
    :cond_1
    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->Q()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 64
    invoke-interface {p1}, Lcom/google/research/reflection/a/b;->Q()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "app_launch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0
.end method

.method public Sz(Lcom/google/research/reflection/a/b;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/google/research/reflection/predictor/d;->SG(Lcom/google/research/reflection/a/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 44
    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SV()I

    move-result v0

    if-gtz v0, :cond_2

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, p1}, Lcom/google/research/reflection/common/a;->add(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    iput-boolean v2, p0, Lcom/google/research/reflection/predictor/d;->MB:Z

    .line 59
    return-void

    .line 42
    :cond_1
    return-void

    .line 47
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/b;

    invoke-static {v0, p1}, Lcom/google/research/reflection/common/e;->Tn(Lcom/google/research/reflection/a/b;Lcom/google/research/reflection/a/b;)J
    :try_end_0
    .catch Lcom/google/research/reflection/common/UncertaintyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 51
    :goto_1
    iget-wide v4, p0, Lcom/google/research/reflection/predictor/d;->ME:J

    cmp-long v0, v0, v4

    if-gtz v0, :cond_3

    move v0, v2

    :goto_2
    if-nez v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SW()V

    goto :goto_0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1

    :cond_3
    move v0, v3

    .line 51
    goto :goto_2
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->clear()V

    .line 77
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SV()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const-string/jumbo v0, "(size "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SV()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string/jumbo v0, "): "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0}, Lcom/google/research/reflection/common/a;->SV()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 168
    const-string/jumbo v0, "\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/research/reflection/predictor/d;->MD:Lcom/google/research/reflection/common/a;

    invoke-virtual {v0, v1}, Lcom/google/research/reflection/common/a;->ST(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/research/reflection/a/b;

    invoke-interface {v0}, Lcom/google/research/reflection/a/b;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string/jumbo v0, " "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method
