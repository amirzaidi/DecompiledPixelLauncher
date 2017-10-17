.class public Landroid/support/v4/app/aO;
.super Landroid/support/v4/app/T;
.source "SourceFile"


# static fields
.field public static final adj:Landroid/support/v4/app/K;


# instance fields
.field private final adi:[Landroid/support/v4/app/W;

.field public adk:Landroid/app/PendingIntent;

.field final adl:Landroid/os/Bundle;

.field private final adm:[Landroid/support/v4/app/W;

.field private adn:Z

.field public icon:I

.field public title:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 3597
    new-instance v0, Landroid/support/v4/app/aB;

    invoke-direct {v0}, Landroid/support/v4/app/aB;-><init>()V

    sput-object v0, Landroid/support/v4/app/aO;->adj:Landroid/support/v4/app/K;

    return-void
.end method


# virtual methods
.method public ang()[Landroid/support/v4/app/W;
    .locals 1

    .prologue
    .line 3191
    iget-object v0, p0, Landroid/support/v4/app/aO;->adm:[Landroid/support/v4/app/W;

    return-object v0
.end method

.method public bridge synthetic ang()[Landroid/support/v4/app/as;
    .locals 1

    .prologue
    .line 3104
    invoke-virtual {p0}, Landroid/support/v4/app/aO;->ang()[Landroid/support/v4/app/W;

    move-result-object v0

    return-object v0
.end method

.method public anh()Z
    .locals 1

    .prologue
    .line 3181
    iget-boolean v0, p0, Landroid/support/v4/app/aO;->adn:Z

    return v0
.end method

.method public ani()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 3164
    iget-object v0, p0, Landroid/support/v4/app/aO;->adk:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public anj()[Landroid/support/v4/app/W;
    .locals 1

    .prologue
    .line 3206
    iget-object v0, p0, Landroid/support/v4/app/aO;->adi:[Landroid/support/v4/app/W;

    return-object v0
.end method

.method public bridge synthetic anj()[Landroid/support/v4/app/as;
    .locals 1

    .prologue
    .line 3104
    invoke-virtual {p0}, Landroid/support/v4/app/aO;->anj()[Landroid/support/v4/app/W;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 3172
    iget-object v0, p0, Landroid/support/v4/app/aO;->adl:Landroid/os/Bundle;

    return-object v0
.end method

.method public getIcon()I
    .locals 1

    .prologue
    .line 3154
    iget v0, p0, Landroid/support/v4/app/aO;->icon:I

    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 3159
    iget-object v0, p0, Landroid/support/v4/app/aO;->title:Ljava/lang/CharSequence;

    return-object v0
.end method
