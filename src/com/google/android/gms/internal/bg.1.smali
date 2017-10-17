.class public final Lcom/google/android/gms/internal/bg;
.super Landroid/support/v4/app/e;

# interfaces
.implements Lcom/google/android/gms/internal/aC;


# static fields
.field private static tM:Ljava/util/WeakHashMap;


# instance fields
.field private tL:Landroid/os/Bundle;

.field private tN:Ljava/util/Map;

.field private tO:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/bg;->tM:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/e;-><init>()V

    new-instance v0, Landroid/support/v4/a/t;

    invoke-direct {v0}, Landroid/support/v4/a/t;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/bg;->tO:I

    return-void
.end method

.method static synthetic ym(Lcom/google/android/gms/internal/bg;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tL:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic yn(Lcom/google/android/gms/internal/bg;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/bg;->tO:I

    return v0
.end method

.method public static yo(Landroid/support/v4/app/a;)Lcom/google/android/gms/internal/bg;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/bg;->tM:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/support/v4/app/a;->ahY()Landroid/support/v4/app/bb;

    move-result-object v0

    const-string/jumbo v1, "SupportLifecycleFragmentImpl"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/bb;->apR(Ljava/lang/String;)Landroid/support/v4/app/e;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bg;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/bg;

    invoke-direct {v0}, Lcom/google/android/gms/internal/bg;-><init>()V

    invoke-virtual {p0}, Landroid/support/v4/app/a;->ahY()Landroid/support/v4/app/bb;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/bb;->apg()Landroid/support/v4/app/y;

    move-result-object v1

    const-string/jumbo v2, "SupportLifecycleFragmentImpl"

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/y;->akD(Landroid/support/v4/app/e;Ljava/lang/String;)Landroid/support/v4/app/y;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/y;->akC()I

    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/bg;->tM:Ljava/util/WeakHashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/bg;

    if-eqz v0, :cond_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "Fragment with tag SupportLifecycleFragmentImpl is not a SupportLifecycleFragmentImpl"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/bg;->aiv()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0
.end method

.method private yq(Ljava/lang/String;Lcom/google/android/gms/internal/aJ;)V
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/bg;->tO:I

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/google/android/gms/internal/aH;

    invoke-direct {v1, p0, p2, p1}, Lcom/google/android/gms/internal/aH;-><init>(Lcom/google/android/gms/internal/bg;Lcom/google/android/gms/internal/aJ;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v4/app/e;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aJ;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/gms/internal/aJ;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/e;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aJ;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/aJ;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/app/e;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/bg;->tO:I

    iput-object p1, p0, Lcom/google/android/gms/internal/bg;->tL:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aJ;

    if-nez p1, :cond_1

    move-object v0, v2

    :goto_1
    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/aJ;->onCreate(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/e;->onSaveInstanceState(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/aJ;

    invoke-virtual {v1, v3}, Lcom/google/android/gms/internal/aJ;->onSaveInstanceState(Landroid/os/Bundle;)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/e;->onStop()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/gms/internal/bg;->tO:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aJ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aJ;->onStart()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/e;->onStop()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/gms/internal/bg;->tO:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aJ;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/aJ;->onStop()V

    goto :goto_0
.end method

.method public uG(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/aJ;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/aJ;

    return-object v0
.end method

.method public uH(Ljava/lang/String;Lcom/google/android/gms/internal/aJ;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3b

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string/jumbo v2, "LifecycleCallback with tag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " already added to this fragment."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/bg;->tN:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/bg;->yq(Ljava/lang/String;Lcom/google/android/gms/internal/aJ;)V

    return-void
.end method

.method public synthetic uI()Landroid/app/Activity;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bg;->yp()Landroid/support/v4/app/a;

    move-result-object v0

    return-object v0
.end method

.method public yp()Landroid/support/v4/app/a;
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/bg;->getActivity()Landroid/support/v4/app/a;

    move-result-object v0

    return-object v0
.end method
