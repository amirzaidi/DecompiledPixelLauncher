.class public Landroid/support/v4/app/Fragment$SavedState;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final abN:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 372
    new-instance v0, Landroid/support/v4/app/t;

    invoke-direct {v0}, Landroid/support/v4/app/t;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 1

    .prologue
    .line 355
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/Fragment$SavedState;->abN:Landroid/os/Bundle;

    .line 357
    if-nez p2, :cond_1

    .line 360
    :cond_0
    :goto_0
    return-void

    .line 357
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/Fragment$SavedState;->abN:Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Landroid/support/v4/app/Fragment$SavedState;->abN:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 364
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Landroid/support/v4/app/Fragment$SavedState;->abN:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 370
    return-void
.end method
