.class public Lcom/google/android/apps/nexuslauncher/reflection/filter/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final packageName:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public state:I

.field private final t:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->state:I

    .line 234
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->packageName:Ljava/lang/String;

    .line 235
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->s:Ljava/lang/String;

    .line 236
    iput p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->state:I

    .line 237
    iput p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;->t:I

    .line 238
    return-void
.end method
