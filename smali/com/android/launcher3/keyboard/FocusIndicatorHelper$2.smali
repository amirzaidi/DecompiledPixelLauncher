.class final Lcom/android/launcher3/keyboard/FocusIndicatorHelper$2;
.super Landroid/util/Property;
.source "SourceFile"


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 1
    return-void
.end method


# virtual methods
.method public get(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 69
    invoke-static {p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->-get1(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 67
    check-cast p1, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$2;->get(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;->-set0(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;F)F

    .line 65
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 62
    check-cast p1, Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$2;->set(Lcom/android/launcher3/keyboard/FocusIndicatorHelper;Ljava/lang/Float;)V

    return-void
.end method
