.class public final Landroid/support/v4/media/session/PlaybackStateCompat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final aff:J

.field final afg:J

.field final afh:J

.field final afi:Landroid/os/Bundle;

.field afj:Ljava/util/List;

.field final afk:J

.field final afl:I

.field private afm:Ljava/lang/Object;

.field final afn:Ljava/lang/CharSequence;

.field final afo:J

.field final afp:F

.field final mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 827
    new-instance v0, Landroid/support/v4/media/session/d;

    invoke-direct {v0}, Landroid/support/v4/media/session/d;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 533
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 534
    iput p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 535
    iput-wide p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afo:J

    .line 536
    iput-wide p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afg:J

    .line 537
    iput p6, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afp:F

    .line 538
    iput-wide p7, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->aff:J

    .line 539
    iput p9, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afl:I

    .line 540
    iput-object p10, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afn:Ljava/lang/CharSequence;

    .line 541
    iput-wide p11, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afh:J

    .line 542
    new-instance v2, Ljava/util/ArrayList;

    move-object/from16 v0, p13

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afj:Ljava/util/List;

    .line 543
    move-wide/from16 v0, p14

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afk:J

    .line 544
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afi:Landroid/os/Bundle;

    .line 545
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afo:J

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afp:F

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afh:J

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afg:J

    .line 553
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->aff:J

    .line 554
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afn:Ljava/lang/CharSequence;

    .line 555
    sget-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afj:Ljava/util/List;

    .line 556
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afk:J

    .line 557
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afi:Landroid/os/Bundle;

    .line 559
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afl:I

    .line 560
    return-void
.end method

.method public static asM(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat;
    .locals 19

    .prologue
    .line 761
    if-nez p0, :cond_1

    .line 791
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 761
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 762
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asG(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 763
    const/4 v15, 0x0

    .line 764
    if-nez v2, :cond_3

    .line 771
    :cond_2
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x16

    if-ge v2, v3, :cond_4

    .line 774
    const/16 v18, 0x0

    .line 776
    :goto_0
    new-instance v2, Landroid/support/v4/media/session/PlaybackStateCompat;

    .line 777
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asL(Ljava/lang/Object;)I

    move-result v3

    .line 778
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asD(Ljava/lang/Object;)J

    move-result-wide v4

    .line 779
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asF(Ljava/lang/Object;)J

    move-result-wide v6

    .line 780
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asE(Ljava/lang/Object;)F

    move-result v8

    .line 781
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asK(Ljava/lang/Object;)J

    move-result-wide v9

    const/4 v11, 0x0

    .line 783
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asJ(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 784
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asH(Ljava/lang/Object;)J

    move-result-wide v13

    .line 786
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/f;->asI(Ljava/lang/Object;)J

    move-result-wide v16

    invoke-direct/range {v2 .. v18}, Landroid/support/v4/media/session/PlaybackStateCompat;-><init>(IJJFJILjava/lang/CharSequence;JLjava/util/List;JLandroid/os/Bundle;)V

    .line 788
    move-object/from16 v0, p0

    iput-object v0, v2, Landroid/support/v4/media/session/PlaybackStateCompat;->afm:Ljava/lang/Object;

    .line 789
    return-object v2

    .line 765
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v15, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 766
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 767
    invoke-static {v3}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->asY(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    move-result-object v3

    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 772
    :cond_4
    invoke-static/range {p0 .. p0}, Landroid/support/v4/media/session/i;->asN(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v18

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 581
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PlaybackState {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 565
    const-string/jumbo v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 566
    const-string/jumbo v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afo:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 567
    const-string/jumbo v1, ", buffered position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afg:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 568
    const-string/jumbo v1, ", speed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afp:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 569
    const-string/jumbo v1, ", updated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afh:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 570
    const-string/jumbo v1, ", actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->aff:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 571
    const-string/jumbo v1, ", error code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 572
    const-string/jumbo v1, ", error message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afn:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 573
    const-string/jumbo v1, ", custom actions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afj:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 574
    const-string/jumbo v1, ", active item id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afk:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 575
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 586
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->mState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 587
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afo:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 588
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afp:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 589
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afh:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 590
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afg:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 591
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->aff:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 592
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afn:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 593
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afj:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 594
    iget-wide v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afk:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 595
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afi:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 597
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat;->afl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 598
    return-void
.end method
