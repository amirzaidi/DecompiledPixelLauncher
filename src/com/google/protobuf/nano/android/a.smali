.class public final Lcom/google/protobuf/nano/android/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# instance fields
.field private final Pt:Ljava/lang/Class;


# direct methods
.method static UZ(Ljava/lang/Class;Lcom/google/protobuf/nano/a;Landroid/os/Parcel;)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    invoke-static {p1}, Lcom/google/protobuf/nano/a;->toByteArray(Lcom/google/protobuf/nano/a;)[B

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 96
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/a;
    .locals 6

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 59
    const/4 v1, 0x0

    .line 64
    :try_start_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/android/a;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 65
    const-class v3, Lcom/google/protobuf/nano/a;

    .line 64
    invoke-virtual {v0, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 66
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 67
    check-cast v0, Lcom/google/protobuf/nano/a;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    invoke-static {v0, v2}, Lcom/google/protobuf/nano/a;->mergeFrom(Lcom/google/protobuf/nano/a;[B)Lcom/google/protobuf/nano/a;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_1 .. :try_end_1} :catch_b

    move-object v1, v0

    .line 83
    :goto_0
    return-object v1

    .line 79
    :catch_0
    move-exception v0

    .line 80
    :goto_1
    const-string/jumbo v2, "PMNCreator"

    const-string/jumbo v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 77
    :catch_1
    move-exception v0

    .line 78
    :goto_2
    const-string/jumbo v2, "PMNCreator"

    const-string/jumbo v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 75
    :catch_2
    move-exception v0

    .line 76
    :goto_3
    const-string/jumbo v2, "PMNCreator"

    const-string/jumbo v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 73
    :catch_3
    move-exception v0

    .line 74
    :goto_4
    const-string/jumbo v2, "PMNCreator"

    const-string/jumbo v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    :catch_4
    move-exception v0

    .line 72
    :goto_5
    const-string/jumbo v2, "PMNCreator"

    const-string/jumbo v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    :catch_5
    move-exception v0

    .line 70
    :goto_6
    const-string/jumbo v2, "PMNCreator"

    const-string/jumbo v3, "Exception trying to create proto from parcel"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 69
    :catch_6
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_6

    .line 71
    :catch_7
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_5

    .line 73
    :catch_8
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 75
    :catch_9
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 77
    :catch_a
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2

    .line 79
    :catch_b
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/a;->createFromParcel(Landroid/os/Parcel;)Lcom/google/protobuf/nano/a;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/google/protobuf/nano/a;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/protobuf/nano/android/a;->Pt:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/protobuf/nano/a;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/android/a;->newArray(I)[Lcom/google/protobuf/nano/a;

    move-result-object v0

    return-object v0
.end method
