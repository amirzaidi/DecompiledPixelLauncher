.class public final Lcom/google/android/gms/common/data/DataHolder;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field private static final kd:Lcom/google/android/gms/common/data/e;


# instance fields
.field private final kb:[Ljava/lang/String;

.field private final kc:[Landroid/database/CursorWindow;

.field ke:Landroid/os/Bundle;

.field kf:[I

.field private final kg:I

.field kh:Z

.field private ki:Z

.field private final kj:I

.field private final kk:Landroid/os/Bundle;

.field kl:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/gms/common/data/h;

    invoke-direct {v0}, Lcom/google/android/gms/common/data/h;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    new-instance v0, Lcom/google/android/gms/common/data/f;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/common/data/f;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/gms/common/data/DataHolder;->kd:Lcom/google/android/gms/common/data/e;

    return-void
.end method

.method constructor <init>(I[Ljava/lang/String;[Landroid/database/CursorWindow;ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kh:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ki:Z

    iput p1, p0, Lcom/google/android/gms/common/data/DataHolder;->kj:I

    iput-object p2, p0, Lcom/google/android/gms/common/data/DataHolder;->kb:[Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    iput p4, p0, Lcom/google/android/gms/common/data/DataHolder;->kg:I

    iput-object p5, p0, Lcom/google/android/gms/common/data/DataHolder;->kk:Landroid/os/Bundle;

    return-void
.end method

.method private nm(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ke:Landroid/os/Bundle;

    if-nez v0, :cond_1

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const-string/jumbo v3, "No such column: "

    if-nez v2, :cond_3

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ke:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->nc()Z

    move-result v0

    if-nez v0, :cond_4

    if-gez p2, :cond_5

    :cond_2
    new-instance v0, Landroid/database/CursorIndexOutOfBoundsException;

    iget v1, p0, Lcom/google/android/gms/common/data/DataHolder;->kl:I

    invoke-direct {v0, p2, v1}, Landroid/database/CursorIndexOutOfBoundsException;-><init>(II)V

    throw v0

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer is closed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kl:I

    if-ge p2, v0, :cond_2

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->kh:Z

    if-eqz v1, :cond_1

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/gms/common/data/DataHolder;->kh:Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/database/CursorWindow;->close()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected finalize()V
    .locals 3

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ki:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    array-length v0, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->nc()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/gms/common/data/DataHolder;->close()V

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit16 v2, v2, 0xb2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "Internal data leak within a DataBuffer object detected!  Be sure to explicitly call release() on all DataBuffer extending objects when you are done with them. (internal object: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "DataBuffer"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public nc()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kh:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public nd()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kl:I

    return v0
.end method

.method public ne(I)I
    .locals 2

    const/4 v1, 0x0

    if-gez p1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->hs(Z)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kf:[I

    array-length v0, v0

    if-lt v1, v0, :cond_2

    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kf:[I

    array-length v0, v0

    if-eq v1, v0, :cond_4

    :goto_3
    return v1

    :cond_1
    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kl:I

    if-ge p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kf:[I

    aget v0, v0, v1

    if-lt p1, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_3
.end method

.method public nf(Ljava/lang/String;II)Ljava/lang/String;
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/DataHolder;->nm(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    aget-object v0, v0, p3

    iget-object v1, p0, Lcom/google/android/gms/common/data/DataHolder;->ke:Landroid/os/Bundle;

    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p2, v1}, Landroid/database/CursorWindow;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method ng()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kj:I

    return v0
.end method

.method public nh()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kk:Landroid/os/Bundle;

    return-object v0
.end method

.method public ni()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kg:I

    return v0
.end method

.method nj()[Landroid/database/CursorWindow;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    return-object v0
.end method

.method public nk()V
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->ke:Landroid/os/Bundle;

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->kb:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kf:[I

    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    iput v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kl:I

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->ke:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->kb:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->kf:[I

    aput v0, v2, v1

    iget-object v2, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/database/CursorWindow;->getStartPosition()I

    move-result v2

    sub-int v2, v0, v2

    iget-object v3, p0, Lcom/google/android/gms/common/data/DataHolder;->kc:[Landroid/database/CursorWindow;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Landroid/database/CursorWindow;->getNumRows()I

    move-result v3

    sub-int v2, v3, v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method nl()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/DataHolder;->kb:[Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/data/h;->ns(Lcom/google/android/gms/common/data/DataHolder;Landroid/os/Parcel;I)V

    return-void
.end method
