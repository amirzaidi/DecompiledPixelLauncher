.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final aeA:I

.field final aeB:Ljava/lang/CharSequence;

.field final aeC:I

.field final aeD:Z

.field final aeE:Ljava/util/ArrayList;

.field final aeF:Ljava/util/ArrayList;

.field final aeG:I

.field final aev:Ljava/lang/CharSequence;

.field final aew:[I

.field final aex:I

.field final aey:I

.field final aez:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Landroid/support/v4/app/O;

    invoke-direct {v0}, Landroid/support/v4/app/O;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aey:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aex:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aez:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aeG:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aeA:I

    .line 85
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aeB:Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aeC:I

    .line 87
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aev:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aeE:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aeF:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackState;->aeD:Z

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/V;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v1, p1, Landroid/support/v4/app/V;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 49
    mul-int/lit8 v1, v3, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    .line 51
    iget-boolean v1, p1, Landroid/support/v4/app/V;->aaz:Z

    if-eqz v1, :cond_0

    move v2, v0

    move v1, v0

    .line 56
    :goto_0
    if-lt v2, v3, :cond_1

    .line 65
    iget v0, p1, Landroid/support/v4/app/V;->aaC:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aey:I

    .line 66
    iget v0, p1, Landroid/support/v4/app/V;->aaB:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aex:I

    .line 67
    iget-object v0, p1, Landroid/support/v4/app/V;->aan:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aez:Ljava/lang/String;

    .line 68
    iget v0, p1, Landroid/support/v4/app/V;->aaq:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aeG:I

    .line 69
    iget v0, p1, Landroid/support/v4/app/V;->aaD:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aeA:I

    .line 70
    iget-object v0, p1, Landroid/support/v4/app/V;->aay:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aeB:Ljava/lang/CharSequence;

    .line 71
    iget v0, p1, Landroid/support/v4/app/V;->aat:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->aeC:I

    .line 72
    iget-object v0, p1, Landroid/support/v4/app/V;->aaA:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aev:Ljava/lang/CharSequence;

    .line 73
    iget-object v0, p1, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aeE:Ljava/util/ArrayList;

    .line 74
    iget-object v0, p1, Landroid/support/v4/app/V;->aav:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->aeF:Ljava/util/ArrayList;

    .line 75
    iget-boolean v0, p1, Landroid/support/v4/app/V;->aao:Z

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackState;->aeD:Z

    .line 76
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_1
    iget-object v0, p1, Landroid/support/v4/app/V;->aaw:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ab;

    .line 58
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroid/support/v4/app/ab;->abH:I

    aput v6, v4, v1

    .line 59
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v6, v5, 0x1

    iget-object v1, v0, Landroid/support/v4/app/ab;->abI:Landroid/support/v4/app/g;

    if-nez v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    aput v1, v4, v5

    .line 60
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v4, v6, 0x1

    iget v5, v0, Landroid/support/v4/app/ab;->abM:I

    aput v5, v1, v6

    .line 61
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v0, Landroid/support/v4/app/ab;->abL:I

    aput v6, v1, v4

    .line 62
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v0, Landroid/support/v4/app/ab;->abJ:I

    aput v6, v1, v5

    .line 63
    iget-object v5, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v1, v4, 0x1

    iget v0, v0, Landroid/support/v4/app/ab;->abK:I

    aput v0, v5, v4

    .line 56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, v0, Landroid/support/v4/app/ab;->abI:Landroid/support/v4/app/g;

    iget v1, v1, Landroid/support/v4/app/g;->Yb:I

    goto :goto_1
.end method


# virtual methods
.method public arJ(Landroid/support/v4/app/aR;)Landroid/support/v4/app/V;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 94
    new-instance v3, Landroid/support/v4/app/V;

    invoke-direct {v3, p1}, Landroid/support/v4/app/V;-><init>(Landroid/support/v4/app/aR;)V

    move v1, v0

    .line 97
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 120
    iget v0, p0, Landroid/support/v4/app/BackStackState;->aey:I

    iput v0, v3, Landroid/support/v4/app/V;->aaC:I

    .line 121
    iget v0, p0, Landroid/support/v4/app/BackStackState;->aex:I

    iput v0, v3, Landroid/support/v4/app/V;->aaB:I

    .line 122
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aez:Ljava/lang/String;

    iput-object v0, v3, Landroid/support/v4/app/V;->aan:Ljava/lang/String;

    .line 123
    iget v0, p0, Landroid/support/v4/app/BackStackState;->aeG:I

    iput v0, v3, Landroid/support/v4/app/V;->aaq:I

    .line 124
    iput-boolean v6, v3, Landroid/support/v4/app/V;->aaz:Z

    .line 125
    iget v0, p0, Landroid/support/v4/app/BackStackState;->aeA:I

    iput v0, v3, Landroid/support/v4/app/V;->aaD:I

    .line 126
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aeB:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroid/support/v4/app/V;->aay:Ljava/lang/CharSequence;

    .line 127
    iget v0, p0, Landroid/support/v4/app/BackStackState;->aeC:I

    iput v0, v3, Landroid/support/v4/app/V;->aat:I

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aev:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroid/support/v4/app/V;->aaA:Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aeE:Ljava/util/ArrayList;

    iput-object v0, v3, Landroid/support/v4/app/V;->aau:Ljava/util/ArrayList;

    .line 130
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aeF:Ljava/util/ArrayList;

    iput-object v0, v3, Landroid/support/v4/app/V;->aav:Ljava/util/ArrayList;

    .line 131
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackState;->aeD:Z

    iput-boolean v0, v3, Landroid/support/v4/app/V;->aao:Z

    .line 132
    invoke-virtual {v3, v6}, Landroid/support/v4/app/V;->anu(I)V

    .line 133
    return-object v3

    .line 98
    :cond_0
    new-instance v4, Landroid/support/v4/app/ab;

    invoke-direct {v4}, Landroid/support/v4/app/ab;-><init>()V

    .line 99
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v5, v0, 0x1

    aget v0, v2, v0

    iput v0, v4, Landroid/support/v4/app/ab;->abH:I

    .line 100
    sget-boolean v0, Landroid/support/v4/app/aR;->DEBUG:Z

    if-nez v0, :cond_1

    .line 102
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    .line 103
    if-gez v0, :cond_2

    .line 107
    const/4 v0, 0x0

    iput-object v0, v4, Landroid/support/v4/app/ab;->abI:Landroid/support/v4/app/g;

    .line 109
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroid/support/v4/app/ab;->abM:I

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Landroid/support/v4/app/ab;->abL:I

    .line 111
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroid/support/v4/app/ab;->abJ:I

    .line 112
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Landroid/support/v4/app/ab;->abK:I

    .line 113
    iget v0, v4, Landroid/support/v4/app/ab;->abM:I

    iput v0, v3, Landroid/support/v4/app/V;->aaE:I

    .line 114
    iget v0, v4, Landroid/support/v4/app/ab;->abL:I

    iput v0, v3, Landroid/support/v4/app/V;->aal:I

    .line 115
    iget v0, v4, Landroid/support/v4/app/ab;->abJ:I

    iput v0, v3, Landroid/support/v4/app/V;->aam:I

    .line 116
    iget v0, v4, Landroid/support/v4/app/ab;->abK:I

    iput v0, v3, Landroid/support/v4/app/V;->aax:I

    .line 117
    invoke-virtual {v3, v4}, Landroid/support/v4/app/V;->anB(Landroid/support/v4/app/ab;)V

    .line 118
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v2

    .line 119
    goto/16 :goto_0

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Instantiate "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " op #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, " base fragment #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    aget v2, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 104
    :cond_2
    iget-object v5, p1, Landroid/support/v4/app/aR;->adO:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/g;

    .line 105
    iput-object v0, v4, Landroid/support/v4/app/ab;->abI:Landroid/support/v4/app/g;

    goto :goto_2
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aew:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    iget v1, p0, Landroid/support/v4/app/BackStackState;->aey:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v1, p0, Landroid/support/v4/app/BackStackState;->aex:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aez:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v1, p0, Landroid/support/v4/app/BackStackState;->aeG:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v1, p0, Landroid/support/v4/app/BackStackState;->aeA:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aeB:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    iget v1, p0, Landroid/support/v4/app/BackStackState;->aeC:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aev:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 152
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aeE:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 153
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->aeF:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    iget-boolean v1, p0, Landroid/support/v4/app/BackStackState;->aeD:Z

    if-nez v1, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void

    .line 154
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
