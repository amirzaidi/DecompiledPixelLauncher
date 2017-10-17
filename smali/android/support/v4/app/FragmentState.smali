.class final Landroid/support/v4/app/FragmentState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final abC:Z

.field abD:Landroid/os/Bundle;

.field final abE:I

.field final abF:Landroid/os/Bundle;

.field final abG:Ljava/lang/String;

.field final abH:Ljava/lang/String;

.field final abI:I

.field final abJ:Z

.field final abK:Z

.field final abL:I

.field abM:Landroid/support/v4/app/e;

.field final abN:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 159
    new-instance v0, Landroid/support/v4/app/aH;

    invoke-direct {v0}, Landroid/support/v4/app/aH;-><init>()V

    sput-object v0, Landroid/support/v4/app/FragmentState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->abH:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->abI:I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abJ:Z

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->abE:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/FragmentState;->abL:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->abG:Ljava/lang/String;

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abK:Z

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abC:Z

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->abF:Landroid/os/Bundle;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    :goto_3
    iput-boolean v1, p0, Landroid/support/v4/app/FragmentState;->abN:Z

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    .line 101
    return-void

    :cond_0
    move v0, v2

    .line 92
    goto :goto_0

    :cond_1
    move v0, v2

    .line 96
    goto :goto_1

    :cond_2
    move v0, v2

    .line 97
    goto :goto_2

    :cond_3
    move v1, v2

    .line 99
    goto :goto_3
.end method

.method public constructor <init>(Landroid/support/v4/app/e;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->abH:Ljava/lang/String;

    .line 78
    iget v0, p1, Landroid/support/v4/app/e;->Wr:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->abI:I

    .line 79
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WC:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abJ:Z

    .line 80
    iget v0, p1, Landroid/support/v4/app/e;->Wx:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->abE:I

    .line 81
    iget v0, p1, Landroid/support/v4/app/e;->Ws:I

    iput v0, p0, Landroid/support/v4/app/FragmentState;->abL:I

    .line 82
    iget-object v0, p1, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->abG:Ljava/lang/String;

    .line 83
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WP:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abK:Z

    .line 84
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WR:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abC:Z

    .line 85
    iget-object v0, p1, Landroid/support/v4/app/e;->WJ:Landroid/os/Bundle;

    iput-object v0, p0, Landroid/support/v4/app/FragmentState;->abF:Landroid/os/Bundle;

    .line 86
    iget-boolean v0, p1, Landroid/support/v4/app/e;->WY:Z

    iput-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abN:Z

    .line 87
    return-void
.end method


# virtual methods
.method public anW(Landroid/support/v4/app/p;Landroid/support/v4/app/ac;Landroid/support/v4/app/e;Landroid/support/v4/app/az;)Landroid/support/v4/app/e;
    .locals 3

    .prologue
    .line 105
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iput-object p4, v0, Landroid/support/v4/app/e;->WD:Landroid/support/v4/app/az;

    .line 136
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    return-object v0

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/support/v4/app/p;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 107
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abF:Landroid/os/Bundle;

    if-nez v1, :cond_2

    .line 111
    :goto_1
    if-nez p2, :cond_3

    .line 114
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abH:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/FragmentState;->abF:Landroid/os/Bundle;

    invoke-static {v0, v1, v2}, Landroid/support/v4/app/e;->aiU(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/e;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    .line 117
    :goto_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    if-nez v1, :cond_4

    .line 121
    :goto_3
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->abI:I

    invoke-virtual {v0, v1, p3}, Landroid/support/v4/app/e;->ajy(ILandroid/support/v4/app/e;)V

    .line 122
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->abJ:Z

    iput-boolean v1, v0, Landroid/support/v4/app/e;->WC:Z

    .line 123
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/app/e;->Wt:Z

    .line 124
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->abE:I

    iput v1, v0, Landroid/support/v4/app/e;->Wx:I

    .line 125
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget v1, p0, Landroid/support/v4/app/FragmentState;->abL:I

    iput v1, v0, Landroid/support/v4/app/e;->Ws:I

    .line 126
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abG:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/e;->WM:Ljava/lang/String;

    .line 127
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->abK:Z

    iput-boolean v1, v0, Landroid/support/v4/app/e;->WP:Z

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->abC:Z

    iput-boolean v1, v0, Landroid/support/v4/app/e;->WR:Z

    .line 129
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget-boolean v1, p0, Landroid/support/v4/app/FragmentState;->abN:Z

    iput-boolean v1, v0, Landroid/support/v4/app/e;->WY:Z

    .line 130
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget-object v1, p1, Landroid/support/v4/app/p;->XC:Landroid/support/v4/app/aV;

    iput-object v1, v0, Landroid/support/v4/app/e;->Ww:Landroid/support/v4/app/aV;

    .line 132
    sget-boolean v0, Landroid/support/v4/app/aV;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Instantiated fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 108
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abF:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_1

    .line 112
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abH:Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v4/app/FragmentState;->abF:Landroid/os/Bundle;

    invoke-virtual {p2, v0, v1, v2}, Landroid/support/v4/app/ac;->amH(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/e;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    goto :goto_2

    .line 118
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 119
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abM:Landroid/support/v4/app/e;

    iget-object v1, p0, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    iput-object v1, v0, Landroid/support/v4/app/e;->WI:Landroid/os/Bundle;

    goto/16 :goto_3
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abH:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Landroid/support/v4/app/FragmentState;->abI:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abJ:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Landroid/support/v4/app/FragmentState;->abE:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Landroid/support/v4/app/FragmentState;->abL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 152
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abK:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abC:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abF:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 155
    iget-boolean v0, p0, Landroid/support/v4/app/FragmentState;->abN:Z

    if-nez v0, :cond_3

    :goto_3
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget-object v0, p0, Landroid/support/v4/app/FragmentState;->abD:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 157
    return-void

    :cond_0
    move v0, v2

    .line 148
    goto :goto_0

    :cond_1
    move v0, v2

    .line 152
    goto :goto_1

    :cond_2
    move v0, v2

    .line 153
    goto :goto_2

    :cond_3
    move v1, v2

    .line 155
    goto :goto_3
.end method
