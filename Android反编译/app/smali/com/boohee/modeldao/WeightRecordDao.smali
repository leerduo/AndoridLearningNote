.class public Lcom/boohee/modeldao/WeightRecordDao;
.super Lcom/boohee/modeldao/ModelDaoBase;
.source "WeightRecordDao.java"


# static fields
.field public static final CREATED_AT:Ljava/lang/String; = "created_at"

.field public static final PHOTOS:Ljava/lang/String; = "photos"

.field public static final RECORD_ON:Ljava/lang/String; = "record_on"

.field public static final TABLE_NAME:Ljava/lang/String; = "weight_records"

.field static final TAG:Ljava/lang/String;

.field public static final WEIGHT:Ljava/lang/String; = "weight"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/boohee/modeldao/WeightRecordDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/modeldao/WeightRecordDao;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/boohee/modeldao/ModelDaoBase;-><init>(Landroid/content/Context;)V

    .line 29
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;)Z
    .locals 6
    .param p1, "weight"    # Ljava/lang/String;
    .param p2, "record_on"    # Ljava/lang/String;
    .param p3, "photos"    # Lorg/json/JSONArray;

    .prologue
    .line 40
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 41
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "weight"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "record_on"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    if-eqz p3, :cond_0

    .line 44
    const-string v2, "photos"

    instance-of v1, p3, Lorg/json/JSONArray;

    if-nez v1, :cond_1

    invoke-virtual {p3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1

    .end local p3    # "photos":Lorg/json/JSONArray;
    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/boohee/modeldao/WeightRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "weight_records"

    const/4 v3, 0x0

    instance-of v4, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_2

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :goto_1
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    const/4 v1, 0x1

    :goto_2
    return v1

    .line 44
    .restart local p3    # "photos":Lorg/json/JSONArray;
    :cond_1
    check-cast p3, Lorg/json/JSONArray;

    .end local p3    # "photos":Lorg/json/JSONArray;
    invoke-static {p3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 46
    :cond_2
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2, v3, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->replace(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public delete(Ljava/lang/String;)Z
    .locals 7
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 99
    iget-object v0, p0, Lcom/boohee/modeldao/WeightRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "weight_records"

    const-string v4, "record_on = ?"

    new-array v5, v1, [Ljava/lang/String;

    aput-object p1, v5, v2

    instance-of v6, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v6, :cond_0

    invoke-virtual {v0, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v3, v4, v5}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public getLastestWeight()F
    .locals 3

    .prologue
    .line 32
    const/high16 v0, 0x425c0000    # 55.0f

    .line 33
    .local v0, "weight":F
    invoke-static {}, Lcom/boohee/database/OnePreference;->getLatestWeight()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 34
    invoke-static {}, Lcom/boohee/database/OnePreference;->getLatestWeight()F

    move-result v0

    .line 36
    :cond_0
    return v0
.end method

.method public getList()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 63
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 64
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/WeightRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "weight_records"

    const-string v7, "record_on DESC"

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 65
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_2

    .line 66
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/WeightRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/mine/WeightRecord;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 64
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 69
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 71
    :cond_2
    return-object v9
.end method

.method public getMonthLists(Ljava/util/Date;)Ljava/util/List;
    .locals 12
    .param p1, "record_on"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/mine/WeightRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 81
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v11, "records":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/mine/WeightRecord;>;"
    invoke-static {p1}, Lcom/boohee/utils/DateHelper;->getFirstDayOfMonth(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v8

    .line 83
    .local v8, "beginMonth":Ljava/util/Date;
    invoke-static {p1}, Lcom/boohee/utils/DateHelper;->getLastDayOfMonth(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v10

    .line 84
    .local v10, "endMonth":Ljava/util/Date;
    const-string v3, "record_on between ? and ?"

    .line 85
    .local v3, "selection":Ljava/lang/String;
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    invoke-static {v8}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    const/4 v0, 0x1

    invoke-static {v10}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 86
    .local v4, "selectionArgs":[Ljava/lang/String;
    iget-object v0, p0, Lcom/boohee/modeldao/WeightRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "weight_records"

    const-string v7, "record_on"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 87
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_2

    .line 88
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p0, v9}, Lcom/boohee/modeldao/WeightRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/mine/WeightRecord;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 86
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 92
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 95
    :cond_2
    return-object v11
.end method

.method public select(Ljava/lang/String;)Lcom/boohee/model/mine/WeightRecord;
    .locals 6
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v1, 0x0

    .line 51
    .local v1, "record":Lcom/boohee/model/mine/WeightRecord;
    iget-object v2, p0, Lcom/boohee/modeldao/WeightRecordDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from weight_records where record_on = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 55
    .local v0, "c":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 56
    invoke-virtual {p0, v0}, Lcom/boohee/modeldao/WeightRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/mine/WeightRecord;

    move-result-object v1

    .line 58
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 59
    return-object v1

    .line 51
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_1
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0
.end method

.method public selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/mine/WeightRecord;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v4, 0x0

    .line 110
    :goto_0
    return-object v4

    .line 106
    :cond_0
    const-string v4, "weight"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 107
    .local v3, "weight":Ljava/lang/String;
    const-string v4, "record_on"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 108
    .local v2, "record_on":Ljava/lang/String;
    const-string v4, "created_at"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, "created_at":Ljava/lang/String;
    const-string v4, "photos"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "photos":Ljava/lang/String;
    new-instance v4, Lcom/boohee/model/mine/WeightRecord;

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/boohee/model/mine/WeightRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/WeightRecordDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/mine/WeightRecord;

    move-result-object v0

    return-object v0
.end method
