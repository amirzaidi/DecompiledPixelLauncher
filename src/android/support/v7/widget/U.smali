.class public abstract Landroid/support/v7/widget/U;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected final Sh:Landroid/support/v7/widget/p;

.field final Si:Landroid/graphics/Rect;

.field private Sj:I


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/p;)V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/high16 v0, -0x80000000

    iput v0, p0, Landroid/support/v7/widget/U;->Sj:I

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/U;->Si:Landroid/graphics/Rect;

    .line 48
    iput-object p1, p0, Landroid/support/v7/widget/U;->Sh:Landroid/support/v7/widget/p;

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/p;Landroid/support/v7/widget/ar;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/widget/U;-><init>(Landroid/support/v7/widget/p;)V

    return-void
.end method

.method public static abg(Landroid/support/v7/widget/p;)Landroid/support/v7/widget/U;
    .locals 1

    .prologue
    .line 349
    new-instance v0, Landroid/support/v7/widget/aj;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/aj;-><init>(Landroid/support/v7/widget/p;)V

    return-object v0
.end method

.method public static abq(Landroid/support/v7/widget/p;)Landroid/support/v7/widget/U;
    .locals 1

    .prologue
    .line 251
    new-instance v0, Landroid/support/v7/widget/ar;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/ar;-><init>(Landroid/support/v7/widget/p;)V

    return-object v0
.end method

.method public static abs(Landroid/support/v7/widget/p;I)Landroid/support/v7/widget/U;
    .locals 2

    .prologue
    .line 234
    packed-switch p1, :pswitch_data_0

    .line 240
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 236
    :pswitch_0
    invoke-static {p0}, Landroid/support/v7/widget/U;->abq(Landroid/support/v7/widget/p;)Landroid/support/v7/widget/U;

    move-result-object v0

    return-object v0

    .line 238
    :pswitch_1
    invoke-static {p0}, Landroid/support/v7/widget/U;->abg(Landroid/support/v7/widget/p;)Landroid/support/v7/widget/U;

    move-result-object v0

    return-object v0

    .line 234
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public abstract abe(Landroid/view/View;)I
.end method

.method public abstract abf()I
.end method

.method public abstract abh(Landroid/view/View;)I
.end method

.method public abstract abi(Landroid/view/View;)I
.end method

.method public abstract abj()I
.end method

.method public abstract abk(Landroid/view/View;)I
.end method

.method public abstract abl(Landroid/view/View;)I
.end method

.method public abstract abm()I
.end method

.method public abstract abn()I
.end method

.method public abstract abo()I
.end method

.method public abstract abp()I
.end method

.method public abr()I
    .locals 2

    .prologue
    .line 71
    iget v0, p0, Landroid/support/v7/widget/U;->Sj:I

    const/high16 v1, -0x80000000

    if-eq v1, v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/U;->abj()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/U;->Sj:I

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract abt(Landroid/view/View;)I
.end method

.method public abstract abu()I
.end method

.method public abstract abv(I)V
.end method

.method public abw()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Landroid/support/v7/widget/U;->abj()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/U;->Sj:I

    .line 58
    return-void
.end method
