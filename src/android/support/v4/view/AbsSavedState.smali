.class public abstract Landroid/support/v4/view/AbsSavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final VV:Landroid/support/v4/view/AbsSavedState;


# instance fields
.field private final VU:Landroid/os/Parcelable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Landroid/support/v4/view/AbsSavedState$1;

    invoke-direct {v0}, Landroid/support/v4/view/AbsSavedState$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/AbsSavedState;->VV:Landroid/support/v4/view/AbsSavedState;

    .line 84
    new-instance v0, Landroid/support/v4/view/z;

    invoke-direct {v0}, Landroid/support/v4/view/z;-><init>()V

    sput-object v0, Landroid/support/v4/view/AbsSavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/AbsSavedState;->VU:Landroid/os/Parcelable;

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    .line 67
    if-nez v0, :cond_0

    sget-object v0, Landroid/support/v4/view/AbsSavedState;->VV:Landroid/support/v4/view/AbsSavedState;

    :cond_0
    iput-object v0, p0, Landroid/support/v4/view/AbsSavedState;->VU:Landroid/os/Parcelable;

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcelable;)V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    if-eqz p1, :cond_1

    .line 47
    sget-object v1, Landroid/support/v4/view/AbsSavedState;->VV:Landroid/support/v4/view/AbsSavedState;

    if-ne p1, v1, :cond_0

    move-object p1, v0

    :cond_0
    iput-object p1, p0, Landroid/support/v4/view/AbsSavedState;->VU:Landroid/os/Parcelable;

    .line 48
    return-void

    .line 45
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "superState must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/AbsSavedState$1;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/support/v4/view/AbsSavedState;-><init>()V

    return-void
.end method


# virtual methods
.method public final ago()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v4/view/AbsSavedState;->VU:Landroid/os/Parcelable;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v4/view/AbsSavedState;->VU:Landroid/os/Parcelable;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 82
    return-void
.end method
