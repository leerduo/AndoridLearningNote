.class public Lcom/boohee/modeldao/SportRecordDao;
.super Lcom/boohee/modeldao/ModelDaoBase;
.source "SportRecordDao.java"


# static fields
.field public static final ACTIVITY_ID:Ljava/lang/String; = "activity_id"

.field public static final ACTIVITY_NAME:Ljava/lang/String; = "activity_name"

.field public static final CALORY:Ljava/lang/String; = "calory"

.field public static final DURATION:Ljava/lang/String; = "duration"

.field public static final METS:Ljava/lang/String; = "mets"

.field public static final RECORD_ON:Ljava/lang/String; = "record_on"

.field public static final TABLE_NAME:Ljava/lang/String; = "sport_records"

.field public static final UNIT_NAME:Ljava/lang/String; = "unit_name"

.field public static final USER_KEY:Ljava/lang/String; = "user_key"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/boohee/modeldao/ModelDaoBase;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method


# virtual methods
.method public add(FLjava/lang/String;IFFLjava/lang/String;Ljava/lang/String;)Lcom/boohee/model/RecordSport;
    .locals 14
    .param p1, "duration"    # F
    .param p2, "activity_name"    # Ljava/lang/String;
    .param p3, "activity_id"    # I
    .param p4, "calory"    # F
    .param p5, "mets"    # F
    .param p6, "unit_name"    # Ljava/lang/String;
    .param p7, "record_on"    # Ljava/lang/String;

    .prologue
    .line 39
    move/from16 v0, p3

    move-object/from16 v1, p7

    invoke-virtual {p0, v0, v1}, Lcom/boohee/modeldao/SportRecordDao;->select(ILjava/lang/String;)Lcom/boohee/model/RecordSport;

    move-result-object v13

    .line 40
    .local v13, "record":Lcom/boohee/model/RecordSport;
    new-instance v12, Landroid/content/ContentValues;

    invoke-direct {v12}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v12, "initialValues":Landroid/content/ContentValues;
    if-eqz v13, :cond_1

    .line 42
    const-string v2, "duration"

    iget v4, v13, Lcom/boohee/model/RecordSport;->duration:F

    add-float/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 43
    const-string v2, "calory"

    iget v4, v13, Lcom/boohee/model/RecordSport;->calory:F

    add-float v4, v4, p4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 44
    iget-object v2, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "sport_records"

    const-string v5, "_id = ?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, v13, Lcom/boohee/model/RecordSport;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    instance-of v7, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    invoke-virtual {v2, v4, v12, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 46
    :goto_0
    iget v2, v13, Lcom/boohee/model/RecordSport;->duration:F

    add-float/2addr v2, p1

    iput v2, v13, Lcom/boohee/model/RecordSport;->duration:F

    .line 47
    iget v2, v13, Lcom/boohee/model/RecordSport;->calory:F

    add-float v2, v2, p4

    iput v2, v13, Lcom/boohee/model/RecordSport;->calory:F

    .line 48
    invoke-static {}, Lcom/boohee/one/sync/SyncHelper;->syncAllSports()V

    .line 61
    .end local v13    # "record":Lcom/boohee/model/RecordSport;
    :goto_1
    return-object v13

    .line 44
    .restart local v13    # "record":Lcom/boohee/model/RecordSport;
    :cond_0
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v4, v12, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 51
    :cond_1
    const-string v2, "duration"

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 52
    const-string v2, "activity_id"

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 53
    const-string v2, "activity_name"

    move-object/from16 v0, p2

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v2, "calory"

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 55
    const-string v2, "mets"

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 56
    const-string v2, "unit_name"

    move-object/from16 v0, p6

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "record_on"

    move-object/from16 v0, p7

    invoke-virtual {v12, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "user_key"

    iget-object v4, p0, Lcom/boohee/modeldao/SportRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v2, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "sport_records"

    const/4 v5, 0x0

    instance-of v6, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_2

    invoke-virtual {v2, v4, v5, v12}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    :goto_2
    long-to-int v3, v4

    .line 60
    .local v3, "id":I
    invoke-static {}, Lcom/boohee/one/sync/SyncHelper;->syncAllSports()V

    .line 61
    new-instance v2, Lcom/boohee/model/RecordSport;

    iget-object v4, p0, Lcom/boohee/modeldao/SportRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v4}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v4, p7

    move v5, p1

    move/from16 v6, p3

    move-object/from16 v7, p2

    move/from16 v8, p4

    move-object/from16 v9, p6

    move/from16 v10, p5

    invoke-direct/range {v2 .. v11}, Lcom/boohee/model/RecordSport;-><init>(ILjava/lang/String;FILjava/lang/String;FLjava/lang/String;FLjava/lang/String;)V

    move-object v13, v2

    goto :goto_1

    .line 59
    .end local v3    # "id":I
    :cond_2
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v4, v5, v12}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    goto :goto_2
.end method

.method public add(Lcom/boohee/model/RecordSport;)Lcom/boohee/model/RecordSport;
    .locals 8
    .param p1, "record"    # Lcom/boohee/model/RecordSport;

    .prologue
    .line 66
    iget v1, p1, Lcom/boohee/model/RecordSport;->duration:F

    iget-object v2, p1, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    iget v3, p1, Lcom/boohee/model/RecordSport;->activity_id:I

    iget v4, p1, Lcom/boohee/model/RecordSport;->calory:F

    iget v5, p1, Lcom/boohee/model/RecordSport;->mets:F

    iget-object v6, p1, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    iget-object v7, p1, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/boohee/modeldao/SportRecordDao;->add(FLjava/lang/String;IFFLjava/lang/String;Ljava/lang/String;)Lcom/boohee/model/RecordSport;

    move-result-object v0

    return-object v0
.end method

.method public delete(Lcom/boohee/model/RecordSport;)Z
    .locals 7
    .param p1, "record"    # Lcom/boohee/model/RecordSport;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 95
    iget-object v1, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "sport_records"

    const-string v4, "_id = ?"

    new-array v5, v0, [Ljava/lang/String;

    iget v6, p1, Lcom/boohee/model/RecordSport;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    instance-of v6, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 97
    .local v0, "isDelete":Z
    :goto_1
    return v0

    .line 95
    .end local v0    # "isDelete":Z
    :cond_0
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public deleteAll()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 101
    iget-object v1, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "sport_records"

    instance-of v3, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    invoke-virtual {v1, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 102
    .local v0, "isDelete":Z
    :goto_1
    return v0

    .line 101
    .end local v0    # "isDelete":Z
    :cond_0
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2, v4, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 134
    const-string v3, "user_key = ?"

    .line 135
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/boohee/modeldao/SportRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 136
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sport_records"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 139
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_2

    .line 140
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/SportRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordSport;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 143
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 145
    :cond_2
    return-object v9
.end method

.method public getList(Ljava/lang/String;)Ljava/util/List;
    .locals 10
    .param p1, "record_on"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/RecordSport;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 119
    const-string v3, "record_on = ? and user_key = ?"

    .line 120
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/boohee/modeldao/SportRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 121
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 122
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordSport;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sport_records"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 124
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_2

    .line 125
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/SportRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordSport;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 122
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 128
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 130
    :cond_2
    return-object v9
.end method

.method public select(ILjava/lang/String;)Lcom/boohee/model/RecordSport;
    .locals 10
    .param p1, "activity_id"    # I
    .param p2, "record_on"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 106
    const-string v3, "activity_id = ? and record_on = ? and user_key = ?"

    .line 107
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x3

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/boohee/modeldao/SportRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 108
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 109
    .local v9, "record":Lcom/boohee/model/RecordSport;
    iget-object v0, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "sport_records"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 111
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/SportRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordSport;

    move-result-object v9

    .line 113
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 115
    :cond_0
    return-object v9

    .line 109
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0
.end method

.method public selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordSport;
    .locals 10
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    const/4 v0, 0x0

    .line 161
    :goto_0
    return-object v0

    .line 152
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 153
    .local v1, "id":I
    const-string v0, "record_on"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 154
    .local v2, "record_on":Ljava/lang/String;
    const-string v0, "duration"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v3

    .line 155
    .local v3, "duration":F
    const-string v0, "activity_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 156
    .local v4, "activity_id":I
    const-string v0, "activity_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 157
    .local v5, "activity_name":Ljava/lang/String;
    const-string v0, "calory"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    .line 158
    .local v6, "calory":F
    const-string v0, "unit_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 159
    .local v7, "unit_name":Ljava/lang/String;
    const-string v0, "mets"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v8

    .line 160
    .local v8, "mets":F
    const-string v0, "user_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "user_key":Ljava/lang/String;
    new-instance v0, Lcom/boohee/model/RecordSport;

    invoke-direct/range {v0 .. v9}, Lcom/boohee/model/RecordSport;-><init>(ILjava/lang/String;FILjava/lang/String;FLjava/lang/String;FLjava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/SportRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordSport;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/boohee/model/RecordSport;)Z
    .locals 11
    .param p1, "record"    # Lcom/boohee/model/RecordSport;

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 70
    iget v4, p1, Lcom/boohee/model/RecordSport;->activity_id:I

    iget-object v6, p1, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    invoke-virtual {p0, v4, v6}, Lcom/boohee/modeldao/SportRecordDao;->select(ILjava/lang/String;)Lcom/boohee/model/RecordSport;

    move-result-object v3

    .line 71
    .local v3, "r":Lcom/boohee/model/RecordSport;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 72
    .local v1, "initialValues":Landroid/content/ContentValues;
    if-eqz v3, :cond_3

    .line 73
    const-string v4, "duration"

    iget v6, p1, Lcom/boohee/model/RecordSport;->duration:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 74
    const-string v4, "calory"

    iget v6, p1, Lcom/boohee/model/RecordSport;->calory:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 75
    iget-object v4, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "sport_records"

    const-string v7, "_id = ?"

    new-array v8, v2, [Ljava/lang/String;

    iget v9, p1, Lcom/boohee/model/RecordSport;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    instance-of v9, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_1

    invoke-virtual {v4, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    :goto_0
    if-le v4, v10, :cond_2

    .line 77
    .local v2, "is_update":Z
    :goto_1
    invoke-static {}, Lcom/boohee/one/sync/SyncHelper;->syncAllSports()V

    .line 90
    .end local v2    # "is_update":Z
    :cond_0
    :goto_2
    return v2

    .line 75
    :cond_1
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v6, v1, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    .line 80
    :cond_3
    const-string v4, "duration"

    iget v6, p1, Lcom/boohee/model/RecordSport;->duration:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 81
    const-string v4, "activity_id"

    iget v6, p1, Lcom/boohee/model/RecordSport;->activity_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 82
    const-string v4, "activity_name"

    iget-object v6, p1, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    const-string v4, "calory"

    iget v6, p1, Lcom/boohee/model/RecordSport;->calory:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 84
    const-string v4, "mets"

    iget v6, p1, Lcom/boohee/model/RecordSport;->mets:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 85
    const-string v4, "unit_name"

    iget-object v6, p1, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v4, "record_on"

    iget-object v6, p1, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string v4, "user_key"

    iget-object v6, p0, Lcom/boohee/modeldao/SportRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    iget-object v4, p0, Lcom/boohee/modeldao/SportRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "sport_records"

    const/4 v7, 0x0

    instance-of v8, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_4

    invoke-virtual {v4, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    :goto_3
    long-to-int v0, v6

    .line 89
    .local v0, "id":I
    invoke-static {}, Lcom/boohee/one/sync/SyncHelper;->syncAllSports()V

    .line 90
    if-gt v0, v10, :cond_0

    move v2, v5

    goto :goto_2

    .line 88
    .end local v0    # "id":I
    :cond_4
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v6, v7, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    goto :goto_3
.end method
