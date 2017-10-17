.class public Lcom/google/android/apps/nexuslauncher/reflection/n;
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

.method public static cw(Landroid/content/Context;)Lcom/google/android/apps/nexuslauncher/reflection/e;
    .locals 20

    .prologue
    .line 43
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v14, Lcom/google/android/apps/nexuslauncher/reflection/a;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/google/android/apps/nexuslauncher/reflection/a;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 50
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/k;

    invoke-direct {v3}, Lcom/google/android/apps/nexuslauncher/reflection/k;-><init>()V

    .line 51
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/c/b;

    .line 52
    const-string/jumbo v4, "reflection.events"

    .line 51
    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4}, Lcom/google/android/apps/nexuslauncher/reflection/c/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 53
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/c/c;

    invoke-direct {v4, v3}, Lcom/google/android/apps/nexuslauncher/reflection/c/c;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/c/b;)V

    .line 55
    const/4 v13, 0x0

    .line 57
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v5

    const-string/jumbo v6, "client_actions"

    invoke-direct {v3, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 58
    const-string/jumbo v5, "pre_debug"

    const/4 v6, 0x0

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 63
    new-instance v13, Lcom/google/android/apps/nexuslauncher/reflection/c/e;

    .line 64
    const-wide/32 v6, 0xa00000

    .line 63
    invoke-direct {v13, v3, v6, v7}, Lcom/google/android/apps/nexuslauncher/reflection/c/e;-><init>(Ljava/io/File;J)V

    .line 71
    :cond_0
    :goto_0
    new-instance v16, Lcom/google/android/apps/nexuslauncher/reflection/d/b;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/d/b;-><init>(Landroid/content/Context;)V

    .line 72
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    invoke-static/range {p0 .. p0}, Lcom/google/android/apps/nexuslauncher/reflection/g;->ca(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 76
    new-instance v17, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/a;-><init>(Landroid/content/Context;)V

    .line 77
    new-instance v18, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/d;-><init>(Landroid/content/Context;)V

    .line 79
    new-instance v19, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/google/android/apps/nexuslauncher/reflection/filter/b;-><init>(Lcom/google/android/apps/nexuslauncher/reflection/d/b;)V

    .line 82
    const/4 v7, 0x0

    .line 83
    new-instance v2, Lcom/google/android/apps/nexuslauncher/reflection/i;

    .line 84
    const-string/jumbo v6, "foreground_evt_buf.properties"

    move-object/from16 v3, p0

    .line 83
    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/nexuslauncher/reflection/i;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 85
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "reflection.engine"

    invoke-direct {v3, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 87
    new-instance v10, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string/jumbo v7, "reflection.engine.background"

    invoke-direct {v10, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 89
    new-instance v6, Lcom/google/android/apps/nexuslauncher/reflection/b;

    move-object/from16 v7, p0

    move-object v8, v4

    move-object v9, v5

    move-object v11, v2

    invoke-direct/range {v6 .. v11}, Lcom/google/android/apps/nexuslauncher/reflection/b;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/i;)V

    .line 95
    new-instance v7, Lcom/google/android/apps/nexuslauncher/reflection/j;

    invoke-direct {v7}, Lcom/google/android/apps/nexuslauncher/reflection/j;-><init>()V

    move-object v8, v5

    move-object v9, v3

    move-object v10, v2

    move-object v11, v4

    move-object v12, v6

    invoke-virtual/range {v7 .. v12}, Lcom/google/android/apps/nexuslauncher/reflection/j;->cp(Landroid/content/SharedPreferences;Ljava/io/File;Lcom/google/android/apps/nexuslauncher/reflection/i;Lcom/google/android/apps/nexuslauncher/reflection/c/c;Lcom/google/android/apps/nexuslauncher/reflection/b;)V

    .line 98
    invoke-virtual {v2, v3}, Lcom/google/android/apps/nexuslauncher/reflection/i;->ci(Ljava/io/File;)V

    .line 101
    new-instance v11, Lcom/google/android/apps/nexuslauncher/reflection/h;

    invoke-direct {v11, v5}, Lcom/google/android/apps/nexuslauncher/reflection/h;-><init>(Landroid/content/SharedPreferences;)V

    .line 104
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 105
    sget-object v3, Lcom/google/android/apps/nexuslauncher/reflection/g;->cN:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 106
    const-string/jumbo v8, "/"

    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 107
    const/4 v8, 0x1

    invoke-virtual {v3, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/4 v8, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v3

    .line 108
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 65
    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 110
    :cond_2
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 114
    :cond_3
    new-instance v12, Lcom/google/android/apps/nexuslauncher/reflection/c/a;

    .line 116
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-direct {v3, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-direct {v12, v5, v3, v4}, Lcom/google/android/apps/nexuslauncher/reflection/c/a;-><init>(Landroid/content/SharedPreferences;Ljava/io/File;Ljava/util/List;)V

    .line 120
    new-instance v3, Lcom/google/android/apps/nexuslauncher/reflection/e;

    move-object/from16 v4, p0

    move-object v5, v2

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    invoke-direct/range {v3 .. v14}, Lcom/google/android/apps/nexuslauncher/reflection/e;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/i;Lcom/google/android/apps/nexuslauncher/reflection/b;Lcom/google/android/apps/nexuslauncher/reflection/d/b;Lcom/google/android/apps/nexuslauncher/reflection/filter/a;Lcom/google/android/apps/nexuslauncher/reflection/filter/d;Lcom/google/android/apps/nexuslauncher/reflection/filter/b;Lcom/google/android/apps/nexuslauncher/reflection/h;Lcom/google/android/apps/nexuslauncher/reflection/c/a;Lcom/google/android/apps/nexuslauncher/reflection/c/e;Lcom/google/android/apps/nexuslauncher/reflection/m;)V

    .line 135
    new-instance v4, Lcom/google/android/apps/nexuslauncher/reflection/d;

    move-object/from16 v5, p0

    move-object v6, v3

    move-object/from16 v7, v18

    move-object/from16 v8, v17

    move-object/from16 v9, v19

    invoke-direct/range {v4 .. v9}, Lcom/google/android/apps/nexuslauncher/reflection/d;-><init>(Landroid/content/Context;Lcom/google/android/apps/nexuslauncher/reflection/e;Lcom/google/android/apps/nexuslauncher/reflection/filter/d;Lcom/google/android/apps/nexuslauncher/reflection/filter/a;Lcom/google/android/apps/nexuslauncher/reflection/filter/b;)V

    .line 137
    invoke-virtual {v15, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 139
    invoke-virtual {v3, v15}, Lcom/google/android/apps/nexuslauncher/reflection/e;->bR(Ljava/util/List;)V

    .line 142
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/LauncherAppsCompat;

    move-result-object v5

    .line 143
    invoke-static/range {p0 .. p0}, Lcom/android/launcher3/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/compat/UserManagerCompat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/compat/UserManagerCompat;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 144
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 145
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v2}, Lcom/android/launcher3/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v7

    invoke-virtual {v4, v7, v2}, Lcom/google/android/apps/nexuslauncher/reflection/d;->processUserApps(Ljava/util/List;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 147
    :cond_4
    return-object v3
.end method
