.class public Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/apps/nexuslauncher/smartspace/c;
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Ljava/lang/Runnable;


# instance fields
.field private dA:Landroid/widget/TextView;

.field private final dB:Landroid/text/TextPaint;

.field private dC:Landroid/view/View;

.field private dD:Landroid/widget/TextView;

.field private dE:Landroid/view/ViewGroup;

.field private dF:Landroid/widget/ImageView;

.field private dG:Landroid/widget/TextView;

.field private final dH:Landroid/content/res/ColorStateList;

.field private final dm:I

.field private dn:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

.field private do:Landroid/view/ViewGroup;

.field private final dp:Lcom/google/android/apps/nexuslauncher/smartspace/f;

.field private dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

.field private dr:Lcom/android/launcher3/BubbleTextView;

.field private ds:Z

.field private dt:Z

.field private final du:Landroid/view/View$OnClickListener;

.field private final dv:Landroid/view/View$OnClickListener;

.field private dw:Landroid/widget/ImageView;

.field private dx:Landroid/widget/TextView;

.field private dy:Landroid/view/ViewGroup;

.field private dz:Landroid/widget/ImageView;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .prologue
    .line 99
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/h;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/h;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->du:Landroid/view/View$OnClickListener;

    .line 73
    new-instance v0, Lcom/google/android/apps/nexuslauncher/smartspace/i;

    invoke-direct {v0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/i;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dv:Landroid/view/View$OnClickListener;

    .line 101
    invoke-static {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dp:Lcom/google/android/apps/nexuslauncher/smartspace/f;

    .line 102
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    .line 104
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01002c

    invoke-static {v0, v1}, Lcom/android/launcher3/util/Themes;->getAttrColor(Landroid/content/Context;I)I

    move-result v0

    .line 103
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dH:Landroid/content/res/ColorStateList;

    .line 105
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dp:Lcom/google/android/apps/nexuslauncher/smartspace/f;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ds:Z

    .line 106
    const v0, 0x7f020007

    iput v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dm:I

    .line 107
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dB:Landroid/text/TextPaint;

    .line 108
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dB:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b00b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 109
    return-void
.end method

.method private cj(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V
    .locals 6

    .prologue
    .line 215
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v0

    .line 216
    iget-boolean v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dt:Z

    if-eq v1, v0, :cond_0

    .line 217
    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dt:Z

    .line 218
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cs()V

    .line 221
    :cond_0
    invoke-virtual {p0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->co()Landroid/view/View$OnLongClickListener;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 224
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dt:Z

    if-eqz v0, :cond_3

    .line 225
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ck(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 230
    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 231
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cv()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cw()J

    move-result-wide v2

    .line 233
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v4, 0xea60

    rem-long/2addr v0, v4

    const-wide/32 v4, 0xee48

    sub-long v0, v4, v0

    .line 234
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    .line 235
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 237
    :cond_2
    return-void

    .line 227
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cl(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    goto :goto_0
.end method

.method private ck(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 271
    iget v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dm:I

    invoke-virtual {p0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setBackgroundResource(I)V

    .line 274
    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 275
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 276
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cv()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 277
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dD:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    :goto_0
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dD:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cx(Z)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 283
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cy()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 284
    :cond_1
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dx:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cy()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dx:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cx(Z)Landroid/text/TextUtils$TruncateAt;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 286
    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 287
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dw:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cz()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/dynamicui/WallpaperColorInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/dynamicui/WallpaperColorInfo;->supportsDarkText()Z

    move-result v3

    .line 287
    if-eqz v3, :cond_2

    .line 289
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dH:Landroid/content/res/ColorStateList;

    .line 287
    :cond_2
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 290
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dw:Landroid/widget/ImageView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 294
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cR()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 295
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dy:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dy:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dv:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dy:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->co()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 298
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dA:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dz:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 303
    :goto_1
    return-void

    .line 279
    :cond_4
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dD:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dy:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private cl(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0, v2}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->setBackgroundResource(I)V

    .line 250
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dn:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->du:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 251
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dn:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->co()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 253
    invoke-virtual {p1}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cR()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dC:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dE:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 256
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dE:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dv:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dE:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->co()Landroid/view/View$OnLongClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dG:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dF:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dO:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 264
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dE:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dC:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private cm()V
    .locals 1

    .prologue
    .line 169
    const v0, 0x7f0e0078

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dD:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f0e007b

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dx:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f0e007a

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dw:Landroid/widget/ImageView;

    .line 172
    const v0, 0x7f0e0076

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dF:Landroid/widget/ImageView;

    .line 173
    const v0, 0x7f0e007e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dz:Landroid/widget/ImageView;

    .line 174
    const v0, 0x7f0e0072

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->do:Landroid/view/ViewGroup;

    .line 175
    const v0, 0x7f0e0075

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dE:Landroid/view/ViewGroup;

    .line 176
    const v0, 0x7f0e007c

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dy:Landroid/view/ViewGroup;

    .line 177
    const v0, 0x7f0e0077

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dG:Landroid/widget/TextView;

    .line 178
    const v0, 0x7f0e007f

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dA:Landroid/widget/TextView;

    .line 179
    const v0, 0x7f0e0073

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dn:Lcom/google/android/apps/nexuslauncher/graphics/IcuDateTextView;

    .line 180
    const v0, 0x7f0e0074

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dC:Landroid/view/View;

    .line 181
    return-void
.end method

.method private cn()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 306
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    .line 307
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 308
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b00b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 307
    sub-int/2addr v1, v2

    .line 309
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dB:Landroid/text/TextPaint;

    invoke-virtual {v0, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cA(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    .line 310
    invoke-virtual {v0, v4}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cB(Z)Ljava/lang/String;

    move-result-object v3

    .line 311
    iget-object v4, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dB:Landroid/text/TextPaint;

    int-to-float v1, v1

    sub-float/2addr v1, v2

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 310
    invoke-static {v3, v4, v1, v2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cC(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private co()Landroid/view/View$OnLongClickListener;
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ds:Z

    if-eqz v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private cs()V
    .locals 4

    .prologue
    .line 240
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->do:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->indexOfChild(Landroid/view/View;)I

    move-result v1

    .line 241
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->do:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->removeView(Landroid/view/View;)V

    .line 242
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dt:Z

    if-eqz v0, :cond_0

    .line 243
    const v0, 0x7f04002d

    :goto_0
    const/4 v3, 0x0

    .line 242
    invoke-virtual {v2, v0, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 244
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->addView(Landroid/view/View;I)V

    .line 245
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cm()V

    .line 246
    return-void

    .line 243
    :cond_0
    const v0, 0x7f04002c

    goto :goto_0
.end method

.method static synthetic ct(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)Lcom/google/android/apps/nexuslauncher/smartspace/e;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    return-object v0
.end method


# virtual methods
.method protected final cp(I)V
    .locals 1

    .prologue
    .line 364
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getUserEventDispatcher()Lcom/android/launcher3/logging/UserEventDispatcher;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/logging/UserEventDispatcherImpl;->bp(I)V

    .line 366
    return-void
.end method

.method public cq()V
    .locals 2

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dp:Lcom/google/android/apps/nexuslauncher/smartspace/f;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->cY()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->ds:Z

    .line 207
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cr(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 212
    :goto_0
    return-void

    .line 210
    :cond_0
    const-string/jumbo v0, "SmartspaceView"

    const-string/jumbo v1, "onGsaChanged but no data present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public cr(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-object p1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    .line 195
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->do:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 196
    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cj(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 197
    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->do:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->do:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 200
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->do:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 202
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 195
    goto :goto_0
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->invalidate()V

    .line 127
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 132
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dp:Lcom/google/android/apps/nexuslauncher/smartspace/f;

    invoke-virtual {v0, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->da(Lcom/google/android/apps/nexuslauncher/smartspace/c;)V

    .line 133
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 317
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 318
    const/16 v0, 0x2712

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cp(I)V

    .line 319
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cu(Landroid/view/View;)V

    .line 321
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 148
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 149
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->get(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/smartspace/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/nexuslauncher/smartspace/f;->da(Lcom/google/android/apps/nexuslauncher/smartspace/c;)V

    .line 150
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 155
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cm()V

    .line 157
    new-instance v1, Lcom/google/android/apps/nexuslauncher/smartspace/j;

    invoke-direct {v1, p0}, Lcom/google/android/apps/nexuslauncher/smartspace/j;-><init>(Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;)V

    .line 163
    const v0, 0x7f0e006e

    invoke-virtual {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/BubbleTextView;

    iput-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dr:Lcom/android/launcher3/BubbleTextView;

    .line 164
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dr:Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setTag(Ljava/lang/Object;)V

    .line 165
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dr:Lcom/android/launcher3/BubbleTextView;

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/BubbleTextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .prologue
    .line 137
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 138
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/e;->cS()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    iget-object v0, v0, Lcom/google/android/apps/nexuslauncher/smartspace/e;->dP:Lcom/google/android/apps/nexuslauncher/smartspace/d;

    invoke-virtual {v0}, Lcom/google/android/apps/nexuslauncher/smartspace/d;->cv()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cn()Ljava/lang/String;

    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dD:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 141
    iget-object v1, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dD:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 325
    invoke-virtual {p0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    .line 326
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 327
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v2

    const v3, 0x7f040024

    const/4 v4, 0x0

    .line 326
    invoke-virtual {v0, v3, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/popup/PopupContainerWithArrow;

    .line 328
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->setVisibility(I)V

    .line 329
    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/dragndrop/DragLayer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/dragndrop/DragLayer;->addView(Landroid/view/View;)V

    .line 330
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 331
    new-instance v2, Lcom/google/android/apps/nexuslauncher/smartspace/b;

    invoke-direct {v2}, Lcom/google/android/apps/nexuslauncher/smartspace/b;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v2, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dr:Lcom/android/launcher3/BubbleTextView;

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 333
    sget-object v4, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 332
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/launcher3/popup/PopupContainerWithArrow;->populateAndShow(Lcom/android/launcher3/BubbleTextView;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 334
    return v5
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 122
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cj(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 115
    :cond_0
    return-void
.end method

.method public run()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->dq:Lcom/google/android/apps/nexuslauncher/smartspace/e;

    invoke-direct {p0, v0}, Lcom/google/android/apps/nexuslauncher/smartspace/SmartspaceView;->cj(Lcom/google/android/apps/nexuslauncher/smartspace/e;)V

    .line 343
    :cond_0
    return-void
.end method

.method public setPadding(IIII)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 186
    invoke-super {p0, v0, v0, v0, v0}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 187
    return-void
.end method
