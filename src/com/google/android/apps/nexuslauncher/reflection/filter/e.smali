.class public Lcom/google/android/apps/nexuslauncher/reflection/filter/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public cn:Ljava/lang/String;

.field private final co:I

.field public final packageName:Ljava/lang/String;

.field public state:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->state:I

    .line 231
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->packageName:Ljava/lang/String;

    .line 232
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->cn:Ljava/lang/String;

    .line 233
    iput p4, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->state:I

    .line 234
    iput p3, p0, Lcom/google/android/apps/nexuslauncher/reflection/filter/e;->co:I

    .line 235
    return-void
.end method
