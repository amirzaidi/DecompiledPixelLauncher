.class public final Landroid/support/v4/app/W;
.super Landroid/support/v4/app/as;
.source "SourceFile"


# static fields
.field private static final aaI:Landroid/support/v4/app/aH;

.field public static final aaN:Landroid/support/v4/app/aM;


# instance fields
.field private final aaH:Ljava/util/Set;

.field private final aaJ:Z

.field private final aaK:Landroid/os/Bundle;

.field private final aaL:[Ljava/lang/CharSequence;

.field private final aaM:Ljava/lang/CharSequence;

.field private final aaO:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 394
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 396
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 399
    new-instance v0, Landroid/support/v4/app/az;

    invoke-direct {v0}, Landroid/support/v4/app/az;-><init>()V

    sput-object v0, Landroid/support/v4/app/W;->aaI:Landroid/support/v4/app/aH;

    .line 405
    :goto_0
    new-instance v0, Landroid/support/v4/app/an;

    invoke-direct {v0}, Landroid/support/v4/app/an;-><init>()V

    sput-object v0, Landroid/support/v4/app/W;->aaN:Landroid/support/v4/app/aM;

    return-void

    .line 395
    :cond_0
    new-instance v0, Landroid/support/v4/app/m;

    invoke-direct {v0}, Landroid/support/v4/app/m;-><init>()V

    sput-object v0, Landroid/support/v4/app/W;->aaI:Landroid/support/v4/app/aH;

    goto :goto_0

    .line 397
    :cond_1
    new-instance v0, Landroid/support/v4/app/at;

    invoke-direct {v0}, Landroid/support/v4/app/at;-><init>()V

    sput-object v0, Landroid/support/v4/app/W;->aaI:Landroid/support/v4/app/aH;

    goto :goto_0
.end method


# virtual methods
.method public anF()Ljava/util/Set;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/app/W;->aaH:Ljava/util/Set;

    return-object v0
.end method

.method public anG()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/app/W;->aaO:Ljava/lang/String;

    return-object v0
.end method

.method public anH()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/support/v4/app/W;->aaJ:Z

    return v0
.end method

.method public anI()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/app/W;->aaL:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/app/W;->aaK:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/app/W;->aaM:Ljava/lang/CharSequence;

    return-object v0
.end method
