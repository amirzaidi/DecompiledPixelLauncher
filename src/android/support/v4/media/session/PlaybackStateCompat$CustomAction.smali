.class public final Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final afA:Landroid/os/Bundle;

.field private afB:Ljava/lang/Object;

.field private final afx:Ljava/lang/String;

.field private final afy:I

.field private final afz:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 928
    new-instance v0, Landroid/support/v4/media/session/k;

    invoke-direct {v0}, Landroid/support/v4/media/session/k;-><init>()V

    sput-object v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 863
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 864
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afx:Ljava/lang/String;

    .line 865
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afz:Ljava/lang/CharSequence;

    .line 866
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afy:I

    .line 867
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afA:Landroid/os/Bundle;

    .line 868
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-object p1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afx:Ljava/lang/String;

    .line 858
    iput-object p2, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afz:Ljava/lang/CharSequence;

    .line 859
    iput p3, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afy:I

    .line 860
    iput-object p4, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afA:Landroid/os/Bundle;

    .line 861
    return-void
.end method

.method public static asY(Ljava/lang/Object;)Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 895
    if-nez p0, :cond_1

    .line 896
    :cond_0
    return-object v2

    .line 895
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 899
    new-instance v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;

    .line 900
    invoke-static {p0}, Landroid/support/v4/media/session/a;->asw(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 901
    invoke-static {p0}, Landroid/support/v4/media/session/a;->asx(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 902
    invoke-static {p0}, Landroid/support/v4/media/session/a;->asv(Ljava/lang/Object;)I

    move-result v3

    .line 903
    invoke-static {p0}, Landroid/support/v4/media/session/a;->asu(Ljava/lang/Object;)Landroid/os/Bundle;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILandroid/os/Bundle;)V

    .line 904
    iput-object p0, v0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afB:Ljava/lang/Object;

    .line 905
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 880
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Action:mName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afz:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afA:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 872
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afx:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 873
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afz:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 874
    iget v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 875
    iget-object v0, p0, Landroid/support/v4/media/session/PlaybackStateCompat$CustomAction;->afA:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 876
    return-void
.end method
