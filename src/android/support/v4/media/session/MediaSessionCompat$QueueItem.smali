.class public final Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private adZ:Ljava/lang/Object;

.field private final aea:Landroid/support/v4/media/MediaDescriptionCompat;

.field private final aeb:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1610
    new-instance v0, Landroid/support/v4/media/session/k;

    invoke-direct {v0}, Landroid/support/v4/media/session/k;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    .line 1519
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1520
    sget-object v0, Landroid/support/v4/media/MediaDescriptionCompat;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/MediaDescriptionCompat;

    iput-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->aea:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1521
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->aeb:J

    .line 1522
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V
    .locals 3

    .prologue
    .line 1507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1508
    if-eqz p2, :cond_0

    .line 1511
    const-wide/16 v0, -0x1

    cmp-long v0, p3, v0

    if-nez v0, :cond_1

    .line 1512
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Id cannot be QueueItem.UNKNOWN_ID"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1509
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Description cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1514
    :cond_1
    iput-object p2, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->aea:Landroid/support/v4/media/MediaDescriptionCompat;

    .line 1515
    iput-wide p3, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->aeb:J

    .line 1516
    iput-object p1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->adZ:Ljava/lang/Object;

    .line 1517
    return-void
.end method

.method public static arF(Ljava/util/List;)Ljava/util/List;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1600
    if-nez p0, :cond_1

    .line 1601
    :cond_0
    return-object v2

    .line 1600
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1603
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1604
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1607
    return-object v0

    .line 1604
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1605
    invoke-static {v2}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->arG(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static arG(Ljava/lang/Object;)Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 1579
    if-nez p0, :cond_1

    .line 1580
    :cond_0
    return-object v2

    .line 1579
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 1582
    invoke-static {p0}, Landroid/support/v4/media/session/u;->arL(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1583
    invoke-static {v0}, Landroid/support/v4/media/MediaDescriptionCompat;->asB(Ljava/lang/Object;)Landroid/support/v4/media/MediaDescriptionCompat;

    move-result-object v0

    .line 1585
    invoke-static {p0}, Landroid/support/v4/media/session/u;->arM(Ljava/lang/Object;)J

    move-result-wide v2

    .line 1586
    new-instance v1, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;

    invoke-direct {v1, p0, v0, v2, v3}, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;-><init>(Ljava/lang/Object;Landroid/support/v4/media/MediaDescriptionCompat;J)V

    return-object v1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 1546
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MediaSession.QueueItem {Description="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->aea:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->aeb:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    .line 1540
    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->aea:Landroid/support/v4/media/MediaDescriptionCompat;

    invoke-virtual {v0, p1, p2}, Landroid/support/v4/media/MediaDescriptionCompat;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1541
    iget-wide v0, p0, Landroid/support/v4/media/session/MediaSessionCompat$QueueItem;->aeb:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1542
    return-void
.end method
