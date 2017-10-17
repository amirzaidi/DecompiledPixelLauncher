.class public Landroid/support/v4/app/aS;
.super Landroid/support/v4/app/S;
.source "SourceFile"


# static fields
.field public static final abP:Landroid/support/v4/app/J;


# instance fields
.field private final abO:[Landroid/support/v4/app/V;

.field public abQ:Landroid/app/PendingIntent;

.field final abR:Landroid/os/Bundle;

.field private final abS:[Landroid/support/v4/app/V;

.field private abT:Z

.field public icon:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3057
    new-instance v0, Landroid/support/v4/app/aE;

    invoke-direct {v0}, Landroid/support/v4/app/aE;-><init>()V

    sput-object v0, Landroid/support/v4/app/aS;->abP:Landroid/support/v4/app/J;

    return-void
.end method


# virtual methods
.method public alR()[Landroid/support/v4/app/V;
    .locals 1

    .prologue
    .line 2651
    iget-object v0, p0, Landroid/support/v4/app/aS;->abS:[Landroid/support/v4/app/V;

    return-object v0
.end method

.method public bridge synthetic alR()[Landroid/support/v4/app/at;
    .locals 1

    .prologue
    .line 2564
    invoke-virtual {p0}, Landroid/support/v4/app/aS;->alR()[Landroid/support/v4/app/V;

    move-result-object v0

    return-object v0
.end method

.method public alS()Z
    .locals 1

    .prologue
    .line 2641
    iget-boolean v0, p0, Landroid/support/v4/app/aS;->abT:Z

    return v0
.end method

.method public alT()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 2624
    iget-object v0, p0, Landroid/support/v4/app/aS;->abQ:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public alU()[Landroid/support/v4/app/V;
    .locals 1

    .prologue
    .line 2666
    iget-object v0, p0, Landroid/support/v4/app/aS;->abO:[Landroid/support/v4/app/V;

    return-object v0
.end method

.method public bridge synthetic alU()[Landroid/support/v4/app/at;
    .locals 1

    .prologue
    .line 2564
    invoke-virtual {p0}, Landroid/support/v4/app/aS;->alU()[Landroid/support/v4/app/V;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 2632
    iget-object v0, p0, Landroid/support/v4/app/aS;->abR:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 2614
    iget v0, p0, Landroid/support/v4/app/aS;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 2619
    iget-object v0, p0, Landroid/support/v4/app/aS;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
