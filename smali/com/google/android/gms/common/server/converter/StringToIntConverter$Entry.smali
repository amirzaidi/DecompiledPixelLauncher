.class public final Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/converter/c;


# instance fields
.field final ie:I

.field final if:Ljava/lang/String;

.field final ig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/converter/c;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/converter/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->CREATOR:Lcom/google/android/gms/common/server/converter/c;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->ie:I

    iput-object p2, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->if:Ljava/lang/String;

    iput p3, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->ig:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->ie:I

    iput-object p1, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->if:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->ig:I

    return-void
.end method


# virtual methods
.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;->CREATOR:Lcom/google/android/gms/common/server/converter/c;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/converter/c;->lx(Lcom/google/android/gms/common/server/converter/StringToIntConverter$Entry;Landroid/os/Parcel;I)V

    return-void
.end method
