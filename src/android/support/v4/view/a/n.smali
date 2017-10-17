.class public final Landroid/support/v4/view/a/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final VE:Landroid/support/v4/view/a/q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 92
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 94
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 97
    new-instance v0, Landroid/support/v4/view/a/q;

    invoke-direct {v0}, Landroid/support/v4/view/a/q;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/n;->VE:Landroid/support/v4/view/a/q;

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v0, Landroid/support/v4/view/a/o;

    invoke-direct {v0}, Landroid/support/v4/view/a/o;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/n;->VE:Landroid/support/v4/view/a/q;

    goto :goto_0

    .line 95
    :cond_1
    new-instance v0, Landroid/support/v4/view/a/p;

    invoke-direct {v0}, Landroid/support/v4/view/a/p;-><init>()V

    sput-object v0, Landroid/support/v4/view/a/n;->VE:Landroid/support/v4/view/a/q;

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    return-void
.end method

.method public static afX(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    .prologue
    .line 338
    sget-object v0, Landroid/support/v4/view/a/n;->VE:Landroid/support/v4/view/a/q;

    invoke-virtual {v0, p0, p1}, Landroid/support/v4/view/a/q;->agb(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 339
    return-void
.end method

.method public static afY(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .prologue
    .line 355
    sget-object v0, Landroid/support/v4/view/a/n;->VE:Landroid/support/v4/view/a/q;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/a/q;->aga(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method

.method public static afZ(Landroid/view/accessibility/AccessibilityEvent;)Landroid/support/v4/view/a/r;
    .locals 1

    .prologue
    .line 326
    new-instance v0, Landroid/support/v4/view/a/r;

    invoke-direct {v0, p0}, Landroid/support/v4/view/a/r;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
