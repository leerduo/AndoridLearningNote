.class public Lcom/boohee/modeldao/NoticeDao;
.super Lcom/boohee/modeldao/BHDaoBase;
.source "NoticeDao.java"


# static fields
.field public static final ALARM_TIP_ID:Ljava/lang/String; = "alarm_tip_id"

.field public static final ALARM_TIP_MESSAGE:Ljava/lang/String; = "alarm_tip_message"

.field public static final IS_OPENED:Ljava/lang/String; = "is_opened"

.field private static final TABLE_NAME:Ljava/lang/String; = "notices"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/boohee/modeldao/BHDaoBase;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method


# virtual methods
.method public add(Lcom/boohee/model/AlarmTip;)J
    .locals 5
    .param p1, "alarmTip"    # Lcom/boohee/model/AlarmTip;

    .prologue
    .line 25
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 26
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "alarm_tip_id"

    iget v2, p1, Lcom/boohee/model/AlarmTip;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 27
    const-string v1, "alarm_tip_message"

    iget-object v2, p1, Lcom/boohee/model/AlarmTip;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v1, p0, Lcom/boohee/modeldao/NoticeDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notices"

    const/4 v3, 0x0

    instance-of v4, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2, v3, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public addMessage(Ljava/lang/String;)J
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 34
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "alarm_tip_id"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 35
    const-string v1, "alarm_tip_message"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v1, p0, Lcom/boohee/modeldao/NoticeDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v2, "notices"

    const/4 v3, 0x0

    instance-of v4, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v2, v3, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    goto :goto_0
.end method

.method public clear()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 97
    iget-object v0, p0, Lcom/boohee/modeldao/NoticeDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notices"

    instance-of v2, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v2, :cond_0

    invoke-virtual {v0, v1, v3, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v0, v1, v3, v3}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->delete(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public delete(Lcom/boohee/model/Notice;)Z
    .locals 7
    .param p1, "notice"    # Lcom/boohee/model/Notice;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 41
    iget-object v0, p0, Lcom/boohee/modeldao/NoticeDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "notices"

    const-string v4, "id = ?"

    new-array v5, v1, [Ljava/lang/String;

    iget v6, p1, Lcom/boohee/model/Notice;->id:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

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

.method public getNotices()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/Notice;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v8, "alarms":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Notice;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/NoticeDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notices"

    const-string v7, "created_at DESC"

    instance-of v3, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v3, :cond_0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 57
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_2

    .line 58
    :goto_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 59
    invoke-virtual {p0, v9}, Lcom/boohee/modeldao/NoticeDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Notice;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 56
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0

    .line 61
    .restart local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_2
    return-object v8
.end method

.method public selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Notice;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    const/4 v4, 0x0

    .line 84
    :goto_0
    return-object v4

    .line 80
    :cond_0
    const-string v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 81
    .local v2, "id":I
    const-string v4, "alarm_tip_id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 82
    .local v0, "alarm_tip_id":I
    const-string v4, "alarm_tip_message"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 83
    .local v1, "alarm_tip_message":Ljava/lang/String;
    const-string v4, "is_opened"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 84
    .local v3, "is_opened":I
    new-instance v4, Lcom/boohee/model/Notice;

    invoke-direct {v4, v2, v0, v1, v3}, Lcom/boohee/model/Notice;-><init>(IILjava/lang/String;I)V

    goto :goto_0
.end method

.method public bridge synthetic selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/NoticeDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Notice;

    move-result-object v0

    return-object v0
.end method

.method public selectWithId(I)Lcom/boohee/model/Notice;
    .locals 10
    .param p1, "id"    # I

    .prologue
    const/4 v2, 0x0

    .line 67
    const/4 v9, 0x0

    .line 68
    .local v9, "notice":Lcom/boohee/model/Notice;
    iget-object v0, p0, Lcom/boohee/modeldao/NoticeDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notices"

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 69
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/NoticeDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/Notice;

    move-result-object v9

    .line 72
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 73
    return-object v9

    .line 68
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

.method public unReadCount()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v4, 0x0

    .line 45
    const/4 v8, 0x0

    .line 46
    .local v8, "count":I
    iget-object v0, p0, Lcom/boohee/modeldao/NoticeDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "notices"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "count(*)"

    aput-object v3, v2, v10

    const-string v3, "is_opened = 0"

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 47
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 50
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 51
    return v8

    .line 46
    .end local v9    # "cursor":Landroid/database/Cursor;
    :cond_1
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    goto :goto_0
.end method

.method public updateIsOpened(Lcom/boohee/model/Notice;)Z
    .locals 8
    .param p1, "notice"    # Lcom/boohee/model/Notice;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 88
    if-nez p1, :cond_0

    .line 93
    :goto_0
    return v4

    .line 89
    :cond_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 90
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "is_opened"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    new-array v0, v3, [Ljava/lang/String;

    iget v2, p1, Lcom/boohee/model/Notice;->id:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    .line 93
    .local v0, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/modeldao/NoticeDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "notices"

    const-string v6, "id = ?"

    instance-of v7, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_1

    invoke-virtual {v2, v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_1
    const/4 v5, -0x1

    if-le v2, v5, :cond_2

    move v2, v3

    :goto_2
    move v4, v2

    goto :goto_0

    :cond_1
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v5, v1, v6, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2
.end method
