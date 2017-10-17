.class public Lcom/android/launcher3/FocusHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;
    .locals 1

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 490
    invoke-virtual {v0}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v0

    return-object v0
.end method

.method private static getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 551
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    move v0, v1

    .line 552
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 553
    if-eqz p1, :cond_0

    const/4 v2, -0x1

    move v3, v2

    .line 554
    :goto_1
    if-eqz p1, :cond_1

    add-int/lit8 v2, v4, -0x1

    :goto_2
    if-ltz v2, :cond_3

    if-ge v2, v4, :cond_3

    .line 555
    invoke-virtual {p0, v2, v0}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 556
    return-object v5

    .line 553
    :cond_0
    const/4 v2, 0x1

    move v3, v2

    goto :goto_1

    :cond_1
    move v2, v1

    .line 554
    goto :goto_2

    :cond_2
    add-int/2addr v2, v3

    goto :goto_2

    .line 552
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 560
    :cond_4
    return-object v7
.end method

.method private static getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v1, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v4

    .line 567
    invoke-virtual {p0}, Lcom/android/launcher3/CellLayout;->getCountY()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v3, v0

    :goto_0
    if-ltz v3, :cond_4

    .line 568
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    move v2, v0

    .line 569
    :goto_1
    if-eqz p1, :cond_1

    move v0, v1

    :goto_2
    if-ltz v0, :cond_3

    if-ge v0, v4, :cond_3

    .line 570
    invoke-virtual {p0, v0, v3}, Lcom/android/launcher3/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->isFocusable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 571
    return-object v5

    .line 568
    :cond_0
    const/4 v0, -0x1

    move v2, v0

    goto :goto_1

    .line 569
    :cond_1
    add-int/lit8 v0, v4, -0x1

    goto :goto_2

    :cond_2
    add-int/2addr v0, v2

    goto :goto_2

    .line 567
    :cond_3
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_0

    .line 575
    :cond_4
    return-object v7
.end method

.method static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v7, 0x0

    .line 202
    invoke-static {p1}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v10

    .line 203
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    xor-int/lit8 v0, v10, 0x1

    if-eqz v0, :cond_1

    .line 204
    :cond_0
    return v10

    .line 207
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    .line 208
    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v8

    .line 217
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0e0025

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/launcher3/Workspace;

    .line 218
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 219
    invoke-virtual {v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 221
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/ItemInfo;

    .line 222
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getNextPage()I

    move-result v3

    .line 223
    invoke-virtual {v6}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v4

    .line 224
    invoke-virtual {v0, p0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 225
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v2, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellX:I

    .line 228
    invoke-virtual {v6, v3}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 229
    if-nez v2, :cond_2

    .line 233
    return v10

    .line 235
    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v9

    .line 240
    const/16 v11, 0x13

    if-ne p1, v11, :cond_6

    .line 241
    invoke-virtual {v8}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    .line 240
    if-eqz v11, :cond_6

    .line 242
    invoke-static {v2, v1, v8}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DeviceProfile;)[[I

    move-result-object v1

    .line 243
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int v2, v5, v0

    move-object v8, v9

    move v0, p1

    .line 262
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v5

    .line 261
    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v2

    .line 265
    packed-switch v2, :pswitch_data_0

    :pswitch_0
    move-object v1, v7

    .line 312
    :goto_1
    if-ne v8, v9, :cond_3

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 313
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    sub-int/2addr v2, v3

    .line 315
    :cond_3
    if-eqz v8, :cond_5

    .line 316
    if-nez v1, :cond_4

    if-ltz v2, :cond_4

    .line 317
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 319
    :cond_4
    if-eqz v1, :cond_5

    .line 320
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 321
    invoke-static {v0, p0}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    .line 324
    :cond_5
    return v10

    .line 245
    :cond_6
    const/16 v11, 0x15

    if-ne p1, v11, :cond_7

    .line 246
    invoke-virtual {v8}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v11

    .line 245
    if-eqz v11, :cond_7

    .line 247
    invoke-static {v2, v1, v8}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DeviceProfile;)[[I

    move-result-object v1

    .line 248
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int v2, v5, v0

    move-object v8, v9

    move v0, p1

    .line 249
    goto :goto_0

    .line 250
    :cond_7
    const/16 v2, 0x16

    if-ne p1, v2, :cond_8

    .line 251
    invoke-virtual {v8}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    .line 250
    if-eqz v2, :cond_8

    .line 252
    const/16 p1, 0x5d

    move-object v1, v7

    move-object v8, v7

    move v2, v5

    move v0, p1

    goto :goto_0

    .line 256
    :cond_8
    invoke-static {v1}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v1

    move-object v8, v0

    move v2, v5

    move v0, p1

    .line 257
    goto :goto_0

    .line 267
    :pswitch_1
    add-int/lit8 v1, v3, 0x1

    invoke-static {v6, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 268
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 271
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    move-object v1, v7

    .line 272
    goto :goto_1

    .line 274
    :pswitch_2
    add-int/lit8 v1, v3, -0x1

    invoke-static {v6, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 275
    invoke-virtual {v8, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 278
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    move-object v1, v7

    .line 279
    goto :goto_1

    .line 281
    :pswitch_3
    add-int/lit8 v1, v3, -0x1

    invoke-static {v6, v1}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v8

    .line 282
    invoke-virtual {v8}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v8, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 285
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    move-object v1, v7

    .line 286
    goto/16 :goto_1

    .line 290
    :pswitch_4
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 292
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 293
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 295
    if-eqz v1, :cond_9

    .line 296
    add-int/lit8 v1, v3, -0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_9
    move-object v1, v7

    .line 298
    goto/16 :goto_1

    .line 302
    :pswitch_5
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 304
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout;

    .line 305
    invoke-virtual {v1}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v1

    invoke-virtual {v1, v12}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget-boolean v1, v1, Lcom/android/launcher3/CellLayout$LayoutParams;->isFullscreen:Z

    .line 307
    if-eqz v1, :cond_a

    .line 308
    add-int/lit8 v1, v3, 0x1

    invoke-virtual {v6, v1}, Lcom/android/launcher3/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    :cond_a
    move-object v1, v7

    .line 310
    goto/16 :goto_1

    .line 265
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_5
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 18

    .prologue
    .line 331
    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/util/FocusLogic;->shouldConsume(I)Z

    move-result v15

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    xor-int/lit8 v2, v15, 0x1

    if-eqz v2, :cond_1

    .line 333
    :cond_0
    return v15

    .line 336
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    .line 337
    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/DeviceProfile;

    move-result-object v7

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/android/launcher3/ShortcutAndWidgetContainer;

    .line 346
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 347
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    move-object v13, v3

    check-cast v13, Lcom/android/launcher3/Workspace;

    .line 348
    invoke-virtual {v13}, Lcom/android/launcher3/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 349
    const v4, 0x7f0e004e

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Landroid/view/ViewGroup;

    .line 350
    const v4, 0x7f0e0026

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/Hotseat;

    .line 352
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/ItemInfo;

    .line 353
    move-object/from16 v0, p0

    invoke-virtual {v8, v0}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->indexOfChild(Landroid/view/View;)I

    move-result v4

    .line 354
    invoke-virtual {v13, v2}, Lcom/android/launcher3/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    .line 355
    invoke-virtual {v13}, Lcom/android/launcher3/Workspace;->getChildCount()I

    move-result v6

    .line 357
    const/4 v10, 0x0

    invoke-virtual {v3, v10}, Lcom/android/launcher3/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Lcom/android/launcher3/CellLayout;

    .line 358
    invoke-virtual {v14}, Lcom/android/launcher3/CellLayout;->getShortcutsAndWidgets()Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v10

    .line 364
    const/16 v3, 0x14

    move/from16 v0, p1

    if-ne v0, v3, :cond_5

    invoke-virtual {v7}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 365
    invoke-static {v2, v14, v7}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DeviceProfile;)[[I

    move-result-object v3

    .line 375
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v7

    move/from16 v2, p1

    .line 374
    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v4

    .line 376
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v16

    .line 377
    const/4 v3, 0x0

    .line 378
    invoke-virtual {v13, v5}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 379
    packed-switch v4, :pswitch_data_0

    .line 465
    if-ltz v4, :cond_f

    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    if-ge v4, v2, :cond_f

    .line 466
    invoke-virtual {v8, v4}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    :cond_2
    :goto_1
    move-object v2, v3

    .line 473
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 474
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 475
    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/launcher3/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    .line 477
    :cond_4
    return v15

    .line 366
    :cond_5
    const/16 v3, 0x16

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 367
    invoke-virtual {v7}, Lcom/android/launcher3/DeviceProfile;->isVerticalBarLayout()Z

    move-result v3

    .line 366
    if-eqz v3, :cond_6

    .line 368
    invoke-static {v2, v14, v7}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithHotseat(Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/CellLayout;Lcom/android/launcher3/DeviceProfile;)[[I

    move-result-object v3

    goto :goto_0

    .line 370
    :cond_6
    invoke-static {v2}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrix(Lcom/android/launcher3/CellLayout;)[[I

    move-result-object v3

    goto :goto_0

    .line 381
    :pswitch_0
    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_10

    :goto_3
    move-object v2, v9

    .line 384
    goto :goto_2

    .line 387
    :pswitch_1
    add-int/lit8 v10, v5, -0x1

    .line 388
    const/16 v2, -0xa

    if-ne v4, v2, :cond_7

    .line 389
    add-int/lit8 v10, v5, 0x1

    .line 391
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 392
    invoke-static {v13, v10}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v17

    .line 393
    if-eqz v17, :cond_8

    .line 394
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 396
    invoke-virtual {v2}, Lcom/android/launcher3/CellLayout;->getCountX()I

    move-result v3

    .line 395
    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithPivotColumn(Lcom/android/launcher3/CellLayout;II)[[I

    move-result-object v8

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    .line 397
    const/16 v9, 0x64

    move/from16 v7, p1

    move v11, v6

    invoke-static/range {v7 .. v12}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v2

    .line 399
    const/4 v3, -0x8

    if-ne v2, v3, :cond_9

    .line 400
    move/from16 v0, v16

    invoke-static {v13, v14, v5, v0}, Lcom/android/launcher3/FocusHelper;->handleNextPageFirstItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v3

    :cond_8
    :goto_4
    move-object v2, v3

    .line 409
    goto :goto_2

    .line 402
    :cond_9
    const/4 v3, -0x4

    if-ne v2, v3, :cond_a

    .line 403
    move/from16 v0, v16

    invoke-static {v13, v14, v5, v0}, Lcom/android/launcher3/FocusHelper;->handlePreviousPageLastItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    .line 406
    :cond_a
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_4

    .line 411
    :pswitch_2
    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v13, v2}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 412
    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    .line 413
    if-nez v2, :cond_3

    .line 415
    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    .line 416
    add-int/lit8 v3, v5, -0x1

    invoke-virtual {v13, v3}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    .line 420
    :pswitch_3
    move/from16 v0, v16

    invoke-static {v13, v14, v5, v0}, Lcom/android/launcher3/FocusHelper;->handlePreviousPageLastItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    .line 423
    :pswitch_4
    move/from16 v0, v16

    invoke-static {v13, v14, v5, v0}, Lcom/android/launcher3/FocusHelper;->handleNextPageFirstItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    .line 427
    :pswitch_5
    add-int/lit8 v10, v5, 0x1

    .line 428
    const/4 v2, -0x5

    if-ne v4, v2, :cond_b

    .line 429
    add-int/lit8 v10, v5, -0x1

    .line 431
    :cond_b
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout$LayoutParams;

    iget v4, v2, Lcom/android/launcher3/CellLayout$LayoutParams;->cellY:I

    .line 432
    invoke-static {v13, v10}, Lcom/android/launcher3/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/ShortcutAndWidgetContainer;

    move-result-object v17

    .line 433
    if-eqz v17, :cond_c

    .line 434
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/CellLayout;

    .line 435
    const/4 v3, -0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/FocusLogic;->createSparseMatrixWithPivotColumn(Lcom/android/launcher3/CellLayout;II)[[I

    move-result-object v8

    .line 437
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    .line 436
    const/16 v9, 0x64

    move/from16 v7, p1

    move v11, v6

    invoke-static/range {v7 .. v12}, Lcom/android/launcher3/util/FocusLogic;->handleKeyEvent(I[[IIIIZ)I

    move-result v2

    .line 438
    const/4 v3, -0x8

    if-ne v2, v3, :cond_d

    .line 439
    move/from16 v0, v16

    invoke-static {v13, v14, v5, v0}, Lcom/android/launcher3/FocusHelper;->handleNextPageFirstItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v3

    :cond_c
    :goto_5
    move-object v2, v3

    .line 448
    goto/16 :goto_2

    .line 441
    :cond_d
    const/4 v3, -0x4

    if-ne v2, v3, :cond_e

    .line 442
    move/from16 v0, v16

    invoke-static {v13, v14, v5, v0}, Lcom/android/launcher3/FocusHelper;->handlePreviousPageLastItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;

    move-result-object v3

    goto :goto_5

    .line 445
    :cond_e
    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_5

    .line 450
    :pswitch_6
    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    .line 451
    if-nez v2, :cond_3

    .line 453
    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    .line 457
    :pswitch_7
    move/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    .line 458
    if-nez v2, :cond_3

    .line 460
    move/from16 v0, v16

    invoke-static {v14, v0}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v2

    goto/16 :goto_2

    .line 467
    :cond_f
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    if-gt v2, v4, :cond_2

    .line 468
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    invoke-virtual {v10}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v5

    add-int/2addr v2, v5

    if-ge v4, v2, :cond_2

    .line 469
    invoke-virtual {v8}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v2

    sub-int v2, v4, v2

    invoke-virtual {v10, v2}, Lcom/android/launcher3/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto/16 :goto_1

    :cond_10
    move-object v9, v3

    goto/16 :goto_3

    .line 379
    nop

    :pswitch_data_0
    .packed-switch -0xa
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleNextPageFirstItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 536
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/Workspace;->getPageCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 537
    return-object v2

    .line 539
    :cond_0
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 540
    invoke-static {v0, p3}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    .line 541
    if-nez v0, :cond_1

    .line 543
    invoke-static {p1, p3}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    .line 544
    add-int/lit8 v1, p2, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 546
    :cond_1
    return-object v0
.end method

.method private static handlePreviousPageLastItem(Lcom/android/launcher3/Workspace;Lcom/android/launcher3/CellLayout;IZ)Landroid/view/View;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 521
    add-int/lit8 v0, p2, -0x1

    if-gez v0, :cond_0

    .line 522
    return-object v1

    .line 524
    :cond_0
    add-int/lit8 v0, p2, -0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/CellLayout;

    .line 525
    invoke-static {v0, p3}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    .line 526
    if-nez v0, :cond_1

    .line 528
    invoke-static {p1, p3}, Lcom/android/launcher3/FocusHelper;->getFirstFocusableIconInReverseReadingOrder(Lcom/android/launcher3/CellLayout;Z)Landroid/view/View;

    move-result-object v0

    .line 529
    add-int/lit8 v1, p2, -0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/Workspace;->snapToPage(I)V

    .line 531
    :cond_1
    return-object v0
.end method

.method static playSoundEffect(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 497
    sparse-switch p0, :sswitch_data_0

    .line 517
    :goto_0
    return-void

    .line 499
    :sswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 502
    :sswitch_1
    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 507
    :sswitch_2
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 512
    :sswitch_3
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_3
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x5c -> :sswitch_3
        0x5d -> :sswitch_2
        0x7a -> :sswitch_3
        0x7b -> :sswitch_2
    .end sparse-switch
.end method
