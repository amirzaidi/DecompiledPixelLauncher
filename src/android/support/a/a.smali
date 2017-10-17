.class public final Landroid/support/a/a;
.super Landroid/support/a/b;
.source "SourceFile"


# instance fields
.field private agA:Landroid/support/a/c;

.field private agB:Z

.field private agC:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Landroid/support/a/d;F)V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Landroid/support/a/b;-><init>(Ljava/lang/Object;Landroid/support/a/d;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    .line 61
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/a/a;->agC:F

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/a;->agB:Z

    .line 107
    new-instance v0, Landroid/support/a/c;

    invoke-direct {v0, p3}, Landroid/support/a/c;-><init>(F)V

    iput-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    .line 108
    return-void
.end method

.method private atW()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    invoke-virtual {v0}, Landroid/support/a/c;->aur()F

    move-result v0

    float-to-double v0, v0

    .line 202
    iget v2, p0, Landroid/support/a/a;->agG:F

    float-to-double v2, v2

    cmpl-double v2, v0, v2

    if-lez v2, :cond_1

    .line 203
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Final position of the spring cannot be greater than the max value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Incomplete SpringAnimation: Either final position or a spring force needs to be set."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_1
    iget v2, p0, Landroid/support/a/a;->agI:F

    float-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 206
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Final position of the spring cannot be less than the min value."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :cond_2
    return-void
.end method


# virtual methods
.method atU(FF)Z
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    invoke-virtual {v0, p1, p2}, Landroid/support/a/c;->aun(FF)Z

    move-result v0

    return v0
.end method

.method public atV()Landroid/support/a/c;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    return-object v0
.end method

.method public atX(F)V
    .locals 1

    .prologue
    .line 152
    invoke-virtual {p0}, Landroid/support/a/a;->auk()Z

    move-result v0

    if-nez v0, :cond_0

    .line 155
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    if-eqz v0, :cond_1

    .line 158
    :goto_0
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    invoke-virtual {v0, p1}, Landroid/support/a/c;->aup(F)Landroid/support/a/c;

    .line 159
    invoke-virtual {p0}, Landroid/support/a/a;->start()V

    .line 161
    :goto_1
    return-void

    .line 153
    :cond_0
    iput p1, p0, Landroid/support/a/a;->agC:F

    goto :goto_1

    .line 156
    :cond_1
    new-instance v0, Landroid/support/a/c;

    invoke-direct {v0, p1}, Landroid/support/a/c;-><init>(F)V

    iput-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    goto :goto_0
.end method

.method public atY()Z
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    iget-wide v0, v0, Landroid/support/a/c;->ahe:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method atZ(J)Z
    .locals 9

    .prologue
    .line 215
    iget-boolean v0, p0, Landroid/support/a/a;->agB:Z

    if-nez v0, :cond_0

    .line 226
    iget v0, p0, Landroid/support/a/a;->agC:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 227
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    invoke-virtual {v0}, Landroid/support/a/c;->aur()F

    .line 230
    iget-object v1, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    iget v0, p0, Landroid/support/a/a;->agL:F

    float-to-double v2, v0

    iget v0, p0, Landroid/support/a/a;->mVelocity:F

    float-to-double v4, v0

    const-wide/16 v6, 0x2

    div-long v6, p1, v6

    invoke-virtual/range {v1 .. v7}, Landroid/support/a/c;->auq(DDJ)Landroid/support/a/e;

    move-result-object v0

    .line 231
    iget-object v1, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    iget v2, p0, Landroid/support/a/a;->agC:F

    invoke-virtual {v1, v2}, Landroid/support/a/c;->aup(F)Landroid/support/a/c;

    .line 232
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroid/support/a/a;->agC:F

    .line 234
    iget-object v1, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    iget v2, v0, Landroid/support/a/e;->ahn:F

    float-to-double v2, v2

    iget v0, v0, Landroid/support/a/e;->mVelocity:F

    float-to-double v4, v0

    const-wide/16 v6, 0x2

    div-long v6, p1, v6

    invoke-virtual/range {v1 .. v7}, Landroid/support/a/c;->auq(DDJ)Landroid/support/a/e;

    move-result-object v0

    .line 235
    iget v1, v0, Landroid/support/a/e;->ahn:F

    iput v1, p0, Landroid/support/a/a;->agL:F

    .line 236
    iget v0, v0, Landroid/support/a/e;->mVelocity:F

    iput v0, p0, Landroid/support/a/a;->mVelocity:F

    .line 244
    :goto_0
    iget v0, p0, Landroid/support/a/a;->agL:F

    iget v1, p0, Landroid/support/a/a;->agI:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a;->agL:F

    .line 245
    iget v0, p0, Landroid/support/a/a;->agL:F

    iget v1, p0, Landroid/support/a/a;->agG:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Landroid/support/a/a;->agL:F

    .line 247
    iget v0, p0, Landroid/support/a/a;->agL:F

    iget v1, p0, Landroid/support/a/a;->mVelocity:F

    invoke-virtual {p0, v0, v1}, Landroid/support/a/a;->atU(FF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 252
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_0
    iget v0, p0, Landroid/support/a/a;->agC:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    iget v1, p0, Landroid/support/a/a;->agC:F

    invoke-virtual {v0, v1}, Landroid/support/a/c;->aup(F)Landroid/support/a/c;

    .line 218
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    iput v0, p0, Landroid/support/a/a;->agC:F

    .line 220
    :cond_1
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    invoke-virtual {v0}, Landroid/support/a/c;->aur()F

    move-result v0

    iput v0, p0, Landroid/support/a/a;->agL:F

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/a;->mVelocity:F

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/a/a;->agB:Z

    .line 223
    const/4 v0, 0x1

    return v0

    .line 239
    :cond_2
    iget-object v1, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    iget v0, p0, Landroid/support/a/a;->agL:F

    float-to-double v2, v0

    iget v0, p0, Landroid/support/a/a;->mVelocity:F

    float-to-double v4, v0

    move-wide v6, p1

    invoke-virtual/range {v1 .. v7}, Landroid/support/a/c;->auq(DDJ)Landroid/support/a/e;

    move-result-object v0

    .line 240
    iget v1, v0, Landroid/support/a/e;->ahn:F

    iput v1, p0, Landroid/support/a/a;->agL:F

    .line 241
    iget v0, v0, Landroid/support/a/e;->mVelocity:F

    iput v0, p0, Landroid/support/a/a;->mVelocity:F

    goto :goto_0

    .line 248
    :cond_3
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    invoke-virtual {v0}, Landroid/support/a/c;->aur()F

    move-result v0

    iput v0, p0, Landroid/support/a/a;->agL:F

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/a/a;->mVelocity:F

    .line 250
    const/4 v0, 0x1

    return v0
.end method

.method public aua(Landroid/support/a/c;)Landroid/support/a/a;
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    .line 129
    return-object p0
.end method

.method public skipToEnd()V
    .locals 2

    .prologue
    .line 173
    invoke-virtual {p0}, Landroid/support/a/a;->atY()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 180
    iget-boolean v0, p0, Landroid/support/a/a;->agT:Z

    if-nez v0, :cond_2

    .line 183
    :goto_0
    return-void

    .line 174
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Spring animations can only come to an end when there is damping"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_1
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string/jumbo v1, "Animations may only be started on the main thread"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 181
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/a/a;->agB:Z

    goto :goto_0
.end method

.method public start()V
    .locals 4

    .prologue
    .line 134
    invoke-direct {p0}, Landroid/support/a/a;->atW()V

    .line 135
    iget-object v0, p0, Landroid/support/a/a;->agA:Landroid/support/a/c;

    invoke-virtual {p0}, Landroid/support/a/a;->auj()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/support/a/c;->aut(D)V

    .line 136
    invoke-super {p0}, Landroid/support/a/b;->start()V

    .line 137
    return-void
.end method
