.class public Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

.field mPid:I

.field mRamGraph:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;

.field mText:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/launcher3/testing/WeightWatcher;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/testing/WeightWatcher;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;-><init>(Lcom/android/launcher3/testing/WeightWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Lcom/android/launcher3/testing/WeightWatcher;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 141
    iput-object p1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    .line 142
    invoke-direct {p0, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 146
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    .line 147
    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 148
    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v0

    invoke-virtual {v1, v4, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 149
    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    const/16 v2, 0x13

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 151
    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    .line 152
    invoke-virtual {p0, v1, v4, v1, v4}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->setPadding(IIII)V

    .line 154
    new-instance v1, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {p0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;-><init>(Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;

    .line 156
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 158
    const/high16 v2, 0x41600000    # 14.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    .line 159
    const/high16 v3, 0x3f800000    # 1.0f

    .line 156
    invoke-direct {v1, v4, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    .line 162
    iget-object v2, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v0

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 164
    const/4 v2, 0x0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 165
    const/high16 v2, 0x43480000    # 200.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 166
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    return-void
.end method


# virtual methods
.method public getPid()I
    .locals 1

    .prologue
    .line 179
    iget v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mPid:I

    return v0
.end method

.method public getUptimeString()Ljava/lang/String;
    .locals 14

    .prologue
    const-wide/32 v6, 0x15180

    const-wide/16 v12, 0xe10

    const-wide/16 v10, 0x3c

    const-wide/16 v8, 0x0

    .line 183
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->getUptime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 185
    div-long v4, v0, v6

    .line 186
    cmp-long v3, v4, v8

    if-lez v3, :cond_0

    .line 187
    mul-long/2addr v6, v4

    sub-long/2addr v0, v6

    .line 188
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 189
    const-string/jumbo v3, "d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    :cond_0
    div-long v4, v0, v12

    .line 193
    cmp-long v3, v4, v8

    if-lez v3, :cond_1

    .line 194
    mul-long v6, v4, v12

    sub-long/2addr v0, v6

    .line 195
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 196
    const-string/jumbo v3, "h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    :cond_1
    div-long v4, v0, v10

    .line 200
    cmp-long v3, v4, v8

    if-lez v3, :cond_2

    .line 201
    mul-long v6, v4, v10

    sub-long/2addr v0, v6

    .line 202
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 203
    const-string/jumbo v3, "m"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 206
    :cond_2
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 207
    const-string/jumbo v0, "s"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setPid(I)V
    .locals 3

    .prologue
    .line 170
    iput p1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mPid:I

    .line 171
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    iget-object v0, v0, Lcom/android/launcher3/testing/WeightWatcher;->mMemoryService:Lcom/android/launcher3/testing/MemoryTracker;

    iget v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/testing/MemoryTracker;->getMemInfo(I)Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    .line 172
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    if-nez v0, :cond_0

    .line 173
    const-string/jumbo v0, "WeightWatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing info for pid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", removing view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->this$0:Lcom/android/launcher3/testing/WeightWatcher;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/WeightWatcher;->initViews()V

    .line 176
    :cond_0
    return-void
.end method

.method public update()V
    .locals 4

    .prologue
    .line 214
    iget-object v1, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mText:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 215
    iget v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    if-ne v0, v3, :cond_0

    .line 216
    const-string/jumbo v0, "/A"

    .line 214
    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    const-string/jumbo v2, ") up "

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->getUptimeString()Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    const-string/jumbo v2, " P="

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentPss:J

    .line 214
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    const-string/jumbo v2, " U="

    .line 214
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 220
    iget-object v2, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mMemInfo:Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/testing/MemoryTracker$ProcessMemInfo;->currentUss:J

    .line 214
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher;->mRamGraph:Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;

    invoke-virtual {v0}, Lcom/android/launcher3/testing/WeightWatcher$ProcessWatcher$GraphView;->invalidate()V

    .line 223
    return-void

    .line 217
    :cond_0
    const-string/jumbo v0, "/S"

    goto :goto_0
.end method
