.class public final Lcom/google/protobuf/nano/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Lc:[J

.field public static final Ld:[F

.field public static final Le:[Z

.field public static final Lf:[[B

.field public static final Lg:[Ljava/lang/String;

.field public static final Lh:[I

.field public static final Li:[B

.field public static final Lj:[D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 75
    new-array v0, v1, [I

    sput-object v0, Lcom/google/protobuf/nano/f;->Lh:[I

    .line 76
    new-array v0, v1, [J

    sput-object v0, Lcom/google/protobuf/nano/f;->Lc:[J

    .line 77
    new-array v0, v1, [F

    sput-object v0, Lcom/google/protobuf/nano/f;->Ld:[F

    .line 78
    new-array v0, v1, [D

    sput-object v0, Lcom/google/protobuf/nano/f;->Lj:[D

    .line 79
    new-array v0, v1, [Z

    sput-object v0, Lcom/google/protobuf/nano/f;->Le:[Z

    .line 80
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/protobuf/nano/f;->Lg:[Ljava/lang/String;

    .line 81
    new-array v0, v1, [[B

    sput-object v0, Lcom/google/protobuf/nano/f;->Lf:[[B

    .line 82
    new-array v0, v1, [B

    sput-object v0, Lcom/google/protobuf/nano/f;->Li:[B

    .line 46
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final SS(Lcom/google/protobuf/nano/c;I)I
    .locals 3

    .prologue
    .line 113
    const/4 v0, 0x1

    .line 114
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Ss()I

    move-result v1

    .line 115
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/c;->SQ(I)Z

    .line 116
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/c;->Sx()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 117
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/c;->SQ(I)Z

    .line 118
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/c;->SJ(I)V

    .line 121
    return v0
.end method

.method public static ST(I)I
    .locals 1

    .prologue
    .line 67
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static SU(I)I
    .locals 1

    .prologue
    .line 62
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static SV(II)I
    .locals 1

    .prologue
    .line 72
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static SW(Lcom/google/protobuf/nano/c;I)Z
    .locals 1

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/c;->SQ(I)Z

    move-result v0

    return v0
.end method
