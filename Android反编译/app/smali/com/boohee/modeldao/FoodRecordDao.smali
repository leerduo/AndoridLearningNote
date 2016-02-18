.class public Lcom/boohee/modeldao/FoodRecordDao;
.super Lcom/boohee/modeldao/ModelDaoBase;
.source "FoodRecordDao.java"


# static fields
.field public static final AMOUNT:Ljava/lang/String; = "amount"

.field public static final CALORY:Ljava/lang/String; = "calory"

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final FOOD_NAME:Ljava/lang/String; = "food_name"

.field public static final FOOD_UNIT_ID:Ljava/lang/String; = "food_unit_id"

.field public static final RECORD_ON:Ljava/lang/String; = "record_on"

.field public static final TABLE_NAME:Ljava/lang/String; = "food_records"

.field public static final TIME_TYPE:Ljava/lang/String; = "time_type"

.field public static final UNIT_NAME:Ljava/lang/String; = "unit_name"

.field public static final USER_KEY:Ljava/lang/String; = "user_key"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/boohee/modeldao/ModelDaoBase;-><init>(Landroid/content/Context;)V

    .line 35
    return-void
.end method


# virtual methods
.method public add(Lcom/boohee/model/RecordFood;)Lcom/boohee/model/RecordFood;
    .locals 9
    .param p1, "record"    # Lcom/boohee/model/RecordFood;

    .prologue
    .line 83
    iget-object v1, p1, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    iget v2, p1, Lcom/boohee/model/RecordFood;->time_type:I

    iget-object v3, p1, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    iget v4, p1, Lcom/boohee/model/RecordFood;->amount:F

    iget v5, p1, Lcom/boohee/model/RecordFood;->calory:F

    iget v6, p1, Lcom/boohee/model/RecordFood;->food_unit_id:I

    iget-object v7, p1, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    iget-object v8, p1, Lcom/boohee/model/RecordFood;->record_on:Ljava/lang/String;

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/boohee/modeldao/FoodRecordDao;->add(Ljava/lang/String;ILjava/lang/String;FFILjava/lang/String;Ljava/lang/String;)Lcom/boohee/model/RecordFood;

    move-result-object v0

    return-object v0
.end method

.method public add(Ljava/lang/String;ILjava/lang/String;FFILjava/lang/String;Ljava/lang/String;)Lcom/boohee/model/RecordFood;
    .locals 19
    .param p1, "food_name"    # Ljava/lang/String;
    .param p2, "time_type"    # I
    .param p3, "code"    # Ljava/lang/String;
    .param p4, "amount"    # F
    .param p5, "calory"    # F
    .param p6, "food_unit_id"    # I
    .param p7, "unit_name"    # Ljava/lang/String;
    .param p8, "record_on"    # Ljava/lang/String;

    .prologue
    .line 55
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p8

    move/from16 v3, p2

    move-object/from16 v4, p7

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/boohee/modeldao/FoodRecordDao;->select(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/boohee/model/RecordFood;

    move-result-object v18

    .line 56
    .local v18, "record":Lcom/boohee/model/RecordFood;
    new-instance v17, Landroid/content/ContentValues;

    invoke-direct/range {v17 .. v17}, Landroid/content/ContentValues;-><init>()V

    .line 57
    .local v17, "initialValues":Landroid/content/ContentValues;
    if-eqz v18, :cond_1

    .line 58
    const-string v6, "amount"

    move-object/from16 v0, v18

    iget v7, v0, Lcom/boohee/model/RecordFood;->amount:F

    add-float v7, v7, p4

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 59
    const-string v6, "calory"

    move-object/from16 v0, v18

    iget v7, v0, Lcom/boohee/model/RecordFood;->calory:F

    add-float v7, v7, p5

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 60
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "food_records"

    const-string v8, "_id = ?"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    move-object/from16 v0, v18

    iget v11, v0, Lcom/boohee/model/RecordFood;->id:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    instance-of v10, v6, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v10, :cond_0

    move-object/from16 v0, v17

    invoke-virtual {v6, v7, v0, v8, v9}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 62
    :goto_0
    move-object/from16 v0, v18

    iget v6, v0, Lcom/boohee/model/RecordFood;->amount:F

    add-float v6, v6, p4

    move-object/from16 v0, v18

    iput v6, v0, Lcom/boohee/model/RecordFood;->amount:F

    .line 63
    move-object/from16 v0, v18

    iget v6, v0, Lcom/boohee/model/RecordFood;->calory:F

    add-float v6, v6, p5

    move-object/from16 v0, v18

    iput v6, v0, Lcom/boohee/model/RecordFood;->calory:F

    .line 64
    invoke-static {}, Lcom/boohee/one/sync/SyncHelper;->syncAllEatings()V

    .line 78
    .end local v18    # "record":Lcom/boohee/model/RecordFood;
    :goto_1
    return-object v18

    .line 60
    .restart local v18    # "record":Lcom/boohee/model/RecordFood;
    :cond_0
    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v17

    invoke-static {v6, v7, v0, v8, v9}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 67
    :cond_1
    const-string v6, "time_type"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 68
    const-string v6, "food_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v6, "code"

    move-object/from16 v0, v17

    move-object/from16 v1, p3

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v6, "amount"

    invoke-static/range {p4 .. p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 71
    const-string v6, "calory"

    invoke-static/range {p5 .. p5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 72
    const-string v6, "food_unit_id"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 73
    const-string v6, "unit_name"

    move-object/from16 v0, v17

    move-object/from16 v1, p7

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v6, "record_on"

    move-object/from16 v0, v17

    move-object/from16 v1, p8

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string v6, "user_key"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/boohee/modeldao/FoodRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v17

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v7, "food_records"

    const/4 v8, 0x0

    instance-of v9, v6, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v6, v7, v8, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    :goto_2
    long-to-int v0, v6

    move/from16 v16, v0

    .line 77
    .local v16, "id":I
    invoke-static {}, Lcom/boohee/one/sync/SyncHelper;->syncAllEatings()V

    .line 78
    new-instance v6, Lcom/boohee/model/RecordFood;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/boohee/modeldao/FoodRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v7}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v8, p1

    move/from16 v9, p2

    move-object/from16 v10, p8

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p6

    move-object/from16 v14, p7

    move/from16 v15, p5

    invoke-direct/range {v6 .. v15}, Lcom/boohee/model/RecordFood;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FILjava/lang/String;F)V

    move-object/from16 v18, v6

    goto/16 :goto_1

    .line 76
    .end local v16    # "id":I
    :cond_2
    check-cast v6, Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v0, v17

    invoke-static {v6, v7, v8, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    goto :goto_2
.end method

.method public delete(Lcom/boohee/model/RecordFood;)Z
    .locals 7
    .param p1, "record"    # Lcom/boohee/model/RecordFood;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 144
    iget-object v1, p0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "food_records"

    const-string v4, "_id = ?"

    new-array v5, v0, [Ljava/lang/String;

    iget v6, p1, Lcom/boohee/model/RecordFood;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    instance-of v6, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    invoke-virtual {v1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    .line 146
    .local v0, "isDelete":Z
    :goto_1
    return v0

    .line 144
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

    .line 150
    iget-object v1, p0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "food_records"

    instance-of v3, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    invoke-virtual {v1, v2, v4, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 151
    .local v0, "isDelete":Z
    :goto_1
    return v0

    .line 150
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
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 102
    const-string v3, "user_key = ?"

    .line 103
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/boohee/modeldao/FoodRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 104
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 105
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "food_records"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 107
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_2

    .line 108
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/FoodRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordFood;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 111
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 113
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
            "Lcom/boohee/model/RecordFood;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 87
    const-string v3, "record_on = ? and user_key = ?"

    .line 88
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/boohee/modeldao/FoodRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 89
    .local v4, "selectionArgs":[Ljava/lang/String;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 90
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/RecordFood;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "food_records"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 92
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_2

    .line 93
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/FoodRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordFood;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 90
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 96
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 98
    :cond_2
    return-object v9
.end method

.method public select(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/boohee/model/RecordFood;
    .locals 10
    .param p1, "food_name"    # Ljava/lang/String;
    .param p2, "record_on"    # Ljava/lang/String;
    .param p3, "time_type"    # I
    .param p4, "unit_name"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 39
    const-string v3, "food_name = ? and record_on = ? and time_type = ? and unit_name = ? and user_key = ?"

    .line 40
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x5

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    aput-object p1, v4, v0

    const/4 v0, 0x1

    aput-object p2, v4, v0

    const/4 v0, 0x2

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object p4, v4, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/boohee/modeldao/FoodRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v1}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 42
    .local v4, "selectionArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    .line 43
    .local v9, "record":Lcom/boohee/model/RecordFood;
    iget-object v0, p0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "food_records"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 45
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/FoodRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordFood;

    move-result-object v9

    .line 47
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 49
    :cond_0
    return-object v9

    .line 43
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

.method public selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordFood;
    .locals 11
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 155
    if-nez p1, :cond_0

    .line 156
    const/4 v0, 0x0

    .line 168
    :goto_0
    return-object v0

    .line 158
    :cond_0
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 159
    .local v1, "id":I
    const-string v0, "user_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 160
    .local v2, "user_key":Ljava/lang/String;
    const-string v0, "unit_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 161
    .local v9, "unit_name":Ljava/lang/String;
    const-string v0, "record_on"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "record_on":Ljava/lang/String;
    const-string v0, "amount"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    .line 163
    .local v7, "amount":F
    const-string v0, "food_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 164
    .local v3, "food_name":Ljava/lang/String;
    const-string v0, "food_unit_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 165
    .local v8, "food_unit_id":I
    const-string v0, "calory"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v10

    .line 166
    .local v10, "calory":F
    const-string v0, "time_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 167
    .local v4, "time_type":I
    const-string v0, "code"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 168
    .local v6, "code":Ljava/lang/String;
    new-instance v0, Lcom/boohee/model/RecordFood;

    invoke-direct/range {v0 .. v10}, Lcom/boohee/model/RecordFood;-><init>(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;FILjava/lang/String;F)V

    goto :goto_0
.end method

.method public bridge synthetic selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/FoodRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/RecordFood;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/boohee/model/RecordFood;)Z
    .locals 11
    .param p1, "record"    # Lcom/boohee/model/RecordFood;

    .prologue
    const/4 v10, -0x1

    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 117
    iget-object v4, p1, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    iget-object v6, p1, Lcom/boohee/model/RecordFood;->record_on:Ljava/lang/String;

    iget v7, p1, Lcom/boohee/model/RecordFood;->time_type:I

    iget-object v8, p1, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    invoke-virtual {p0, v4, v6, v7, v8}, Lcom/boohee/modeldao/FoodRecordDao;->select(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/boohee/model/RecordFood;

    move-result-object v3

    .line 118
    .local v3, "r":Lcom/boohee/model/RecordFood;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 119
    .local v1, "initialValues":Landroid/content/ContentValues;
    if-eqz v3, :cond_3

    .line 120
    const-string v4, "time_type"

    iget v6, p1, Lcom/boohee/model/RecordFood;->time_type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 121
    const-string v4, "amount"

    iget v6, p1, Lcom/boohee/model/RecordFood;->amount:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 122
    const-string v4, "calory"

    iget v6, p1, Lcom/boohee/model/RecordFood;->calory:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 123
    iget-object v4, p0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "food_records"

    const-string v7, "_id = ?"

    new-array v8, v2, [Ljava/lang/String;

    iget v9, p1, Lcom/boohee/model/RecordFood;->id:I

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    instance-of v9, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v9, :cond_1

    invoke-virtual {v4, v6, v1, v7, v8}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    :goto_0
    if-le v4, v10, :cond_2

    .line 125
    .local v2, "is_update":Z
    :goto_1
    invoke-static {}, Lcom/boohee/one/sync/SyncHelper;->syncAllEatings()V

    .line 139
    .end local v2    # "is_update":Z
    :cond_0
    :goto_2
    return v2

    .line 123
    :cond_1
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v6, v1, v7, v8}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_1

    .line 128
    :cond_3
    const-string v4, "time_type"

    iget v6, p1, Lcom/boohee/model/RecordFood;->time_type:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 129
    const-string v4, "food_name"

    iget-object v6, p1, Lcom/boohee/model/RecordFood;->food_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    const-string v4, "code"

    iget-object v6, p1, Lcom/boohee/model/RecordFood;->code:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    const-string v4, "amount"

    iget v6, p1, Lcom/boohee/model/RecordFood;->amount:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 132
    const-string v4, "calory"

    iget v6, p1, Lcom/boohee/model/RecordFood;->calory:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 133
    const-string v4, "food_unit_id"

    iget v6, p1, Lcom/boohee/model/RecordFood;->food_unit_id:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    const-string v4, "unit_name"

    iget-object v6, p1, Lcom/boohee/model/RecordFood;->unit_name:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    const-string v4, "record_on"

    iget-object v6, p1, Lcom/boohee/model/RecordFood;->record_on:Ljava/lang/String;

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string v4, "user_key"

    iget-object v6, p0, Lcom/boohee/modeldao/FoodRecordDao;->ctx:Landroid/content/Context;

    invoke-static {v6}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    iget-object v4, p0, Lcom/boohee/modeldao/FoodRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "food_records"

    const/4 v7, 0x0

    instance-of v8, v4, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_4

    invoke-virtual {v4, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    :goto_3
    long-to-int v0, v6

    .line 138
    .local v0, "id":I
    invoke-static {}, Lcom/boohee/one/sync/SyncHelper;->syncAllEatings()V

    .line 139
    if-gt v0, v10, :cond_0

    move v2, v5

    goto :goto_2

    .line 137
    .end local v0    # "id":I
    :cond_4
    check-cast v4, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v4, v6, v7, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    goto :goto_3
.end method
