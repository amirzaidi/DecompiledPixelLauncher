.class public Lcom/google/android/gms/phenotype/i;
.super Ljava/lang/Object;


# static fields
.field private static final ml:Lcom/google/android/gms/phenotype/i;


# instance fields
.field private final mi:Ljava/util/concurrent/locks/ReadWriteLock;

.field private final mj:Ljava/util/Set;

.field private final mk:Ljava/util/Map;

.field private final mm:Lcom/google/android/gms/phenotype/a;

.field private final mn:Ljava/util/Map;

.field private final mo:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/phenotype/i;

    invoke-direct {v0}, Lcom/google/android/gms/phenotype/i;-><init>()V

    sput-object v0, Lcom/google/android/gms/phenotype/i;->ml:Lcom/google/android/gms/phenotype/i;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/i;->mi:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/i;->mo:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/i;->mn:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/i;->mj:Ljava/util/Set;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/phenotype/i;->mk:Ljava/util/Map;

    sget-object v0, Lcom/google/android/gms/phenotype/f;->lQ:Lcom/google/android/gms/phenotype/a;

    iput-object v0, p0, Lcom/google/android/gms/phenotype/i;->mm:Lcom/google/android/gms/phenotype/a;

    return-void
.end method
