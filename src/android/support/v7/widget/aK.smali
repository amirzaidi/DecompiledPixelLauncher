.class Landroid/support/v7/widget/aK;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field SO:I

.field SP:Ljava/lang/Object;

.field SQ:I

.field SR:I


# direct methods
.method constructor <init>(IIILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 650
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 651
    iput p1, p0, Landroid/support/v7/widget/aK;->SO:I

    .line 652
    iput p2, p0, Landroid/support/v7/widget/aK;->SQ:I

    .line 653
    iput p3, p0, Landroid/support/v7/widget/aK;->SR:I

    .line 654
    iput-object p4, p0, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    .line 655
    return-void
.end method


# virtual methods
.method acp()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget v0, p0, Landroid/support/v7/widget/aK;->SO:I

    packed-switch v0, :pswitch_data_0

    .line 668
    :pswitch_0
    const-string/jumbo v0, "??"

    return-object v0

    .line 660
    :pswitch_1
    const-string/jumbo v0, "add"

    return-object v0

    .line 662
    :pswitch_2
    const-string/jumbo v0, "rm"

    return-object v0

    .line 664
    :pswitch_3
    const-string/jumbo v0, "up"

    return-object v0

    .line 666
    :pswitch_4
    const-string/jumbo v0, "mv"

    return-object v0

    .line 658
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 680
    if-eq p0, p1, :cond_1

    .line 683
    if-nez p1, :cond_2

    .line 684
    :cond_0
    return v2

    .line 681
    :cond_1
    return v3

    .line 683
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 687
    check-cast p1, Landroid/support/v7/widget/aK;

    .line 689
    iget v0, p0, Landroid/support/v7/widget/aK;->SO:I

    iget v1, p1, Landroid/support/v7/widget/aK;->SO:I

    if-ne v0, v1, :cond_5

    .line 692
    iget v0, p0, Landroid/support/v7/widget/aK;->SO:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_6

    .line 698
    :cond_3
    iget v0, p0, Landroid/support/v7/widget/aK;->SR:I

    iget v1, p1, Landroid/support/v7/widget/aK;->SR:I

    if-ne v0, v1, :cond_7

    .line 701
    iget v0, p0, Landroid/support/v7/widget/aK;->SQ:I

    iget v1, p1, Landroid/support/v7/widget/aK;->SQ:I

    if-ne v0, v1, :cond_8

    .line 704
    iget-object v0, p0, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    if-nez v0, :cond_9

    .line 708
    iget-object v0, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    if-nez v0, :cond_a

    .line 712
    :cond_4
    return v3

    .line 690
    :cond_5
    return v2

    .line 692
    :cond_6
    iget v0, p0, Landroid/support/v7/widget/aK;->SR:I

    iget v1, p0, Landroid/support/v7/widget/aK;->SQ:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    .line 694
    iget v0, p0, Landroid/support/v7/widget/aK;->SR:I

    iget v1, p1, Landroid/support/v7/widget/aK;->SQ:I

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/aK;->SQ:I

    iget v1, p1, Landroid/support/v7/widget/aK;->SR:I

    if-ne v0, v1, :cond_3

    .line 695
    return v3

    .line 699
    :cond_7
    return v2

    .line 702
    :cond_8
    return v2

    .line 705
    :cond_9
    iget-object v0, p0, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    iget-object v1, p1, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 706
    return v2

    .line 709
    :cond_a
    return v2
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 717
    iget v0, p0, Landroid/support/v7/widget/aK;->SO:I

    .line 718
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/widget/aK;->SQ:I

    add-int/2addr v0, v1

    .line 719
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Landroid/support/v7/widget/aK;->SR:I

    add-int/2addr v0, v1

    .line 720
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 674
    invoke-virtual {p0}, Landroid/support/v7/widget/aK;->acp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",s:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/aK;->SQ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v7/widget/aK;->SR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ",p:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/aK;->SP:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
