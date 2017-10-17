.class Landroid/support/v7/widget/aq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static TT:Landroid/support/v4/a/j;


# instance fields
.field TS:Landroid/support/v7/widget/E;

.field TU:Landroid/support/v7/widget/E;

.field TV:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 305
    new-instance v0, Landroid/support/v4/a/d;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/support/v4/a/d;-><init>(I)V

    sput-object v0, Landroid/support/v7/widget/aq;->TT:Landroid/support/v4/a/j;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    return-void
.end method

.method static acA(Landroid/support/v7/widget/aq;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 316
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/aq;->TV:I

    .line 317
    iput-object v1, p0, Landroid/support/v7/widget/aq;->TS:Landroid/support/v7/widget/E;

    .line 318
    iput-object v1, p0, Landroid/support/v7/widget/aq;->TU:Landroid/support/v7/widget/E;

    .line 319
    sget-object v0, Landroid/support/v7/widget/aq;->TT:Landroid/support/v4/a/j;

    invoke-interface {v0, p0}, Landroid/support/v4/a/j;->aip(Ljava/lang/Object;)Z

    .line 320
    return-void
.end method

.method static acB()Landroid/support/v7/widget/aq;
    .locals 1

    .prologue
    .line 311
    sget-object v0, Landroid/support/v7/widget/aq;->TT:Landroid/support/v4/a/j;

    invoke-interface {v0}, Landroid/support/v4/a/j;->air()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/aq;

    .line 312
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/widget/aq;

    invoke-direct {v0}, Landroid/support/v7/widget/aq;-><init>()V

    goto :goto_0
.end method

.method static acC()V
    .locals 1

    .prologue
    .line 324
    :cond_0
    sget-object v0, Landroid/support/v7/widget/aq;->TT:Landroid/support/v4/a/j;

    invoke-interface {v0}, Landroid/support/v4/a/j;->air()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 325
    return-void
.end method
