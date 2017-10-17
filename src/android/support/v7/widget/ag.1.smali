.class Landroid/support/v7/widget/ag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field Tv:I

.field Tw:I

.field Tx:I

.field Ty:I

.field Tz:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    return-void
.end method


# virtual methods
.method acj(II)I
    .locals 1

    .prologue
    .line 159
    if-gt p1, p2, :cond_0

    .line 162
    if-eq p1, p2, :cond_1

    .line 165
    const/4 v0, 0x4

    return v0

    .line 160
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 163
    :cond_1
    const/4 v0, 0x2

    return v0
.end method

.method ack()V
    .locals 1

    .prologue
    .line 155
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    .line 156
    return-void
.end method

.method acl()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 169
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    and-int/lit8 v0, v0, 0x7

    if-nez v0, :cond_4

    .line 175
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    and-int/lit8 v0, v0, 0x70

    if-nez v0, :cond_5

    .line 181
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    and-int/lit16 v0, v0, 0x700

    if-nez v0, :cond_6

    .line 187
    :cond_2
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    and-int/lit16 v0, v0, 0x7000

    if-nez v0, :cond_7

    .line 192
    :cond_3
    const/4 v0, 0x1

    return v0

    .line 170
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    iget v1, p0, Landroid/support/v7/widget/ag;->Tz:I

    iget v2, p0, Landroid/support/v7/widget/ag;->Tv:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ag;->acj(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x0

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    .line 171
    return v3

    .line 176
    :cond_5
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    iget v1, p0, Landroid/support/v7/widget/ag;->Tz:I

    iget v2, p0, Landroid/support/v7/widget/ag;->Tw:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ag;->acj(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x4

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    .line 177
    return v3

    .line 182
    :cond_6
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    iget v1, p0, Landroid/support/v7/widget/ag;->Ty:I

    iget v2, p0, Landroid/support/v7/widget/ag;->Tv:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ag;->acj(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    and-int/2addr v0, v1

    if-nez v0, :cond_2

    .line 183
    return v3

    .line 188
    :cond_7
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    iget v1, p0, Landroid/support/v7/widget/ag;->Ty:I

    iget v2, p0, Landroid/support/v7/widget/ag;->Tw:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v7/widget/ag;->acj(II)I

    move-result v1

    shl-int/lit8 v1, v1, 0xc

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    .line 189
    return v3
.end method

.method addFlags(I)V
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/ag;->Tx:I

    .line 152
    return-void
.end method

.method setBounds(IIII)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Landroid/support/v7/widget/ag;->Tv:I

    .line 141
    iput p2, p0, Landroid/support/v7/widget/ag;->Tw:I

    .line 142
    iput p3, p0, Landroid/support/v7/widget/ag;->Tz:I

    .line 143
    iput p4, p0, Landroid/support/v7/widget/ag;->Ty:I

    .line 144
    return-void
.end method
