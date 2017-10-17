.class public Lcom/android/launcher3/anim/PropertyListBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mProperties:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    .line 11
    return-void
.end method


# virtual methods
.method public build()[Landroid/animation/PropertyValuesHolder;
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/animation/PropertyValuesHolder;

    return-object v0
.end method

.method public scale(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 1

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scaleX(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/anim/PropertyListBuilder;->scaleY(F)Lcom/android/launcher3/anim/PropertyListBuilder;

    move-result-object v0

    return-object v0
.end method

.method public scaleX(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    return-object p0
.end method

.method public scaleY(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 32
    return-object p0
.end method

.method public translationX(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4

    .prologue
    .line 16
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-object p0
.end method

.method public translationY(F)Lcom/android/launcher3/anim/PropertyListBuilder;
    .locals 4

    .prologue
    .line 21
    iget-object v0, p0, Lcom/android/launcher3/anim/PropertyListBuilder;->mProperties:Ljava/util/ArrayList;

    sget-object v1, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {v1, v2}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    return-object p0
.end method
