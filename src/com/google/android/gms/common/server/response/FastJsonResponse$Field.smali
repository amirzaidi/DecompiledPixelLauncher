.class public Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;


# static fields
.field public static final CREATOR:Lcom/google/android/gms/common/server/response/f;


# instance fields
.field protected final hF:I

.field protected final hG:Z

.field protected final hH:Ljava/lang/String;

.field protected final hI:Z

.field protected final hJ:I

.field protected final hK:I

.field private hL:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

.field private final hM:I

.field protected final hN:Ljava/lang/Class;

.field protected final hO:Ljava/lang/String;

.field private hP:Lcom/google/android/gms/common/server/response/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/common/server/response/f;

    invoke-direct {v0}, Lcom/google/android/gms/common/server/response/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/f;

    return-void
.end method

.method constructor <init>(IIZIZLjava/lang/String;ILjava/lang/String;Lcom/google/android/gms/common/server/converter/ConverterWrapper;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hM:I

    iput p2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hF:I

    iput-boolean p3, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hI:Z

    iput p4, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hJ:I

    iput-boolean p5, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hG:Z

    iput-object p6, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hH:Ljava/lang/String;

    iput p7, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hK:I

    if-eqz p8, :cond_0

    const-class v0, Lcom/google/android/gms/common/server/response/SafeParcelResponse;

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hN:Ljava/lang/Class;

    iput-object p8, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hO:Ljava/lang/String;

    :goto_0
    if-eqz p9, :cond_1

    invoke-virtual {p9}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->lr()Lcom/google/android/gms/common/server/response/e;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    :goto_1
    return-void

    :cond_0
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hN:Ljava/lang/Class;

    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hO:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    goto :goto_1
.end method

.method static synthetic kr(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;)Lcom/google/android/gms/common/server/response/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    return-object v0
.end method


# virtual methods
.method public kf()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hJ:I

    return v0
.end method

.method kg()Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hO:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hO:Ljava/lang/String;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public kh()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hG:Z

    return v0
.end method

.method public ki()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hM:I

    return v0
.end method

.method public kj()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hK:I

    return v0
.end method

.method kk()Lcom/google/android/gms/common/server/converter/ConverterWrapper;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    invoke-static {v0}, Lcom/google/android/gms/common/server/converter/ConverterWrapper;->lp(Lcom/google/android/gms/common/server/response/e;)Lcom/google/android/gms/common/server/converter/ConverterWrapper;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public kl(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    invoke-interface {v0, p1}, Lcom/google/android/gms/common/server/response/e;->kP(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public km(Lcom/google/android/gms/common/server/response/FieldMappingDictionary;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hL:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    return-void
.end method

.method public kn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hH:Ljava/lang/String;

    return-object v0
.end method

.method public ko()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hI:Z

    return v0
.end method

.method public kp()Ljava/util/Map;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hO:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hL:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    invoke-static {v0}, Lcom/google/android/gms/common/internal/l;->ht(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hL:Lcom/google/android/gms/common/server/response/FieldMappingDictionary;

    iget-object v1, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hO:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/server/response/FieldMappingDictionary;->kV(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public kq()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public ks()Ljava/lang/Class;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hN:Ljava/lang/Class;

    return-object v0
.end method

.method public kt()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hF:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/16 v3, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "Field\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "            versionCode="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hM:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "                 typeIn="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hF:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "            typeInArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hI:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "                typeOut="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hJ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "           typeOutArray="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hG:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "        outputFieldName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hH:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "      safeParcelFieldId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hK:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "       concreteTypeName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->kg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->ks()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    const-string/jumbo v0, "          converterName="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->hP:Lcom/google/android/gms/common/server/response/e;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v0, "     concreteType.class="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->ks()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "null"

    goto :goto_1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    sget-object v0, Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;->CREATOR:Lcom/google/android/gms/common/server/response/f;

    invoke-static {p0, p1, p2}, Lcom/google/android/gms/common/server/response/f;->kQ(Lcom/google/android/gms/common/server/response/FastJsonResponse$Field;Landroid/os/Parcel;I)V

    return-void
.end method
