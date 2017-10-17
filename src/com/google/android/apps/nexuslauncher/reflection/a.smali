.class public Lcom/google/android/apps/nexuslauncher/reflection/a;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static am(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/n;
    .locals 22

    .prologue
    .line 36
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 39
    new-instance v16, Lcom/google/android/apps/nexuslauncher/reflection/k;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/k;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 43
    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/h;

    invoke-direct {v5}, Lcom/google/android/apps/nexuslauncher/reflection/h;-><init>()V

    .line 44
    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    .line 45
    const-string/jumbo v6, "reflection.events"

    .line 44
    move-object/from16 v0, p0

    invoke-direct {v5, v0, v6}, Lcom/google/android/apps/nexuslauncher/reflection/c/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    new-instance v6, Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    invoke-direct {v6, v5}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/c/a;)V

    .line 48
    const/4 v15, 0x0

    .line 50
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v7

    const-string/jumbo v8, "client_actions"

    invoke-direct {v5, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    const-string/jumbo v7, "pre_debug"

    const/4 v8, 0x0

    invoke-interface {v4, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 56
    new-instance v15, Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    .line 57
    const-wide/32 v8, 0xa00000

    .line 56
    invoke-direct {v15, v5, v8, v9}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;-><init>(Ljava/io/File;J)V

    .line 64
    :cond_0
    :goto_0
    new-instance v18, Lcom/google/android/apps/nexuslauncher/reflection/a/b;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/a/b;-><init>(Landroid/content/Context;)V

    .line 65
    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->aT(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v7

    .line 69
    new-instance v19, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/c;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v20, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;-><init>(Landroid/content/Context;)V

    .line 72
    new-instance v21, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    move-object/from16 v0, v21

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/a/b;)V

    .line 75
    const/4 v9, 0x0

    .line 76
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/b;

    .line 77
    const-string/jumbo v8, "foreground_evt_buf.properties"

    move-object/from16 v5, p0

    .line 76
    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/nexuslauncher/reflection/b;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 78
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "reflection.engine"

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 80
    new-instance v12, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v8

    const-string/jumbo v9, "reflection.engine.background"

    invoke-direct {v12, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    new-instance v8, Lcom/google/android/apps/nexuslauncher/reflection/e;

    move-object/from16 v9, p0

    move-object v10, v6

    move-object v11, v7

    move-object v13, v4

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/nexuslauncher/reflection/e;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/b;)V

    .line 88
    new-instance v9, Lcom/google/android/apps/nexuslauncher/reflection/l;

    invoke-direct {v9}, Lcom/google/android/apps/nexuslauncher/reflection/l;-><init>()V

    move-object v10, v7

    move-object v11, v5

    move-object v12, v4

    move-object v13, v6

    move-object v14, v8

    invoke-virtual/range {v9 .. v14}, Lcom/google/android/apps/nexuslauncher/reflection/l;->aX(Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Lcom/google/android/apps/nexuslauncher/reflection/e;)V

    .line 91
    invoke-virtual {v4, v5}, Lcom/google/android/apps/nexuslauncher/reflection/b;->an(Ljava/io/File;)V

    .line 94
    new-instance v13, Lcom/google/android/apps/nexuslauncher/reflection/m;

    invoke-direct {v13, v7}, Lcom/google/android/apps/nexuslauncher/reflection/m;-><init>(Landroid/content/SharedPreferences;)V

    .line 97
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 98
    sget-object v5, Lcom/google/android/apps/nexuslauncher/reflection/g;->bs:Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    const-string/jumbo v10, "/"

    invoke-virtual {v5, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 100
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v10, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v10}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v5

    .line 101
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 59
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 103
    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 107
    :cond_3
    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/c/b;

    .line 109
    new-instance v5, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v5, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-direct {v14, v7, v5, v6}, Lcom/google/android/apps/nexuslauncher/reflection/c/b;-><init>(Landroid/content/SharedPreferences;Ljava/io/File;Ljava/util/List;)V

    .line 113
    new-instance v5, Lcom/google/android/apps/nexuslauncher/reflection/n;

    move-object/from16 v6, p0

    move-object v7, v4

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v11, v20

    move-object/from16 v12, v21

    invoke-direct/range {v5 .. v16}, Lcom/google/android/apps/nexuslauncher/reflection/n;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/e;Lcom/google/android/apps/nexuslauncher/reflection/a/b;Lcom/google/android/apps/nexuslauncher/reflection/filter/c;Lcom/google/android/apps/nexuslauncher/reflection/filter/a;Lcom/google/android/apps/nexuslauncher/reflection/filter/d;Lcom/google/android/apps/nexuslauncher/reflection/m;Lcom/google/android/apps/nexuslauncher/reflection/c/b;Lcom/google/android/apps/nexuslauncher/reflection/c/e;Lcom/google/android/apps/nexuslauncher/reflection/d;)V

    .line 128
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/j;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v5, v1, v2}, Lcom/google/android/apps/nexuslauncher/reflection/j;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/n;Lcom/google/android/apps/nexuslauncher/reflection/filter/a;Lcom/google/android/apps/nexuslauncher/reflection/filter/c;)V

    .line 129
    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lcom/google/android/apps/nexuslauncher/reflection/n;->bc(Ljava/util/List;)V

    .line 132
    invoke-virtual {v4}, Lcom/google/android/apps/nexuslauncher/reflection/j;->aW()V

    .line 133
    return-object v5
.end method
