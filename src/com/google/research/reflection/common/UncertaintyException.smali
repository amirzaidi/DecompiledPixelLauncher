.class public Lcom/google/research/reflection/common/UncertaintyException;
.super Ljava/lang/Exception;
.source "SourceFile"


# instance fields
.field private estimation:J


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    .line 12
    iput-wide p1, p0, Lcom/google/research/reflection/common/UncertaintyException;->estimation:J

    .line 13
    return-void
.end method
