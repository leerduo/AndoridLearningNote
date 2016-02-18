.class public Lcom/boohee/modeldao/UserDao;
.super Lcom/boohee/modeldao/ModelDaoBase;
.source "UserDao.java"


# static fields
.field public static final BEGIN_WEIGHT:Ljava/lang/String; = "begin_weight"

.field public static final BIRTHDAY:Ljava/lang/String; = "birthday"

.field public static final CELLPHONE:Ljava/lang/String; = "cellphone"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final SEX_TYPE:Ljava/lang/String; = "sex_type"

.field private static final TABLE_NAME:Ljava/lang/String; = "users"

.field static final TAG:Ljava/lang/String;

.field public static final TARGET_CALORY:Ljava/lang/String; = "target_calory"

.field public static final TARGET_DATE:Ljava/lang/String; = "target_date"

.field public static final TARGET_WEIGHT:Ljava/lang/String; = "target_weight"

.field public static final TOKEN:Ljava/lang/String; = "token"

.field public static final UPDATE_AT:Ljava/lang/String; = "updated_at"

.field public static final USER_KEY:Ljava/lang/String; = "user_key"

.field public static final USER_NAME:Ljava/lang/String; = "user_name"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const-class v0, Lcom/boohee/modeldao/UserDao;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/modeldao/UserDao;->TAG:Ljava/lang/String;

    return-void
.end method

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
.method public add(Lcom/boohee/model/User;)Z
    .locals 10
    .param p1, "user"    # Lcom/boohee/model/User;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 38
    iget-object v3, p1, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    iget-object v3, p0, Lcom/boohee/modeldao/UserDao;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getUserKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    .line 42
    :cond_0
    iget-object v3, p1, Lcom/boohee/model/User;->token:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 43
    iget-object v3, p0, Lcom/boohee/modeldao/UserDao;->ctx:Landroid/content/Context;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/boohee/model/User;->token:Ljava/lang/String;

    .line 46
    :cond_1
    iget-object v3, p1, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/boohee/modeldao/UserDao;->queryWithUserKey(Ljava/lang/String;)Lcom/boohee/model/User;

    move-result-object v2

    .line 47
    .local v2, "localUser":Lcom/boohee/model/User;
    if-nez v2, :cond_4

    .line 48
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 49
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v3, "token"

    iget-object v6, p1, Lcom/boohee/model/User;->token:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v3, "user_key"

    iget-object v6, p1, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v3, "cellphone"

    iget-object v6, p1, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v3, "user_name"

    invoke-virtual {p1}, Lcom/boohee/model/User;->userName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v3, "sex_type"

    invoke-virtual {p1}, Lcom/boohee/model/User;->sexType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v3, "birthday"

    invoke-virtual {p1}, Lcom/boohee/model/User;->birthday()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    const-string v3, "height"

    invoke-virtual {p1}, Lcom/boohee/model/User;->height()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 56
    const-string v3, "begin_weight"

    invoke-virtual {p1}, Lcom/boohee/model/User;->beginWeight()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 57
    const-string v3, "target_weight"

    invoke-virtual {p1}, Lcom/boohee/model/User;->targetWeight()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 58
    const-string v3, "target_date"

    invoke-virtual {p1}, Lcom/boohee/model/User;->targetDate()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v3, "target_calory"

    iget v6, p1, Lcom/boohee/model/User;->target_calory:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 60
    const-string v3, ""

    const-string v6, "insert"

    invoke-static {v3, v6}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v3, p0, Lcom/boohee/modeldao/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "users"

    const/4 v7, 0x0

    instance-of v8, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_2

    invoke-virtual {v3, v6, v7, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    :goto_0
    const-wide/16 v8, -0x1

    cmp-long v3, v6, v8

    if-lez v3, :cond_3

    move v3, v4

    .line 80
    :goto_1
    return v3

    .line 61
    :cond_2
    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v6, v7, v1}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->insert(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v6

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    .line 63
    .end local v1    # "cv":Landroid/content/ContentValues;
    :cond_4
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 64
    .restart local v1    # "cv":Landroid/content/ContentValues;
    const-string v3, "token"

    iget-object v6, p1, Lcom/boohee/model/User;->token:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v3, p1, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 66
    const-string v3, "user_name"

    iget-object v6, p1, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_5
    const-string v3, "sex_type"

    iget-object v6, p1, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v3, "birthday"

    iget-object v6, p1, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v3, "height"

    iget v6, p1, Lcom/boohee/model/User;->height:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 71
    const-string v3, "begin_weight"

    iget v6, p1, Lcom/boohee/model/User;->begin_weight:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 72
    const-string v3, "target_weight"

    iget v6, p1, Lcom/boohee/model/User;->target_weight:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 73
    const-string v3, "target_date"

    iget-object v6, p1, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget v3, p1, Lcom/boohee/model/User;->target_calory:I

    if-lez v3, :cond_6

    .line 75
    const-string v3, "target_calory"

    iget v6, p1, Lcom/boohee/model/User;->target_calory:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 77
    :cond_6
    const-string v3, "updated_at"

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v6, v7}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    new-array v0, v4, [Ljava/lang/String;

    iget-object v3, v2, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    aput-object v3, v0, v5

    .line 80
    .local v0, "args":[Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/modeldao/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v6, "users"

    const-string v7, "user_key = ?"

    instance-of v8, v3, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v8, :cond_7

    invoke-virtual {v3, v6, v1, v7, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    :goto_2
    const/4 v6, -0x1

    if-le v3, v6, :cond_8

    :goto_3
    move v3, v4

    goto/16 :goto_1

    :cond_7
    check-cast v3, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v3, v6, v1, v7, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3
.end method

.method public queryWithToken(Ljava/lang/String;)Lcom/boohee/model/User;
    .locals 6
    .param p1, "token"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    const/4 v1, 0x0

    .line 118
    :cond_0
    :goto_0
    return-object v1

    .line 112
    :cond_1
    const/4 v1, 0x0

    .line 113
    .local v1, "user":Lcom/boohee/model/User;
    iget-object v2, p0, Lcom/boohee/modeldao/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from users where token = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 114
    .local v0, "c":Landroid/database/Cursor;
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-virtual {p0, v0}, Lcom/boohee/modeldao/UserDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/User;

    move-result-object v1

    .line 116
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 113
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_2
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public queryWithUserKey(Ljava/lang/String;)Lcom/boohee/model/User;
    .locals 6
    .param p1, "user_key"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 123
    const/4 v1, 0x0

    .line 131
    :cond_0
    :goto_0
    return-object v1

    .line 125
    :cond_1
    const/4 v1, 0x0

    .line 126
    .local v1, "user":Lcom/boohee/model/User;
    iget-object v2, p0, Lcom/boohee/modeldao/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v3, "select * from users where user_key = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    instance-of v5, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v5, :cond_2

    invoke-virtual {v2, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 127
    .local v0, "c":Landroid/database/Cursor;
    :goto_1
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 128
    invoke-virtual {p0, v0}, Lcom/boohee/modeldao/UserDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/User;

    move-result-object v1

    .line 129
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 126
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_2
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v3, v4}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->rawQuery(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_1
.end method

.method public selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/User;
    .locals 13
    .param p1, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 135
    if-nez p1, :cond_0

    .line 136
    const/4 v0, 0x0

    .line 151
    :goto_0
    return-object v0

    .line 138
    :cond_0
    const-string v0, "token"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 139
    .local v9, "token":Ljava/lang/String;
    const-string v0, "user_key"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 140
    .local v11, "user_key":Ljava/lang/String;
    const-string v0, "cellphone"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 141
    .local v10, "cellphone":Ljava/lang/String;
    const-string v0, "user_name"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 142
    .local v1, "user_name":Ljava/lang/String;
    const-string v0, "sex_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "sex_type":Ljava/lang/String;
    const-string v0, "birthday"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 144
    .local v3, "birthday":Ljava/lang/String;
    const-string v0, "height"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v4

    .line 145
    .local v4, "height":F
    const-string v0, "begin_weight"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v5

    .line 146
    .local v5, "begin_weight":F
    const-string v0, "target_weight"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getFloat(I)F

    move-result v6

    .line 147
    .local v6, "target_weight":F
    const-string v0, "target_date"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 148
    .local v7, "target_date":Ljava/lang/String;
    const-string v0, "target_calory"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 149
    .local v8, "target_calory":I
    const-string v0, "updated_at"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 150
    .local v12, "updated_at":Ljava/lang/String;
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 151
    new-instance v0, Lcom/boohee/model/User;

    invoke-direct/range {v0 .. v12}, Lcom/boohee/model/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public bridge synthetic selectWithCursor(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Landroid/database/Cursor;

    .prologue
    .line 15
    invoke-virtual {p0, p1}, Lcom/boohee/modeldao/UserDao;->selectWithCursor(Landroid/database/Cursor;)Lcom/boohee/model/User;

    move-result-object v0

    return-object v0
.end method

.method public update(Lcom/boohee/model/User;)Z
    .locals 8
    .param p1, "user"    # Lcom/boohee/model/User;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 91
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 92
    .local v1, "cv":Landroid/content/ContentValues;
    const-string v2, "user_name"

    iget-object v5, p1, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v2, "sex_type"

    iget-object v5, p1, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const-string v2, "birthday"

    iget-object v5, p1, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string v2, "height"

    iget v5, p1, Lcom/boohee/model/User;->height:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 96
    const-string v2, "begin_weight"

    iget v5, p1, Lcom/boohee/model/User;->begin_weight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 97
    const-string v2, "target_weight"

    iget v5, p1, Lcom/boohee/model/User;->target_weight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 98
    const-string v2, "target_date"

    iget-object v5, p1, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iget v2, p1, Lcom/boohee/model/User;->target_calory:I

    if-lez v2, :cond_0

    .line 100
    const-string v2, "target_calory"

    iget v5, p1, Lcom/boohee/model/User;->target_calory:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    :cond_0
    const-string v2, "updated_at"

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v5, v6}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-array v0, v3, [Ljava/lang/String;

    iget-object v2, p1, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    aput-object v2, v0, v4

    .line 105
    .local v0, "args":[Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/modeldao/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v5, "users"

    const-string v6, "user_key = ?"

    instance-of v7, v2, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_1

    invoke-virtual {v2, v5, v1, v6, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    :goto_0
    const/4 v5, -0x1

    if-le v2, v5, :cond_2

    move v2, v3

    :goto_1
    return v2

    :cond_1
    check-cast v2, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2, v5, v1, v6, v0}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1
.end method

.method public updateWeight(Ljava/lang/String;F)Z
    .locals 8
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "weight"    # F

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 85
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 86
    .local v0, "cv":Landroid/content/ContentValues;
    const-string v1, "begin_weight"

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    .line 87
    iget-object v1, p0, Lcom/boohee/modeldao/UserDao;->db:Landroid/database/sqlite/SQLiteDatabase;

    const-string v4, "users"

    const-string v5, "token = ?"

    new-array v6, v2, [Ljava/lang/String;

    aput-object p1, v6, v3

    instance-of v7, v1, Landroid/database/sqlite/SQLiteDatabase;

    if-nez v7, :cond_0

    invoke-virtual {v1, v4, v0, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    :goto_0
    const/4 v4, -0x1

    if-le v1, v4, :cond_1

    move v1, v2

    :goto_1
    return v1

    :cond_0
    check-cast v1, Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v1, v4, v0, v5, v6}, Lcom/newrelic/agent/android/instrumentation/SQLiteInstrumentation;->update(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v3

    goto :goto_1
.end method
