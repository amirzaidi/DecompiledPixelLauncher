.class public Lcom/google/android/gms/common/api/E;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/m;


# instance fields
.field private final hF:Landroid/support/v4/a/t;

.field private final hG:Lcom/google/android/gms/common/api/Status;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/Status;Landroid/support/v4/a/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/E;->hG:Lcom/google/android/gms/common/api/Status;

    iput-object p2, p0, Lcom/google/android/gms/common/api/E;->hF:Landroid/support/v4/a/t;

    return-void
.end method


# virtual methods
.method public gV()Lcom/google/android/gms/common/api/Status;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/E;->hG:Lcom/google/android/gms/common/api/Status;

    return-object v0
.end method
