.class public abstract Lcom/google/protobuf/nano/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected volatile cachedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/protobuf/nano/a;->cachedSize:I

    .line 41
    return-void
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/a;[B)Lcom/google/protobuf/nano/a;
    .locals 2

    .prologue
    .line 131
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p0, p1, v1, v0}, Lcom/google/protobuf/nano/a;->mergeFrom(Lcom/google/protobuf/nano/a;[BII)Lcom/google/protobuf/nano/a;

    move-result-object v0

    return-object v0
.end method

.method public static final mergeFrom(Lcom/google/protobuf/nano/a;[BII)Lcom/google/protobuf/nano/a;
    .locals 2

    .prologue
    .line 142
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/c;->WC([BII)Lcom/google/protobuf/nano/c;

    move-result-object v0

    .line 143
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/a;->mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;

    .line 144
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/protobuf/nano/c;->WK(I)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    return-object p0

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Reading from a byte array threw an IOException (should never happen)."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :catch_1
    move-exception v0

    .line 147
    throw v0
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/a;[BII)V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/google/protobuf/nano/b;->VZ([BII)Lcom/google/protobuf/nano/b;

    move-result-object v0

    .line 117
    invoke-virtual {p0, v0}, Lcom/google/protobuf/nano/a;->writeTo(Lcom/google/protobuf/nano/b;)V

    .line 118
    invoke-virtual {v0}, Lcom/google/protobuf/nano/b;->VI()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    return-void

    .line 119
    :catch_0
    move-exception v0

    .line 120
    new-instance v1, Ljava/lang/RuntimeException;

    const-string/jumbo v2, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static final toByteArray(Lcom/google/protobuf/nano/a;)[B
    .locals 3

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->getSerializedSize()I

    move-result v0

    new-array v0, v0, [B

    .line 101
    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {p0, v0, v2, v1}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;[BII)V

    .line 102
    return-object v0
.end method


# virtual methods
.method public clone()Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 196
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/a;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->clone()Lcom/google/protobuf/nano/a;

    move-result-object v0

    return-object v0
.end method

.method protected computeSerializedSize()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/google/protobuf/nano/a;->cachedSize:I

    if-gez v0, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->getSerializedSize()I

    .line 56
    :cond_0
    iget v0, p0, Lcom/google/protobuf/nano/a;->cachedSize:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/google/protobuf/nano/a;->computeSerializedSize()I

    move-result v0

    .line 66
    iput v0, p0, Lcom/google/protobuf/nano/a;->cachedSize:I

    .line 67
    return v0
.end method

.method public abstract mergeFrom(Lcom/google/protobuf/nano/c;)Lcom/google/protobuf/nano/a;
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    invoke-static {p0}, Lcom/google/protobuf/nano/i;->Xh(Lcom/google/protobuf/nano/a;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/google/protobuf/nano/b;)V
    .locals 0

    .prologue
    .line 87
    return-void
.end method
