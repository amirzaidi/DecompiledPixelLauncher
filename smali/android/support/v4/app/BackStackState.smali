.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final adb:Ljava/lang/CharSequence;

.field final adc:[I

.field final add:I

.field final ade:I

.field final adf:Ljava/lang/String;

.field final adg:I

.field final adh:Ljava/lang/CharSequence;

.field final adi:I

.field final adj:Z

.field final adk:Ljava/util/ArrayList;

.field final adl:Ljava/util/ArrayList;

.field final adm:I


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

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ade:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->add:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adf:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->adm:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->adg:I

    .line 85
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adh:Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->adi:I

    .line 87
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adb:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adk:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adl:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/BackStackState;->adj:Z

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/U;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v1, p1, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 49
    mul-int/lit8 v1, v3, 0x6

    new-array v1, v1, [I

    iput-object v1, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    .line 51
    iget-boolean v1, p1, Landroid/support/v4/app/U;->YU:Z

    if-eqz v1, :cond_0

    move v2, v0

    move v1, v0

    .line 56
    :goto_0
    if-lt v2, v3, :cond_1

    .line 65
    iget v0, p1, Landroid/support/v4/app/U;->YX:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->ade:I

    .line 66
    iget v0, p1, Landroid/support/v4/app/U;->YW:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->add:I

    .line 67
    iget-object v0, p1, Landroid/support/v4/app/U;->YI:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adf:Ljava/lang/String;

    .line 68
    iget v0, p1, Landroid/support/v4/app/U;->YL:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->adm:I

    .line 69
    iget v0, p1, Landroid/support/v4/app/U;->YY:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->adg:I

    .line 70
    iget-object v0, p1, Landroid/support/v4/app/U;->YT:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adh:Ljava/lang/CharSequence;

    .line 71
    iget v0, p1, Landroid/support/v4/app/U;->YO:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->adi:I

    .line 72
    iget-object v0, p1, Landroid/support/v4/app/U;->YV:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adb:Ljava/lang/CharSequence;

    .line 73
    iget-object v0, p1, Landroid/support/v4/app/U;->YP:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adk:Ljava/util/ArrayList;

    .line 74
    iget-object v0, p1, Landroid/support/v4/app/U;->YQ:Ljava/util/ArrayList;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->adl:Ljava/util/ArrayList;

    .line 75
    iget-boolean v0, p1, Landroid/support/v4/app/U;->YJ:Z

    iput-boolean v0, p0, Landroid/support/v4/app/BackStackState;->adj:Z

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
    iget-object v0, p1, Landroid/support/v4/app/U;->YR:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aa;

    .line 58
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v5, v1, 0x1

    iget v6, v0, Landroid/support/v4/app/aa;->aac:I

    aput v6, v4, v1

    .line 59
    iget-object v4, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v6, v5, 0x1

    iget-object v1, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    if-nez v1, :cond_2

    const/4 v1, -0x1

    :goto_1
    aput v1, v4, v5

    .line 60
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v4, v6, 0x1

    iget v5, v0, Landroid/support/v4/app/aa;->aah:I

    aput v5, v1, v6

    .line 61
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v5, v4, 0x1

    iget v6, v0, Landroid/support/v4/app/aa;->aag:I

    aput v6, v1, v4

    .line 62
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v4, v5, 0x1

    iget v6, v0, Landroid/support/v4/app/aa;->aae:I

    aput v6, v1, v5

    .line 63
    iget-object v5, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v1, v4, 0x1

    iget v0, v0, Landroid/support/v4/app/aa;->aaf:I

    aput v0, v5, v4

    .line 56
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, v0, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    iget v1, v1, Landroid/support/v4/app/e;->Wr:I

    goto :goto_1
.end method


# virtual methods
.method public aqI(Landroid/support/v4/app/aV;)Landroid/support/v4/app/U;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v0, 0x0

    .line 94
    new-instance v3, Landroid/support/v4/app/U;

    invoke-direct {v3, p1}, Landroid/support/v4/app/U;-><init>(Landroid/support/v4/app/aV;)V

    move v1, v0

    .line 97
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 120
    iget v0, p0, Landroid/support/v4/app/BackStackState;->ade:I

    iput v0, v3, Landroid/support/v4/app/U;->YX:I

    .line 121
    iget v0, p0, Landroid/support/v4/app/BackStackState;->add:I

    iput v0, v3, Landroid/support/v4/app/U;->YW:I

    .line 122
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adf:Ljava/lang/String;

    iput-object v0, v3, Landroid/support/v4/app/U;->YI:Ljava/lang/String;

    .line 123
    iget v0, p0, Landroid/support/v4/app/BackStackState;->adm:I

    iput v0, v3, Landroid/support/v4/app/U;->YL:I

    .line 124
    iput-boolean v6, v3, Landroid/support/v4/app/U;->YU:Z

    .line 125
    iget v0, p0, Landroid/support/v4/app/BackStackState;->adg:I

    iput v0, v3, Landroid/support/v4/app/U;->YY:I

    .line 126
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adh:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroid/support/v4/app/U;->YT:Ljava/lang/CharSequence;

    .line 127
    iget v0, p0, Landroid/support/v4/app/BackStackState;->adi:I

    iput v0, v3, Landroid/support/v4/app/U;->YO:I

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adb:Ljava/lang/CharSequence;

    iput-object v0, v3, Landroid/support/v4/app/U;->YV:Ljava/lang/CharSequence;

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adk:Ljava/util/ArrayList;

    iput-object v0, v3, Landroid/support/v4/app/U;->YP:Ljava/util/ArrayList;

    .line 130
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adl:Ljava/util/ArrayList;

    iput-object v0, v3, Landroid/support/v4/app/U;->YQ:Ljava/util/ArrayList;

    .line 131
    iget-boolean v0, p0, Landroid/support/v4/app/BackStackState;->adj:Z

    iput-boolean v0, v3, Landroid/support/v4/app/U;->YJ:Z

    .line 132
    invoke-virtual {v3, v6}, Landroid/support/v4/app/U;->amf(I)V

    .line 133
    return-object v3

    .line 98
    :cond_0
    new-instance v4, Landroid/support/v4/app/aa;

    invoke-direct {v4}, Landroid/support/v4/app/aa;-><init>()V

    .line 99
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v5, v0, 0x1

    aget v0, v2, v0

    iput v0, v4, Landroid/support/v4/app/aa;->aac:I

    .line 100
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-nez v0, :cond_1

    .line 102
    :goto_1
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    .line 103
    if-gez v0, :cond_2

    .line 107
    const/4 v0, 0x0

    iput-object v0, v4, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

    .line 109
    :goto_2
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroid/support/v4/app/aa;->aah:I

    .line 110
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Landroid/support/v4/app/aa;->aag:I

    .line 111
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v0, v2

    iput v0, v4, Landroid/support/v4/app/aa;->aae:I

    .line 112
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    add-int/lit8 v2, v5, 0x1

    aget v0, v0, v5

    iput v0, v4, Landroid/support/v4/app/aa;->aaf:I

    .line 113
    iget v0, v4, Landroid/support/v4/app/aa;->aah:I

    iput v0, v3, Landroid/support/v4/app/U;->YZ:I

    .line 114
    iget v0, v4, Landroid/support/v4/app/aa;->aag:I

    iput v0, v3, Landroid/support/v4/app/U;->YG:I

    .line 115
    iget v0, v4, Landroid/support/v4/app/aa;->aae:I

    iput v0, v3, Landroid/support/v4/app/U;->YH:I

    .line 116
    iget v0, v4, Landroid/support/v4/app/aa;->aaf:I

    iput v0, v3, Landroid/support/v4/app/U;->YS:I

    .line 117
    invoke-virtual {v3, v4}, Landroid/support/v4/app/U;->amm(Landroid/support/v4/app/aa;)V

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

    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->adc:[I

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
    iget-object v5, p1, Landroid/support/v4/app/aV;->acu:Landroid/util/SparseArray;

    invoke-virtual {v5, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/e;

    .line 105
    iput-object v0, v4, Landroid/support/v4/app/aa;->aad:Landroid/support/v4/app/e;

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
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adc:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    iget v1, p0, Landroid/support/v4/app/BackStackState;->ade:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v1, p0, Landroid/support/v4/app/BackStackState;->add:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adf:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v1, p0, Landroid/support/v4/app/BackStackState;->adm:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v1, p0, Landroid/support/v4/app/BackStackState;->adg:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adh:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    iget v1, p0, Landroid/support/v4/app/BackStackState;->adi:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adb:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 152
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adk:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 153
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->adl:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    iget-boolean v1, p0, Landroid/support/v4/app/BackStackState;->adj:Z

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
