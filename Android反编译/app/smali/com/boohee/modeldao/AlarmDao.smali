.class public Lcom/boohee/modeldao/AlarmDao;
.super Lcom/boohee/modeldao/BHDaoBase;
.source "AlarmDao.java"


# static fields
.field public static final CODE:Ljava/lang/String; = "code"

.field public static final DAYSOFWEEK:Ljava/lang/String; = "daysofweek"

.field public static final ENABLED:Ljava/lang/String; = "enabled"

.field public static final HOUR:Ljava/lang/String; = "hour"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final MINUTE:Ljava/lang/String; = "minute"

.field private static final TABLE_NAME:Ljava/lang/String; = "alarms"

.field public static final TITLE:Ljava/lang/String; = "title"

.field public static final TYPE:Ljava/lang/String; = "type"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/boohee/modeldao/BHDaoBase;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method


# virtual methods
.method public getAlarms()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 68
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v8, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Alarm;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/AlarmDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "alarms"

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 70
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_2

    .line 71
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, v9}, Lcom/boohee/modeldao/AlarmDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Alarm;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 69
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 74
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 76
    :cond_2
    return-object v8
.end method

.method public getAlarmsByNoticeType(I)Ljava/util/ArrayList;
    .locals 10
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Alarm;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 80
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 81
    .local v8, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Alarm;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/AlarmDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "alarms"

    const-string v3, "type = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const-string v7, "id"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 83
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_2

    .line 84
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    invoke-virtual {p0, v9}, Lcom/boohee/modeldao/AlarmDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Alarm;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 87
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 89
    :cond_2
    return-object v8
.end method

.method public query(Ljava/lang/String;)Lcom/boohee/model/Alarm;
    .locals 6
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "alarm":Lcom/boohee/model/Alarm;
    iget-object v2, p0, Lcom/boohee/modeldao/AlarmDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from alarms where code = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 47
    .local v1, "c":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0, v1}, Lcom/boohee/modeldao/AlarmDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Alarm;

    move-result-object v0

    .line 50
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 51
    return-object v0

    .line 46
    .end local v1    # "c":Landroid/database/Cursor;
    :cond_1
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Alarm;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    const/4 v0, 0x0

    .line 64
    :goto_0
    return-object v0

    .line 58
    :cond_0
    const-string v0, "id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 59
    .local v1, "id":I
    const-string v0, "code"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 60
    .local v2, "code":Ljava/lang/String;
    const-string v0, "hour"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 61
    .local v3, "hour":I
    const-string v0, "minute"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 62
    .local v4, "minute":I
    const-string v0, "enabled"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 63
    .local v5, "enabled":I
    const-string v0, "type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 64
    .local v6, "type":I
    new-instance v0, Lcom/boohee/model/Alarm;

    invoke-direct/range {v0 .. v6}, Lcom/boohee/model/Alarm;-><init>(ILjava/lang/String;IIII)V

    goto :goto_0
.end method

.method public bridge synthetic selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 11
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/AlarmDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Alarm;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/boohee/model/Alarm;)I
    .locals 6
    .param p1, "alarm"    # Lcom/boohee/model/Alarm;

    .prologue
    .line 28
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 29
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "hour"

    iget v3, p1, Lcom/boohee/model/Alarm;->hour:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 30
    const-string v2, "minute"

    iget v3, p1, Lcom/boohee/model/Alarm;->minute:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 31
    const-string v2, "enabled"

    iget v3, p1, Lcom/boohee/model/Alarm;->enabled:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 33
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/boohee/model/Alarm;->code:Ljava/lang/String;

    aput-object v3, v0, v2

    .line 34
    .local v0, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/modeldao/AlarmDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "alarms"

    const-string v4, "code = ?"

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    invoke-virtual {v2, v3, v1, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v1, v4, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method public update(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Alarm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Alarm;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 40
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/Alarm;

    invoke-virtual {p0, v1}, Lcom/boohee/modeldao/AlarmDao;->update(Lcom/boohee/model/Alarm;)I

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 42
    :cond_0
    return-void
.end method
