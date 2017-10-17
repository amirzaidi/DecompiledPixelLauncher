.class Landroid/support/v7/widget/K;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field PX:Landroid/support/v7/widget/af;

.field final PY:Landroid/support/v7/widget/J;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/J;)V
    .locals 1

    .prologue
    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    iput-object p1, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    .line 132
    new-instance v0, Landroid/support/v7/widget/af;

    invoke-direct {v0}, Landroid/support/v7/widget/af;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    .line 133
    return-void
.end method


# virtual methods
.method ZM(IIII)Landroid/view/View;
    .locals 8

    .prologue
    .line 216
    iget-object v0, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    invoke-interface {v0}, Landroid/support/v7/widget/J;->ZJ()I

    move-result v3

    .line 217
    iget-object v0, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    invoke-interface {v0}, Landroid/support/v7/widget/J;->ZI()I

    move-result v4

    .line 218
    if-gt p2, p1, :cond_0

    const/4 v0, -0x1

    .line 219
    :goto_0
    const/4 v1, 0x0

    .line 220
    :goto_1
    if-ne p1, p2, :cond_1

    .line 241
    return-object v1

    .line 218
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 221
    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    invoke-interface {v2, p1}, Landroid/support/v7/widget/J;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 222
    iget-object v5, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    invoke-interface {v5, v2}, Landroid/support/v7/widget/J;->ZK(Landroid/view/View;)I

    move-result v5

    .line 223
    iget-object v6, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    invoke-interface {v6, v2}, Landroid/support/v7/widget/J;->ZL(Landroid/view/View;)I

    move-result v6

    .line 224
    iget-object v7, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v7, v3, v4, v5, v6}, Landroid/support/v7/widget/af;->setBounds(IIII)V

    .line 225
    if-nez p3, :cond_4

    .line 233
    :cond_2
    if-nez p4, :cond_5

    .line 220
    :cond_3
    :goto_2
    add-int/2addr p1, v0

    goto :goto_1

    .line 226
    :cond_4
    iget-object v5, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v5}, Landroid/support/v7/widget/af;->abi()V

    .line 227
    iget-object v5, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v5, p3}, Landroid/support/v7/widget/af;->addFlags(I)V

    .line 228
    iget-object v5, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v5}, Landroid/support/v7/widget/af;->abj()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 230
    return-object v2

    .line 234
    :cond_5
    iget-object v5, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v5}, Landroid/support/v7/widget/af;->abi()V

    .line 235
    iget-object v5, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v5, p4}, Landroid/support/v7/widget/af;->addFlags(I)V

    .line 236
    iget-object v5, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v5}, Landroid/support/v7/widget/af;->abj()Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v1, v2

    .line 237
    goto :goto_2
.end method

.method ZN(Landroid/view/View;I)Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 251
    iget-object v0, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    iget-object v1, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    invoke-interface {v1}, Landroid/support/v7/widget/J;->ZJ()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    invoke-interface {v2}, Landroid/support/v7/widget/J;->ZI()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    .line 252
    invoke-interface {v3, p1}, Landroid/support/v7/widget/J;->ZK(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Landroid/support/v7/widget/K;->PY:Landroid/support/v7/widget/J;

    invoke-interface {v4, p1}, Landroid/support/v7/widget/J;->ZL(Landroid/view/View;)I

    move-result v4

    .line 251
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/widget/af;->setBounds(IIII)V

    .line 253
    if-nez p2, :cond_0

    .line 258
    return v5

    .line 254
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->abi()V

    .line 255
    iget-object v0, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v0, p2}, Landroid/support/v7/widget/af;->addFlags(I)V

    .line 256
    iget-object v0, p0, Landroid/support/v7/widget/K;->PX:Landroid/support/v7/widget/af;

    invoke-virtual {v0}, Landroid/support/v7/widget/af;->abj()Z

    move-result v0

    return v0
.end method
