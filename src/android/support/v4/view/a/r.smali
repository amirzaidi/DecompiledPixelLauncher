.class public Landroid/support/v4/view/a/r;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VF:Landroid/support/v4/view/a/u;


# instance fields
.field private final VG:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 85
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-ge v0, v1, :cond_1

    .line 90
    new-instance v0, Landroid/support/v4/view/a/u;

    invoke-direct {v0}, Landroid/support/v4/view/a/u;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/r;->VF:Landroid/support/v4/view/a/u;

    .line 92
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v0, Landroid/support/v4/view/a/s;

    invoke-direct {v0}, Landroid/support/v4/view/a/s;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/r;->VF:Landroid/support/v4/view/a/u;

    goto :goto_0

    .line 88
    :cond_1
    new-instance v0, Landroid/support/v4/view/a/t;

    invoke-direct {v0}, Landroid/support/v4/view/a/t;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/r;->VF:Landroid/support/v4/view/a/u;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    check-cast p1, Landroid/view/accessibility/AccessibilityRecord;

    iput-object p1, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    .line 108
    return-void
.end method

.method public static agg(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 200
    sget-object v0, Landroid/support/v4/view/a/r;->VF:Landroid/support/v4/view/a/u;

    invoke-virtual {v0, p0, p1, p2}, Landroid/support/v4/view/a/u;->agi(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 201
    return-void
.end method


# virtual methods
.method public agc(I)V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 446
    return-void
.end method

.method public agd(I)V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 388
    return-void
.end method

.method public age()I
    .locals 1

    .prologue
    .line 428
    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public agf()I
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public agh(I)V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 472
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 810
    if-eq p0, p1, :cond_1

    .line 813
    if-eqz p1, :cond_2

    .line 816
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 819
    check-cast p1, Landroid/support/v4/view/a/r;

    .line 820
    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v0, :cond_4

    .line 824
    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    iget-object v1, p1, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 827
    :cond_0
    return v3

    .line 811
    :cond_1
    return v3

    .line 814
    :cond_2
    return v2

    .line 817
    :cond_3
    return v2

    .line 821
    :cond_4
    iget-object v0, p1, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v0, :cond_0

    .line 822
    return v2

    .line 825
    :cond_5
    return v2
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/a/r;->VG:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
