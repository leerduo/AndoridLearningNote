.class public Lcom/boohee/modeldao/ModelDaoBase;
.super Ljava/lang/Object;
.source "ModelDaoBase.java"


# static fields
.field public static final ID:Ljava/lang/String; = "_id"

.field public static final REMOTE_CREATED_AT:Ljava/lang/String; = "remote_created_at"

.field public static final REMOTE_ID:Ljava/lang/String; = "remote_id"

.field public static final REMOTE_UPDATED_AT:Ljava/lang/String; = "remote_updated_at"

.field static final TAG:Ljava/lang/String;

.field public static final UPDATED_AT:Ljava/lang/String; = "updated_at"

.field public static final USER_KEY:Ljava/lang/String; = "user_key"


# instance fields
.field protected ctx:Landroid/content/Context;

.field protected db:Landroid/database/sqlite/SQLiteDatabase;

.field protected user_key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/boohee/modeldao/ModelDaoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/modeldao/ModelDaoBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->ctx:Landroid/content/Context;

    .line 27
    iput-object p1, p0, Lcom/boohee/modeldao/ModelDaoBase;->ctx:Landroid/content/Context;

    .line 28
    iget-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-nez v0, :cond_1

    .line 29
    :cond_0
    invoke-static {p1}, Lcom/boohee/database/DBHelper;->getInstance(Landroid/content/Context;)Lcom/boohee/database/DBHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/database/DBHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    .line 31
    :cond_1
    invoke-static {p1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->user_key:Ljava/lang/String;

    .line 32
    return-void
.end method


# virtual methods
.method public closeDB()V
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    sget-object v0, Lcom/boohee/modeldao/ModelDaoBase;->TAG:Ljava/lang/String;

    const-string v1, "close db"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 43
    :cond_0
    return-void
.end method

.method public getUnregisterRecordCount()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 46
    iget-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    move v8, v10

    .line 57
    :goto_0
    return v8

    .line 48
    :cond_0
    const/4 v8, 0x0

    .line 50
    .local v8, "count":I
    iget-object v0, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "weight_records"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v10

    const-string v3, "user_key is null"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 52
    .local v9, "weightCursor":Landroid/database/Cursor;
    :goto_1
    if-eqz v9, :cond_1

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    add-int/2addr v8, v0

    .line 54
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 56
    :cond_1
    sget-object v0, Lcom/boohee/modeldao/ModelDaoBase;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUnregisterRecordCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    .end local v9    # "weightCursor":Landroid/database/Cursor;
    :cond_2
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_1
.end method

.method public importData(Ljava/lang/String;)V
    .locals 7
    .param p1, "user_key"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 63
    :cond_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .local v0, "cValues":Landroid/content/ContentValues;
    const-string v2, "user_key"

    invoke-virtual {v0, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 67
    :try_start_0
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "insert into record_logs(user_key, local_id, model_name, exec_type) select ?, _id, \'eating\', \'update\' from food_records where user_key is null;"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :goto_1
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "insert into record_logs(user_key, local_id, model_name, exec_type) select ?, _id, \'activity\', \'update\' from sport_records where user_key is null;"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    :goto_2
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "insert into record_logs(user_key, local_id, model_name, exec_type) select ?, _id, \'weight\', \'update\' from weight_records where user_key is null;"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_3

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 76
    :goto_3
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "weight_records"

    const-string v4, "user_key is null"

    const/4 v5, 0x0

    instance-of v6, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_4

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 78
    :goto_4
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 67
    :cond_1
    :try_start_1
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 82
    iget-object v2, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    goto :goto_0

    .line 70
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :try_start_3
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 82
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lcom/boohee/modeldao/ModelDaoBase;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    .line 73
    :cond_3
    :try_start_4
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->execSQL(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 76
    :cond_4
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v0, v4, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method protected selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method
