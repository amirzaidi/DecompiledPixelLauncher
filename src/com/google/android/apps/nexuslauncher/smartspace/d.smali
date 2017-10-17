.class public Lcom/google/android/apps/nexuslauncher/smartspace/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

.field private final dJ:J

.field private final dK:I

.field private final dL:Z

.field private final dM:Z

.field private final dN:J

.field private final mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/b/b;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJJI)V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->mContext:Landroid/content/Context;

    .line 54
    iput-object p2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 55
    iput-boolean p4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dM:Z

    .line 56
    iput-object p3, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->mIntent:Landroid/content/Intent;

    .line 57
    iput-object p5, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->mIcon:Landroid/graphics/Bitmap;

    .line 58
    iput-wide p7, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dN:J

    .line 59
    iput-wide p9, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dJ:J

    .line 60
    iput p11, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dK:I

    .line 61
    iput-boolean p6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dL:Z

    .line 62
    return-void
.end method

.method static cD(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/b/i;Z)Lcom/google/android/apps/nexuslauncher/smartspace/d;
    .locals 14

    .prologue
    .line 294
    if-nez p1, :cond_0

    .line 295
    const/4 v0, 0x0

    return-object v0

    .line 298
    :cond_0
    :try_start_0
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cZ:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 299
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cZ:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    move-object v13, v0

    .line 300
    :goto_0
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    if-eqz v0, :cond_3

    .line 301
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 302
    :goto_1
    if-eqz v1, :cond_5

    if-nez p2, :cond_1

    iget-boolean v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    if-eqz v0, :cond_4

    .line 303
    invoke-static {p0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->supportsDarkText()Z

    move-result v0

    .line 302
    :goto_2
    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_6

    .line 304
    :cond_1
    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    .line 305
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    int-to-float v0, v0

    sget-object v2, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v3, v0, v2}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 306
    invoke-static {p0}, Lcom/android/launcher3/graphics/ShadowGenerator;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/graphics/ShadowGenerator;

    move-result-object v0

    .line 307
    const/4 v2, 0x0

    const/16 v4, 0x14

    const/16 v5, 0x37

    .line 306
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/graphics/ShadowGenerator;->recreateIcon(Landroid/graphics/Bitmap;ZLandroid/graphics/BlurMaskFilter;II)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v6, v1

    .line 309
    :goto_3
    new-instance v1, Lcom/google/android/apps/nexuslauncher/smartspace/d;

    iget-object v3, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 310
    iget-boolean v7, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    iget-wide v8, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->df:J

    iget-wide v10, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dh:J

    .line 311
    iget v12, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dg:I

    move-object v2, p0

    move-object v4, v13

    move/from16 v5, p2

    .line 309
    invoke-direct/range {v1 .. v12}, Lcom/google/android/apps/nexuslauncher/smartspace/d;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/b/b;Landroid/content/Intent;ZLandroid/graphics/Bitmap;ZJJI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 299
    :cond_2
    const/4 v0, 0x0

    move-object v13, v0

    goto :goto_0

    .line 301
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 302
    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move-object v6, v1

    .line 303
    goto :goto_3

    .line 312
    :catch_0
    move-exception v0

    .line 313
    const-string/jumbo v1, "SmartspaceCard"

    const-string/jumbo v2, "from proto"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 314
    const/4 v0, 0x0

    return-object v0

    :cond_6
    move-object v6, v1

    goto :goto_3
.end method

.method private cE(Lcom/google/android/apps/nexuslauncher/smartspace/b/e;)Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 228
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cJ(Lcom/google/android/apps/nexuslauncher/smartspace/b/e;)I

    move-result v0

    .line 230
    const/16 v1, 0x3c

    if-lt v0, v1, :cond_0

    .line 231
    int-to-float v0, v0

    const/high16 v1, 0x42700000    # 60.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 232
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 233
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const v3, 0x7f130001

    .line 232
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 238
    :goto_0
    return-object v0

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 236
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/high16 v3, 0x7f130000

    .line 235
    invoke-virtual {v1, v3, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private cG(Z)Lcom/google/android/apps/nexuslauncher/smartspace/b/d;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cH()Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    move-result-object v0

    .line 154
    if-eqz v0, :cond_1

    .line 155
    if-eqz p1, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    goto :goto_0

    .line 157
    :cond_1
    return-object v1
.end method

.method private cH()Lcom/google/android/apps/nexuslauncher/smartspace/b/c;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-wide v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    .line 140
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-wide v4, v4, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    iget-object v6, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-wide v6, v6, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cE:J

    add-long/2addr v4, v6

    .line 141
    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v2, :cond_0

    .line 142
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cB:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    return-object v0

    .line 143
    :cond_0
    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v0, :cond_1

    .line 144
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cH:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    return-object v0

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    if-eqz v0, :cond_2

    .line 146
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cC:Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    return-object v0

    .line 148
    :cond_2
    return-object v8
.end method

.method private cJ(Lcom/google/android/apps/nexuslauncher/smartspace/b/e;)I
    .locals 4

    .prologue
    .line 197
    invoke-virtual {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cI(Lcom/google/android/apps/nexuslauncher/smartspace/b/e;)J

    move-result-wide v0

    long-to-double v0, v0

    const-wide v2, 0x40ed4c0000000000L    # 60000.0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method private cK([Lcom/google/android/apps/nexuslauncher/smartspace/b/e;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    array-length v1, p1

    new-array v2, v1, [Ljava/lang/String;

    .line 206
    :goto_0
    array-length v1, v2

    if-ge v0, v1, :cond_2

    .line 207
    aget-object v1, p1, v0

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    packed-switch v1, :pswitch_data_0

    .line 221
    const-string/jumbo v1, ""

    aput-object v1, v2, v0

    .line 206
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 209
    :pswitch_0
    if-eqz p2, :cond_0

    aget-object v1, p1, v0

    iget v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cS:I

    if-eqz v1, :cond_0

    .line 211
    aput-object p2, v2, v0

    goto :goto_1

    .line 213
    :cond_0
    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    if-eqz v1, :cond_1

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    :goto_2
    aput-object v1, v2, v0

    goto :goto_1

    :cond_1
    const-string/jumbo v1, ""

    goto :goto_2

    .line 218
    :pswitch_1
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cE(Lcom/google/android/apps/nexuslauncher/smartspace/b/e;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v0

    goto :goto_1

    .line 224
    :cond_2
    return-object v2

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private cL(Lcom/google/android/apps/nexuslauncher/smartspace/b/d;)Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 170
    if-eqz p1, :cond_0

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    array-length v1, v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 170
    :cond_0
    return v0
.end method

.method private cN(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cO(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cO(ZLjava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cG(Z)Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    move-result-object v1

    .line 243
    if-eqz v1, :cond_2

    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 244
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cN:Ljava/lang/String;

    .line 245
    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cL(Lcom/google/android/apps/nexuslauncher/smartspace/b/d;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    invoke-direct {p0, v1, p2}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cK([Lcom/google/android/apps/nexuslauncher/smartspace/b/e;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 248
    :cond_0
    if-eqz v0, :cond_1

    :goto_0
    return-object v0

    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0

    .line 251
    :cond_2
    const-string/jumbo v0, ""

    return-object v0
.end method

.method private static cP(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 341
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 342
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, p1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 343
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    .line 344
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 343
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 345
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 346
    invoke-virtual {v2, p0, v4, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 347
    return-object v1
.end method

.method static cQ(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/smartspace/a;)Lcom/google/android/apps/nexuslauncher/smartspace/b/i;
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 273
    if-nez p1, :cond_0

    .line 274
    return-object v0

    .line 276
    :cond_0
    new-instance v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;-><init>()V

    .line 277
    invoke-virtual {p1, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/a;->ci(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    if-eqz v0, :cond_2

    iget-boolean v2, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dj:Z

    if-eqz v2, :cond_5

    .line 279
    const/4 v2, -0x1

    invoke-static {v0, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cP(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v2, v0

    .line 281
    :goto_0
    if-eqz v2, :cond_3

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    :goto_1
    iput-object v0, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dd:[B

    .line 282
    if-eqz v2, :cond_4

    new-instance v0, Lcom/google/android/apps/nexuslauncher/a/c;

    invoke-direct {v0}, Lcom/google/android/apps/nexuslauncher/a/c;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/android/apps/nexuslauncher/a/c;->dB(Landroid/graphics/Bitmap;)Z

    move-result v0

    :goto_2
    iput-boolean v0, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dc:Z

    .line 283
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a;->di:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iput-object v0, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->de:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    .line 284
    iget-wide v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dl:J

    iput-wide v0, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->df:J

    .line 285
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dk:Landroid/content/pm/PackageInfo;

    if-eqz v0, :cond_1

    .line 286
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dk:Landroid/content/pm/PackageInfo;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    iput v0, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dg:I

    .line 287
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/a;->dk:Landroid/content/pm/PackageInfo;

    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    iput-wide v0, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/i;->dh:J

    .line 289
    :cond_1
    return-object v3

    :cond_2
    move-object v2, v0

    .line 278
    goto :goto_0

    .line 281
    :cond_3
    new-array v0, v1, [B

    goto :goto_1

    :cond_4
    move v0, v1

    .line 282
    goto :goto_2

    :cond_5
    move-object v2, v0

    goto :goto_0
.end method


# virtual methods
.method public cA(Z)Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string/jumbo v0, ""

    .line 114
    invoke-direct {p0, p1, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cO(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cB(Z)Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cG(Z)Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    .line 119
    if-eqz v1, :cond_1

    .line 120
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 121
    aget-object v2, v1, v0

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cS:I

    if-eqz v2, :cond_0

    .line 122
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cR:Ljava/lang/String;

    return-object v0

    .line 120
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 126
    :cond_1
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public cC(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cO(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cF()J
    .locals 2

    .prologue
    .line 260
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cF:Lcom/google/android/apps/nexuslauncher/smartspace/b/h;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/h;->da:J

    return-wide v0
.end method

.method cI(Lcom/google/android/apps/nexuslauncher/smartspace/b/e;)J
    .locals 4

    .prologue
    .line 188
    iget v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    .line 189
    const/4 v1, 0x2

    .line 188
    if-ne v0, v1, :cond_0

    .line 190
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-wide v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cE:J

    add-long/2addr v0, v2

    .line 192
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 193
    sub-long v0, v2, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    return-wide v0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-wide v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cD:J

    goto :goto_0
.end method

.method public cM()Z
    .locals 4

    .prologue
    .line 256
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cF()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cu(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    if-nez v0, :cond_0

    .line 320
    const-string/jumbo v0, "SmartspaceCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "no tap action available: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void

    .line 323
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 325
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dI:Lcom/google/android/apps/nexuslauncher/smartspace/b/b;

    iget-object v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/b/b;->cG:Lcom/google/android/apps/nexuslauncher/smartspace/b/g;

    iget v2, v2, Lcom/google/android/apps/nexuslauncher/smartspace/b/g;->cY:I

    packed-switch v2, :pswitch_data_0

    .line 335
    const-string/jumbo v0, "SmartspaceCard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unrecognized tap action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    :goto_0
    return-void

    .line 327
    :pswitch_0
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 328
    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->getViewBounds(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 329
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 332
    :pswitch_1
    invoke-virtual {v1, p1, v0, v3}, Lcom/android/launcher3/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Lcom/android/launcher3/ItemInfo;)Z

    goto :goto_0

    .line 325
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public cv()Z
    .locals 2

    .prologue
    .line 162
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cH()Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1

    .line 164
    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cL(Lcom/google/android/apps/nexuslauncher/smartspace/b/d;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cL(Lcom/google/android/apps/nexuslauncher/smartspace/b/d;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method cw()J
    .locals 6

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cH()Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    move-result-object v0

    .line 176
    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    invoke-direct {p0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cL(Lcom/google/android/apps/nexuslauncher/smartspace/b/d;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 177
    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    iget-object v1, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cO:[Lcom/google/android/apps/nexuslauncher/smartspace/b/e;

    const/4 v0, 0x0

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_2

    aget-object v3, v1, v0

    .line 178
    iget v4, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 179
    iget v4, v3, Lcom/google/android/apps/nexuslauncher/smartspace/b/e;->cQ:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 180
    :cond_0
    invoke-virtual {p0, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cI(Lcom/google/android/apps/nexuslauncher/smartspace/b/e;)J

    move-result-wide v0

    return-wide v0

    .line 177
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_2
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public cx(Z)Landroid/text/TextUtils$TruncateAt;
    .locals 3

    .prologue
    .line 93
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cH()Lcom/google/android/apps/nexuslauncher/smartspace/b/c;

    move-result-object v1

    .line 94
    if-eqz v1, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 96
    if-eqz p1, :cond_2

    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    if-eqz v2, :cond_2

    .line 97
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cL:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cP:I

    .line 101
    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 109
    :cond_1
    :pswitch_0
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    .line 98
    :cond_2
    if-nez p1, :cond_0

    iget-object v2, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    if-eqz v2, :cond_0

    .line 99
    iget-object v0, v1, Lcom/google/android/apps/nexuslauncher/smartspace/b/c;->cM:Lcom/google/android/apps/nexuslauncher/smartspace/b/d;

    iget v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/b/d;->cP:I

    goto :goto_0

    .line 103
    :pswitch_1
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    .line 105
    :pswitch_2
    sget-object v0, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    return-object v0

    .line 101
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public cy()Ljava/lang/String;
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cN(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public cz()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dL:Z

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cN(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "title:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    const-string/jumbo v1, " expires:"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 266
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cF()J

    move-result-wide v2

    .line 265
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    const-string/jumbo v1, " published:"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 267
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dN:J

    .line 265
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    const-string/jumbo v1, " gsaVersion:"

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 268
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dK:I

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    const-string/jumbo v1, " gsaUpdateTime: "

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 269
    iget-wide v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/d;->dJ:J

    .line 265
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
