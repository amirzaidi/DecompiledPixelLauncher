.class public abstract Landroid/support/v4/app/p;
.super Landroid/support/v4/app/ac;
.source "SourceFile"


# instance fields
.field private XA:Z

.field private final XB:Landroid/app/Activity;

.field final XC:Landroid/support/v4/app/aV;

.field private XD:Landroid/support/v4/app/aY;

.field private XE:Landroid/support/v4/a/k;

.field final XF:I

.field private XG:Z

.field private XH:Z

.field final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1

    .prologue
    .line 67
    invoke-direct {p0}, Landroid/support/v4/app/ac;-><init>()V

    .line 46
    new-instance v0, Landroid/support/v4/app/aV;

    invoke-direct {v0}, Landroid/support/v4/app/aV;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->XC:Landroid/support/v4/app/aV;

    .line 68
    iput-object p1, p0, Landroid/support/v4/app/p;->XB:Landroid/app/Activity;

    .line 69
    iput-object p2, p0, Landroid/support/v4/app/p;->mContext:Landroid/content/Context;

    .line 70
    iput-object p3, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    .line 71
    iput p4, p0, Landroid/support/v4/app/p;->XF:I

    .line 72
    return-void
.end method

.method constructor <init>(Landroid/support/v4/app/a;)V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p1, Landroid/support/v4/app/a;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, p1, p1, v0, v1}, Landroid/support/v4/app/p;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;I)V

    .line 64
    return-void
.end method


# virtual methods
.method ake()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    iget-boolean v0, p0, Landroid/support/v4/app/p;->XH:Z

    if-nez v0, :cond_1

    .line 240
    iput-boolean v3, p0, Landroid/support/v4/app/p;->XH:Z

    .line 242
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    if-nez v0, :cond_2

    .line 244
    iget-boolean v0, p0, Landroid/support/v4/app/p;->XA:Z

    if-eqz v0, :cond_3

    .line 251
    :cond_0
    :goto_0
    iput-boolean v3, p0, Landroid/support/v4/app/p;->XA:Z

    .line 252
    return-void

    .line 238
    :cond_1
    return-void

    .line 243
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqq()V

    goto :goto_0

    .line 245
    :cond_3
    iget-boolean v0, p0, Landroid/support/v4/app/p;->XH:Z

    const-string/jumbo v1, "(root)"

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/app/p;->akj(Ljava/lang/String;ZZ)Landroid/support/v4/app/aY;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    .line 247
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    iget-boolean v0, v0, Landroid/support/v4/app/aY;->mStarted:Z

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqq()V

    goto :goto_0
.end method

.method akf(Z)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 256
    iput-boolean p1, p0, Landroid/support/v4/app/p;->XG:Z

    .line 258
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    if-eqz v0, :cond_0

    .line 262
    iget-boolean v0, p0, Landroid/support/v4/app/p;->XH:Z

    if-eqz v0, :cond_1

    .line 265
    iput-boolean v1, p0, Landroid/support/v4/app/p;->XH:Z

    .line 267
    if-nez p1, :cond_2

    .line 270
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqr()V

    .line 272
    :goto_0
    return-void

    .line 259
    :cond_0
    return-void

    .line 263
    :cond_1
    return-void

    .line 268
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqn()V

    goto :goto_0
.end method

.method akg()Landroid/support/v4/a/k;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 319
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    if-nez v0, :cond_1

    move v0, v1

    .line 345
    :cond_0
    if-nez v0, :cond_7

    .line 348
    return-object v7

    .line 322
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->size()I

    move-result v3

    .line 323
    new-array v4, v3, [Landroid/support/v4/app/aY;

    .line 324
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_3

    .line 327
    invoke-virtual {p0}, Landroid/support/v4/app/p;->ako()Z

    move-result v2

    move v0, v1

    .line 328
    :goto_1
    if-ge v1, v3, :cond_0

    .line 329
    aget-object v5, v4, v1

    .line 330
    iget-boolean v6, v5, Landroid/support/v4/app/aY;->acT:Z

    if-eqz v6, :cond_4

    .line 336
    :cond_2
    :goto_2
    iget-boolean v6, v5, Landroid/support/v4/app/aY;->acT:Z

    if-nez v6, :cond_6

    .line 339
    invoke-virtual {v5}, Landroid/support/v4/app/aY;->aql()V

    .line 340
    iget-object v6, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    iget-object v5, v5, Landroid/support/v4/app/aY;->acS:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/support/v4/a/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 325
    :cond_3
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/k;->ahi(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aY;

    aput-object v0, v4, v2

    .line 324
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0

    .line 330
    :cond_4
    if-eqz v2, :cond_2

    .line 331
    iget-boolean v6, v5, Landroid/support/v4/app/aY;->mStarted:Z

    if-eqz v6, :cond_5

    .line 334
    :goto_4
    invoke-virtual {v5}, Landroid/support/v4/app/aY;->aqn()V

    goto :goto_2

    .line 332
    :cond_5
    invoke-virtual {v5}, Landroid/support/v4/app/aY;->aqq()V

    goto :goto_4

    .line 337
    :cond_6
    const/4 v0, 0x1

    goto :goto_3

    .line 346
    :cond_7
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    return-object v0
.end method

.method akh()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aql()V

    .line 286
    return-void

    .line 283
    :cond_0
    return-void
.end method

.method aki(Landroid/support/v4/a/k;)V
    .locals 3

    .prologue
    .line 352
    if-nez p1, :cond_1

    .line 357
    :cond_0
    iput-object p1, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    .line 358
    return-void

    .line 353
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/support/v4/a/k;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 354
    invoke-virtual {p1, v1}, Landroid/support/v4/a/k;->ahi(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aY;

    invoke-virtual {v0, p0}, Landroid/support/v4/app/aY;->aqm(Landroid/support/v4/app/p;)V

    .line 353
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method akj(Ljava/lang/String;ZZ)Landroid/support/v4/app/aY;
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    if-eqz v0, :cond_2

    .line 307
    :goto_0
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aY;

    .line 308
    if-eqz v0, :cond_3

    .line 311
    :cond_0
    if-nez p2, :cond_4

    .line 314
    :cond_1
    :goto_1
    return-object v0

    .line 305
    :cond_2
    new-instance v0, Landroid/support/v4/a/k;

    invoke-direct {v0}, Landroid/support/v4/a/k;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    goto :goto_0

    .line 308
    :cond_3
    if-eqz p3, :cond_0

    .line 309
    new-instance v0, Landroid/support/v4/app/aY;

    invoke-direct {v0, p1, p0, p2}, Landroid/support/v4/app/aY;-><init>(Ljava/lang/String;Landroid/support/v4/app/p;Z)V

    .line 310
    iget-object v1, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    invoke-virtual {v1, p1, v0}, Landroid/support/v4/a/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 311
    :cond_4
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Landroid/support/v4/app/aY;->mStarted:Z

    if-nez v1, :cond_1

    .line 312
    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aqq()V

    goto :goto_1
.end method

.method public akk(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 84
    return-void
.end method

.method akl(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 361
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mLoadersStarted="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 362
    iget-boolean v0, p0, Landroid/support/v4/app/p;->XH:Z

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 363
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    if-nez v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 364
    :cond_0
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "Loader Manager "

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    const-string/jumbo v0, ":"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 367
    iget-object v0, p0, Landroid/support/v4/app/p;->XD:Landroid/support/v4/app/aY;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2, p3, p4}, Landroid/support/v4/app/aY;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method public akm()V
    .locals 0

    .prologue
    .line 114
    return-void
.end method

.method akn()Landroid/support/v4/app/aV;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Landroid/support/v4/app/p;->XC:Landroid/support/v4/app/aV;

    return-object v0
.end method

.method ako()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Landroid/support/v4/app/p;->XG:Z

    return v0
.end method

.method akp()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 289
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    if-nez v0, :cond_1

    .line 301
    :cond_0
    return-void

    .line 290
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    invoke-virtual {v0}, Landroid/support/v4/a/k;->size()I

    move-result v3

    .line 291
    new-array v4, v3, [Landroid/support/v4/app/aY;

    .line 292
    add-int/lit8 v0, v3, -0x1

    move v2, v0

    :goto_0
    if-gez v2, :cond_2

    move v0, v1

    .line 295
    :goto_1
    if-ge v0, v3, :cond_0

    .line 296
    aget-object v1, v4, v0

    .line 297
    invoke-virtual {v1}, Landroid/support/v4/app/aY;->aqo()V

    .line 298
    invoke-virtual {v1}, Landroid/support/v4/app/aY;->aqs()V

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 293
    :cond_2
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    invoke-virtual {v0, v2}, Landroid/support/v4/a/k;->ahi(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aY;

    aput-object v0, v4, v2

    .line 292
    add-int/lit8 v0, v2, -0x1

    move v2, v0

    goto :goto_0
.end method

.method public akq()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Landroid/support/v4/app/p;->XF:I

    return v0
.end method

.method public akr(Landroid/support/v4/app/e;)Z
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method public aks()Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method akt(Landroid/support/v4/app/e;)V
    .locals 0

    .prologue
    .line 230
    return-void
.end method

.method public aku()Z
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x1

    return v0
.end method

.method akv(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    if-nez v0, :cond_1

    .line 227
    :cond_0
    :goto_0
    return-void

    .line 221
    :cond_1
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/aY;

    .line 222
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Landroid/support/v4/app/aY;->acT:Z

    if-nez v1, :cond_0

    .line 223
    invoke-virtual {v0}, Landroid/support/v4/app/aY;->aql()V

    .line 224
    iget-object v0, p0, Landroid/support/v4/app/p;->XE:Landroid/support/v4/a/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/a/k;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public akw(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 185
    const/4 v0, 0x0

    return-object v0
.end method

.method public akx()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v4/app/p;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public aky(Landroid/support/v4/app/e;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 130
    const/4 v0, -0x1

    if-ne p3, v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/support/v4/app/p;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 135
    return-void

    .line 131
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Starting activity with a requestCode requires a FragmentActivity host"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Landroid/support/v4/app/p;->XB:Landroid/app/Activity;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Landroid/support/v4/app/p;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Landroid/support/v4/app/p;->mHandler:Landroid/os/Handler;

    return-object v0
.end method
