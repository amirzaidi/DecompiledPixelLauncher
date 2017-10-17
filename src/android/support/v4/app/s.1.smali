.class Landroid/support/v4/app/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/aC;


# instance fields
.field final synthetic Zs:Landroid/support/v4/app/aR;

.field final Zt:Ljava/lang/String;

.field final Zu:I

.field final mFlags:I


# direct methods
.method constructor <init>(Landroid/support/v4/app/aR;Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 3764
    iput-object p1, p0, Landroid/support/v4/app/s;->Zs:Landroid/support/v4/app/aR;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3765
    iput-object p2, p0, Landroid/support/v4/app/s;->Zt:Ljava/lang/String;

    .line 3766
    iput p3, p0, Landroid/support/v4/app/s;->Zu:I

    .line 3767
    iput p4, p0, Landroid/support/v4/app/s;->mFlags:I

    .line 3768
    return-void
.end method


# virtual methods
.method public alK(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 3773
    iget-object v0, p0, Landroid/support/v4/app/s;->Zs:Landroid/support/v4/app/aR;

    iget-object v0, v0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    if-nez v0, :cond_1

    .line 3783
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/s;->Zs:Landroid/support/v4/app/aR;

    iget-object v3, p0, Landroid/support/v4/app/s;->Zt:Ljava/lang/String;

    iget v4, p0, Landroid/support/v4/app/s;->Zu:I

    iget v5, p0, Landroid/support/v4/app/s;->mFlags:I

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/aR;->aqZ(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 3773
    :cond_1
    iget v0, p0, Landroid/support/v4/app/s;->Zu:I

    if-gez v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/s;->Zt:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3776
    iget-object v0, p0, Landroid/support/v4/app/s;->Zs:Landroid/support/v4/app/aR;

    iget-object v0, v0, Landroid/support/v4/app/aR;->adM:Landroid/support/v4/app/g;

    invoke-virtual {v0}, Landroid/support/v4/app/g;->akG()Landroid/support/v4/app/aW;

    move-result-object v0

    .line 3777
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/app/aW;->apn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3780
    return v1
.end method
