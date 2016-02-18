.class public Lcom/boohee/modeldao/AlarmTipDao;
.super Lcom/boohee/modeldao/BHDaoBase;
.source "AlarmTipDao.java"


# static fields
.field public static final BASE_DATE:Ljava/util/Date;

.field public static final CODE:Ljava/lang/String; = "code"

.field public static final MESSAGE:Ljava/lang/String; = "message"

.field public static final NAME:Ljava/lang/String; = "name"

.field private static final TABLE_NAME:Ljava/lang/String; = "alarm_tips"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "2013-05-01"

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    sput-object v0, Lcom/boohee/modeldao/AlarmTipDao;->BASE_DATE:Ljava/util/Date;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/boohee/modeldao/BHDaoBase;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method public getCount(Ljava/lang/String;)I
    .locals 7
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 46
    const/4 v0, 0x0

    .line 47
    .local v0, "count":I
    iget-object v2, p0, Lcom/boohee/modeldao/AlarmTipDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select count(*) from alarm_tips where code = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_1

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 49
    .local v1, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 50
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 52
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 53
    return v0

    .line 47
    .end local v1    # "cursor":Landroid/database/Cursor;
    :cond_1
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public getList(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .param p1, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/AlarmTip;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 33
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 34
    .local v9, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/AlarmTip;>;"
    iget-object v0, p0, Lcom/boohee/modeldao/AlarmTipDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v1, "alarm_tips"

    const-string v3, "code = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v0, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_0

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 36
    .local v8, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v8, :cond_2

    .line 37
    :goto_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 38
    invoke-virtual {p0, v8}, Lcom/boohee/modeldao/AlarmTipDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/AlarmTip;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 34
    .end local v8    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v0, Landroid/database/sqlite/SQLiteDatabase;

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v0 .. v7}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->query(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto :goto_0

    .line 40
    .restart local v8    # "cursor":Landroid/database/Cursor;
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 42
    :cond_2
    return-object v9
.end method

.method public getRandomTip()Lcom/boohee/model/AlarmTip;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v1, p0, Lcom/boohee/modeldao/AlarmTipDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "SELECT * FROM alarm_tips ORDER BY RANDOM() LIMIT 1;"

    instance-of v4, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v4, :cond_0

    invoke-virtual {v1, v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 73
    .local v0, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 74
    invoke-virtual {p0, v0}, Lcom/boohee/modeldao/AlarmTipDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/AlarmTip;

    move-result-object v1

    .line 76
    :goto_1
    return-object v1

    .line 72
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_0
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v3, v2}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .restart local v0    # "cursor":Landroid/database/Cursor;
    :cond_1
    move-object v1, v2

    .line 76
    goto :goto_1
.end method

.method public selectWithCode(Ljava/lang/String;)Lcom/boohee/model/AlarmTip;
    .locals 4
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/AlarmTipDao;->getList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 27
    .local v2, "tips":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/AlarmTip;>;"
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/AlarmTipDao;->getCount(Ljava/lang/String;)I

    move-result v0

    .line 28
    .local v0, "count":I
    sget-object v3, Lcom/boohee/modeldao/AlarmTipDao;->BASE_DATE:Ljava/util/Date;

    invoke-static {v3}, Lcom/boohee/utils/DateHelper;->between(Ljava/util/Date;)I

    move-result v3

    rem-int v1, v3, v0

    .line 29
    .local v1, "index":I
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/AlarmTip;

    return-object v3
.end method

.method public selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/AlarmTip;
    .locals 5
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 57
    if-nez p1, :cond_0

    .line 58
    const/4 v4, 0x0

    .line 64
    :goto_0
    return-object v4

    .line 60
    :cond_0
    const-string v4, "id"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 61
    .local v1, "id":I
    const-string v4, "message"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 62
    .local v2, "message":Ljava/lang/String;
    const-string v4, "code"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "code":Ljava/lang/String;
    const-string v4, "name"

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, "name":Ljava/lang/String;
    new-instance v4, Lcom/boohee/model/AlarmTip;

    invoke-direct {v4, v1, v2, v0, v3}, Lcom/boohee/model/AlarmTip;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public bridge synthetic selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/AlarmTipDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/AlarmTip;

    move-result-object v0

    return-object v0
.end method
