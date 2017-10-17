.class public Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private final IN:I

.field private final IO:I

.field private final IP:Ljava/lang/String;

.field private IQ:Lcom/google/android/gms/internal/I;

.field private final IR:I

.field private final IS:Ljava/lang/String;

.field private final IT:I

.field private final IU:Ljava/lang/String;

.field private final IV:Ljava/lang/String;

.field private final IW:I

.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/contextmanager/internal/c;

    invoke-direct {v0}, Lcom/google/android/gms/contextmanager/internal/c;-><init>()V

    sput-object v0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;IILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IT:I

    iput-object p2, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IP:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->mPackageName:Ljava/lang/String;

    iput p4, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IR:I

    iput-object p5, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IV:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IO:I

    iput p7, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IW:I

    iput-object p8, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IS:Ljava/lang/String;

    iput-object p9, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IU:Ljava/lang/String;

    iput p10, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IN:I

    return-void
.end method


# virtual methods
.method public Nn()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IW:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string/jumbo v0, "unknownPartyType"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "0P"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "1P"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "3P"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method No()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IW:I

    return v0
.end method

.method public Np()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IS:Ljava/lang/String;

    return-object v0
.end method

.method public Nq()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IN:I

    return v0
.end method

.method public Nr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IU:Ljava/lang/String;

    return-object v0
.end method

.method public Ns()Lcom/google/android/gms/internal/I;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IP:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IQ:Lcom/google/android/gms/internal/I;

    if-eqz v0, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IQ:Lcom/google/android/gms/internal/I;

    return-object v0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/I;

    iget-object v1, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IP:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/I;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IQ:Lcom/google/android/gms/internal/I;

    goto :goto_0
.end method

.method public Nt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IV:Ljava/lang/String;

    return-object v0
.end method

.method public Nu()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IO:I

    return v0
.end method

.method public Nv()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IP:Ljava/lang/String;

    return-object v0
.end method

.method Nw()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IT:I

    return v0
.end method

.method public Nx()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->IR:I

    return v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Ns()Lcom/google/android/gms/internal/I;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Nx()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Nt()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Nu()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Nn()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Np()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;->Nr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x64

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v9, "(account="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v8, ", "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "):"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", thirdPartyPackageName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " ,  thirdPartyModuleId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/contextmanager/internal/c;->MZ(Lcom/google/android/gms/contextmanager/internal/ContextManagerClientInfo;Landroid/os/Parcel;I)V

    return-void
.end method
