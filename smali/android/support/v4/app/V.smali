.class public final Landroid/support/v4/app/V;
.super Landroid/support/v4/app/at;
.source "SourceFile"


# static fields
.field private static final Zd:Landroid/support/v4/app/aL;

.field public static final Zi:Landroid/support/v4/app/aQ;


# instance fields
.field private final Zc:Ljava/util/Set;

.field private final Ze:Z

.field private final Zf:Landroid/os/Bundle;

.field private final Zg:[Ljava/lang/CharSequence;

.field private final Zh:Ljava/lang/CharSequence;

.field private final Zj:Ljava/lang/String;


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
    new-instance v0, Landroid/support/v4/app/aB;

    invoke-direct {v0}, Landroid/support/v4/app/aB;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->Zd:Landroid/support/v4/app/aL;

    .line 405
    :goto_0
    new-instance v0, Landroid/support/v4/app/ao;

    invoke-direct {v0}, Landroid/support/v4/app/ao;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->Zi:Landroid/support/v4/app/aQ;

    return-void

    .line 395
    :cond_0
    new-instance v0, Landroid/support/v4/app/k;

    invoke-direct {v0}, Landroid/support/v4/app/k;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->Zd:Landroid/support/v4/app/aL;

    goto :goto_0

    .line 397
    :cond_1
    new-instance v0, Landroid/support/v4/app/au;

    invoke-direct {v0}, Landroid/support/v4/app/au;-><init>()V

    sput-object v0, Landroid/support/v4/app/V;->Zd:Landroid/support/v4/app/aL;

    goto :goto_0
.end method


# virtual methods
.method public amq()Ljava/util/Set;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Landroid/support/v4/app/V;->Zc:Ljava/util/Set;

    return-object v0
.end method

.method public amr()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Landroid/support/v4/app/V;->Zj:Ljava/lang/String;

    return-object v0
.end method

.method public ams()Z
    .locals 1

    .prologue
    .line 116
    iget-boolean v0, p0, Landroid/support/v4/app/V;->Ze:Z

    return v0
.end method

.method public amt()[Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Landroid/support/v4/app/V;->Zg:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/v4/app/V;->Zf:Landroid/os/Bundle;

    return-object v0
.end method

.method public getLabel()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Landroid/support/v4/app/V;->Zh:Ljava/lang/CharSequence;

    return-object v0
.end method
