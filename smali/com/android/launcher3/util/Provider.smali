.class public abstract Lcom/android/launcher3/util/Provider;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static of(Ljava/lang/Object;)Lcom/android/launcher3/util/Provider;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/android/launcher3/util/Provider$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/Provider$1;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public abstract get()Ljava/lang/Object;
.end method
