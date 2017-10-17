.class public Lcom/google/android/gms/phenotype/f;
.super Ljava/lang/Object;


# static fields
.field private static final yw:Lcom/google/android/gms/phenotype/f;


# instance fields
.field private final yt:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final yu:Ljava/util/Set;

.field private final yv:Ljava/util/Map;

.field private final yx:Lcom/google/android/gms/phenotype/c;

.field private final yy:Ljava/util/Map;

.field private final yz:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/phenotype/f;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/f;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/f;->yw:Lcom/google/android/gms/phenotype/f;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/f;->yt:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/f;->yz:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/f;->yy:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/f;->yu:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/f;->yv:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/phenotype/g;->yL:Lcom/google/android/gms/phenotype/c;

    iput-object v0, p0, Lcom/google/android/gms/phenotype/f;->yx:Lcom/google/android/gms/phenotype/c;

    return-void
.end method
