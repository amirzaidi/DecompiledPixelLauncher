.class Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 115
    iput-object p1, p0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->readValueFromMarketApp()Z

    move-result v0

    .line 121
    iget-object v1, p0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 122
    const-string/jumbo v2, "pref_add_icon_to_home"

    .line 121
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 123
    const-string/jumbo v1, "pref_add_icon_to_home_initialized"

    const/4 v2, 0x1

    .line 121
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 125
    const/4 v0, 0x0

    return-object v0
.end method

.method public readValueFromMarketApp()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 130
    iget-object v0, p0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "android.intent.category.APP_MARKET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 132
    const/high16 v2, 0x110000

    .line 130
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 133
    if-nez v1, :cond_0

    .line 134
    return v7

    .line 139
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/SessionCommitReceiver$PrefInitTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 140
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "content://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 141
    const-string/jumbo v2, ".addtohomescreen"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 142
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 139
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 143
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const-string/jumbo v0, "value"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    .line 149
    :goto_0
    if-eqz v1, :cond_1

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    return v0

    :cond_2
    move v0, v8

    goto :goto_0

    .line 149
    :cond_3
    if-eqz v1, :cond_4

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_4
    :goto_1
    return v7

    .line 146
    :catch_0
    move-exception v0

    move-object v1, v6

    .line 147
    :goto_2
    :try_start_2
    const-string/jumbo v2, "SessionCommitReceiver"

    const-string/jumbo v3, "Error reading add to homescreen preference"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 149
    if-eqz v1, :cond_4

    .line 150
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 148
    :catchall_0
    move-exception v0

    .line 149
    :goto_3
    if-eqz v6, :cond_5

    .line 150
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 148
    :cond_5
    throw v0

    :catchall_1
    move-exception v0

    move-object v6, v1

    goto :goto_3

    .line 146
    :catch_1
    move-exception v0

    goto :goto_2
.end method
