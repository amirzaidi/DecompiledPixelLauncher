.class public final Lcom/google/android/gms/common/a/o;
.super Ljava/lang/Object;


# direct methods
.method public static kc(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;
    .locals 2

    new-instance v0, Lcom/google/android/gms/common/a/i;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/a/i;-><init>(I)V

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
