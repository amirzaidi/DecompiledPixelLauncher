.class public final Lcom/google/protobuf/nano/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final KY:Ljava/nio/charset/Charset;

.field protected static final KZ:Ljava/nio/charset/Charset;

.field public static final La:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-string/jumbo v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/d;->KY:Ljava/nio/charset/Charset;

    .line 71
    const-string/jumbo v0, "ISO-8859-1"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/nano/d;->KZ:Ljava/nio/charset/Charset;

    .line 85
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/protobuf/nano/d;->La:Ljava/lang/Object;

    .line 49
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static SR(Lcom/google/protobuf/nano/e;Lcom/google/protobuf/nano/e;)V
    .locals 1

    .prologue
    .line 543
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    invoke-virtual {v0}, Lcom/google/protobuf/nano/h;->clone()Lcom/google/protobuf/nano/h;

    move-result-object v0

    iput-object v0, p1, Lcom/google/protobuf/nano/e;->Lb:Lcom/google/protobuf/nano/h;

    .line 546
    :cond_0
    return-void
.end method
