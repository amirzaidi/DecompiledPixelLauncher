.class public final enum Landroid/support/annotation/RestrictTo$Scope;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum afs:Landroid/support/annotation/RestrictTo$Scope;

.field private static final synthetic aft:[Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum afu:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum afv:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum afw:Landroid/support/annotation/RestrictTo$Scope;

.field public static final enum afx:Landroid/support/annotation/RestrictTo$Scope;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 63
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string/jumbo v1, "LIBRARY"

    invoke-direct {v0, v1, v2}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->afw:Landroid/support/annotation/RestrictTo$Scope;

    .line 69
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string/jumbo v1, "LIBRARY_GROUP"

    invoke-direct {v0, v1, v3}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->afx:Landroid/support/annotation/RestrictTo$Scope;

    .line 77
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string/jumbo v1, "GROUP_ID"

    invoke-direct {v0, v1, v4}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->afv:Landroid/support/annotation/RestrictTo$Scope;

    .line 83
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string/jumbo v1, "TESTS"

    invoke-direct {v0, v1, v5}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->afu:Landroid/support/annotation/RestrictTo$Scope;

    .line 91
    new-instance v0, Landroid/support/annotation/RestrictTo$Scope;

    const-string/jumbo v1, "SUBCLASSES"

    invoke-direct {v0, v1, v6}, Landroid/support/annotation/RestrictTo$Scope;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->afs:Landroid/support/annotation/RestrictTo$Scope;

    .line 58
    const/4 v0, 0x5

    new-array v0, v0, [Landroid/support/annotation/RestrictTo$Scope;

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->afw:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v2

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->afx:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v3

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->afv:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v4

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->afu:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v5

    sget-object v1, Landroid/support/annotation/RestrictTo$Scope;->afs:Landroid/support/annotation/RestrictTo$Scope;

    aput-object v1, v0, v6

    sput-object v0, Landroid/support/annotation/RestrictTo$Scope;->aft:[Landroid/support/annotation/RestrictTo$Scope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/support/annotation/RestrictTo$Scope;
    .locals 1

    .prologue
    .line 58
    const-class v0, Landroid/support/annotation/RestrictTo$Scope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/support/annotation/RestrictTo$Scope;

    return-object v0
.end method

.method public static values()[Landroid/support/annotation/RestrictTo$Scope;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Landroid/support/annotation/RestrictTo$Scope;->aft:[Landroid/support/annotation/RestrictTo$Scope;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/annotation/RestrictTo$Scope;

    return-object v0
.end method
