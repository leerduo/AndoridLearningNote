.class public Lcom/boohee/model/User;
.super Lcom/boohee/model/ModelBase;
.source "User.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final TAG:Ljava/lang/String;

.field private static final serialVersionUID:J = -0x6274c97b8044855fL


# instance fields
.field public avatar_url:Ljava/lang/String;

.field public begin_weight:F

.field public birthday:Ljava/lang/String;

.field public cellphone:Ljava/lang/String;

.field public cellphone_state:Z

.field public description:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public height:F

.field public latest_weight:F

.field public nick_name:Ljava/lang/String;

.field public sex_type:Ljava/lang/String;

.field public target_calory:I

.field public target_date:Ljava/lang/String;

.field public target_weight:F

.field public token:Ljava/lang/String;

.field public updated_at:Ljava/lang/String;

.field public user_key:Ljava/lang/String;

.field public user_name:Ljava/lang/String;

.field public user_type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/boohee/model/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/model/User;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLjava/lang/String;I)V
    .locals 0
    .param p1, "user_name"    # Ljava/lang/String;
    .param p2, "sex_type"    # Ljava/lang/String;
    .param p3, "birthday"    # Ljava/lang/String;
    .param p4, "height"    # F
    .param p5, "begin_weight"    # F
    .param p6, "target_weight"    # F
    .param p7, "target_date"    # Ljava/lang/String;
    .param p8, "target_calory"    # I

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 58
    iput-object p1, p0, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    .line 59
    iput-object p2, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    .line 60
    iput-object p3, p0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    .line 61
    iput p4, p0, Lcom/boohee/model/User;->height:F

    .line 62
    iput p5, p0, Lcom/boohee/model/User;->begin_weight:F

    .line 63
    iput p6, p0, Lcom/boohee/model/User;->target_weight:F

    .line 64
    iput-object p7, p0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    .line 65
    iput p8, p0, Lcom/boohee/model/User;->target_calory:I

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLjava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "user_name"    # Ljava/lang/String;
    .param p2, "sex_type"    # Ljava/lang/String;
    .param p3, "birthday"    # Ljava/lang/String;
    .param p4, "height"    # F
    .param p5, "begin_weight"    # F
    .param p6, "target_weight"    # F
    .param p7, "target_date"    # Ljava/lang/String;
    .param p8, "target_calory"    # I
    .param p9, "token"    # Ljava/lang/String;
    .param p10, "cellphone"    # Ljava/lang/String;
    .param p11, "user_key"    # Ljava/lang/String;
    .param p12, "updated_at"    # Ljava/lang/String;

    .prologue
    .line 71
    invoke-direct/range {p0 .. p8}, Lcom/boohee/model/User;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFFLjava/lang/String;I)V

    .line 73
    iput-object p9, p0, Lcom/boohee/model/User;->token:Ljava/lang/String;

    .line 74
    iput-object p10, p0, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    .line 75
    iput-object p11, p0, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    .line 76
    iput-object p12, p0, Lcom/boohee/model/User;->updated_at:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "user_key"    # Ljava/lang/String;
    .param p3, "user_name"    # Ljava/lang/String;
    .param p4, "email"    # Ljava/lang/String;
    .param p5, "cellphone"    # Ljava/lang/String;
    .param p6, "nick_name"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/boohee/model/User;->token:Ljava/lang/String;

    .line 49
    iput-object p2, p0, Lcom/boohee/model/User;->user_key:Ljava/lang/String;

    .line 50
    iput-object p3, p0, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    .line 51
    iput-object p4, p0, Lcom/boohee/model/User;->email:Ljava/lang/String;

    .line 52
    iput-object p5, p0, Lcom/boohee/model/User;->cellphone:Ljava/lang/String;

    .line 53
    iput-object p6, p0, Lcom/boohee/model/User;->nick_name:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static parsePassportUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;
    .locals 8
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 368
    :try_start_0
    const-string v4, "token"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 369
    .local v1, "token":Ljava/lang/String;
    const-string v4, "user"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 370
    .local v3, "userObj":Lorg/json/JSONObject;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    instance-of v5, v3, Lorg/json/JSONObject;

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .end local v3    # "userObj":Lorg/json/JSONObject;
    :goto_0
    const-class v6, Lcom/boohee/model/User;

    instance-of v7, v4, Lcom/google/gson/Gson;

    if-nez v7, :cond_1

    invoke-virtual {v4, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    :goto_1
    check-cast v2, Lcom/boohee/model/User;

    .line 371
    .local v2, "user":Lcom/boohee/model/User;
    iput-object v1, v2, Lcom/boohee/model/User;->token:Ljava/lang/String;

    .line 372
    sget-object v4, Lcom/boohee/model/User;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "user_type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Lcom/boohee/model/User;->user_type:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .end local v1    # "token":Ljava/lang/String;
    .end local v2    # "user":Lcom/boohee/model/User;
    :goto_2
    return-object v2

    .line 370
    .restart local v1    # "token":Ljava/lang/String;
    .restart local v3    # "userObj":Lorg/json/JSONObject;
    :cond_0
    check-cast v3, Lorg/json/JSONObject;

    .end local v3    # "userObj":Lorg/json/JSONObject;
    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    check-cast v4, Lcom/google/gson/Gson;

    invoke-static {v4, v5, v6}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_1

    .line 374
    .end local v1    # "token":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 375
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 377
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public static parseUser(Lorg/json/JSONObject;)Lcom/boohee/model/User;
    .locals 5
    .param p0, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 381
    if-nez p0, :cond_0

    .line 382
    const/4 v0, 0x0

    .line 384
    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_0
    return-object v0

    .line 383
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    instance-of v2, p0, Lorg/json/JSONObject;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .end local p0    # "object":Lorg/json/JSONObject;
    :goto_1
    const-class v3, Lcom/boohee/model/User;

    instance-of v4, v1, Lcom/google/gson/Gson;

    if-nez v4, :cond_2

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    :goto_2
    check-cast v0, Lcom/boohee/model/User;

    .line 384
    .local v0, "user":Lcom/boohee/model/User;
    goto :goto_0

    .line 383
    .end local v0    # "user":Lcom/boohee/model/User;
    .restart local p0    # "object":Lorg/json/JSONObject;
    :cond_1
    check-cast p0, Lorg/json/JSONObject;

    .end local p0    # "object":Lorg/json/JSONObject;
    invoke-static {p0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    check-cast v1, Lcom/google/gson/Gson;

    invoke-static {v1, v2, v3}, Lcom/newrelic/agent/android/instrumentation/GsonInstrumentation;->fromJson(Lcom/google/gson/Gson;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public beginWeight()F
    .locals 2

    .prologue
    .line 114
    iget v0, p0, Lcom/boohee/model/User;->begin_weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x42700000    # 60.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/boohee/model/User;->begin_weight:F

    goto :goto_0
.end method

.method public birthday()Ljava/lang/String;
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "null"

    iget-object v1, p0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 105
    :cond_0
    const-string v0, "1985-01-01"

    .line 106
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    goto :goto_0
.end method

.method public calcBee(F)I
    .locals 12
    .param p1, "latest_weight"    # F

    .prologue
    const-wide v6, 0x4023fae147ae147bL    # 9.99

    const-wide/high16 v10, 0x4019000000000000L    # 6.25

    const-wide v8, 0x4013ae147ae147aeL    # 4.92

    const/4 v2, 0x0

    .line 212
    cmpl-float v3, p1, v2

    if-lez v3, :cond_1

    move v1, p1

    .line 213
    .local v1, "weight":F
    :goto_0
    const/4 v0, 0x0

    .line 214
    .local v0, "bee":F
    const-string v3, "1"

    iget-object v4, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 216
    float-to-double v4, v1

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/boohee/model/User;->height:F

    float-to-double v6, v3

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/boohee/model/User;->getAge()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    add-double/2addr v4, v6

    double-to-float v0, v4

    .line 221
    :goto_1
    float-to-double v4, v0

    const-wide v6, 0x3fee666666666666L    # 0.95

    mul-double/2addr v4, v6

    double-to-float v0, v4

    .line 222
    cmpg-float v3, v0, v2

    if-gez v3, :cond_0

    move v0, v2

    .line 223
    :cond_0
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v2

    return v2

    .line 212
    .end local v0    # "bee":F
    .end local v1    # "weight":F
    :cond_1
    iget v1, p0, Lcom/boohee/model/User;->begin_weight:F

    goto :goto_0

    .line 219
    .restart local v0    # "bee":F
    .restart local v1    # "weight":F
    :cond_2
    float-to-double v4, v1

    mul-double/2addr v4, v6

    iget v3, p0, Lcom/boohee/model/User;->height:F

    float-to-double v6, v3

    mul-double/2addr v6, v10

    add-double/2addr v4, v6

    invoke-virtual {p0}, Lcom/boohee/model/User;->getAge()I

    move-result v3

    int-to-double v6, v3

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x4064200000000000L    # 161.0

    sub-double/2addr v4, v6

    double-to-float v0, v4

    goto :goto_1
.end method

.method public calcBmi(F)F
    .locals 8
    .param p1, "latest_weight"    # F

    .prologue
    const/4 v3, 0x0

    .line 189
    iget v4, p0, Lcom/boohee/model/User;->height:F

    cmpl-float v4, v4, v3

    if-nez v4, :cond_0

    .line 195
    :goto_0
    return v3

    .line 192
    :cond_0
    iget v4, p0, Lcom/boohee/model/User;->height:F

    const/high16 v5, 0x42c80000    # 100.0f

    div-float v0, v4, v5

    .line 193
    .local v0, "h":F
    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move v2, p1

    .line 194
    .local v2, "weight":F
    :goto_1
    mul-float v3, v0, v0

    div-float v1, v2, v3

    .line 195
    .local v1, "ret":F
    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    div-double/2addr v4, v6

    double-to-float v3, v4

    goto :goto_0

    .line 193
    .end local v1    # "ret":F
    .end local v2    # "weight":F
    :cond_1
    iget v2, p0, Lcom/boohee/model/User;->begin_weight:F

    goto :goto_1
.end method

.method public calcBodyAge(F)I
    .locals 13
    .param p1, "latest_weight"    # F

    .prologue
    const/16 v12, 0x12

    const/4 v11, 0x3

    const/4 v10, 0x2

    .line 328
    invoke-virtual {p0}, Lcom/boohee/model/User;->getAge()I

    move-result v1

    .line 329
    .local v1, "actualAge":I
    if-ge v1, v12, :cond_0

    .line 363
    .end local v1    # "actualAge":I
    :goto_0
    return v1

    .line 332
    .restart local v1    # "actualAge":I
    :cond_0
    const/4 v6, 0x0

    .line 333
    .local v6, "d":F
    const/16 v8, 0x28

    if-ge v1, v8, :cond_6

    .line 334
    const-string v8, "1"

    iget-object v9, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const/high16 v0, 0x41600000    # 14.0f

    .line 335
    .local v0, "a":F
    :goto_1
    const-string v8, "1"

    iget-object v9, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    const v3, 0x3e73b646    # 0.238f

    .line 336
    .local v3, "b":F
    :goto_2
    const/high16 v5, 0x41900000    # 18.0f

    .line 342
    .local v5, "c":F
    :goto_3
    int-to-float v8, v1

    sub-float/2addr v8, v5

    mul-float/2addr v8, v3

    add-float v2, v0, v8

    .line 343
    .local v2, "averageFat":F
    invoke-virtual {p0, p1}, Lcom/boohee/model/User;->calcBodyFat(F)F

    move-result v8

    sub-float/2addr v8, v2

    float-to-int v7, v8

    .line 344
    .local v7, "subFat":I
    if-gez v7, :cond_1

    .line 345
    const/high16 v6, 0x3f000000    # 0.5f

    .line 347
    :cond_1
    const-string v8, "1"

    iget-object v9, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 348
    if-le v7, v10, :cond_9

    .line 349
    const/high16 v6, 0x3fc00000    # 1.5f

    .line 358
    :cond_2
    :goto_4
    int-to-float v8, v1

    int-to-float v9, v7

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-int v4, v8

    .line 359
    .local v4, "bodyAge":I
    if-ge v4, v12, :cond_c

    .line 360
    const/16 v4, 0x12

    :cond_3
    :goto_5
    move v1, v4

    .line 363
    goto :goto_0

    .line 334
    .end local v0    # "a":F
    .end local v2    # "averageFat":F
    .end local v3    # "b":F
    .end local v4    # "bodyAge":I
    .end local v5    # "c":F
    .end local v7    # "subFat":I
    :cond_4
    const/high16 v0, 0x41880000    # 17.0f

    goto :goto_1

    .line 335
    .restart local v0    # "a":F
    :cond_5
    const v3, 0x3edba5e3    # 0.429f

    goto :goto_2

    .line 338
    .end local v0    # "a":F
    :cond_6
    const-string v8, "1"

    iget-object v9, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const/high16 v0, 0x41a00000    # 20.0f

    .line 339
    .restart local v0    # "a":F
    :goto_6
    const-string v8, "1"

    iget-object v9, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    const v3, 0x3e0c49ba    # 0.137f

    .line 340
    .restart local v3    # "b":F
    :goto_7
    const/high16 v5, 0x42200000    # 40.0f

    .restart local v5    # "c":F
    goto :goto_3

    .line 338
    .end local v0    # "a":F
    .end local v3    # "b":F
    .end local v5    # "c":F
    :cond_7
    const/high16 v0, 0x41c80000    # 25.0f

    goto :goto_6

    .line 339
    .restart local v0    # "a":F
    :cond_8
    const v3, 0x3e3020c5    # 0.172f

    goto :goto_7

    .line 350
    .restart local v2    # "averageFat":F
    .restart local v3    # "b":F
    .restart local v5    # "c":F
    .restart local v7    # "subFat":I
    :cond_9
    if-lez v7, :cond_2

    if-gt v7, v10, :cond_2

    .line 351
    const/4 v6, 0x0

    goto :goto_4

    .line 353
    :cond_a
    if-le v7, v11, :cond_b

    .line 354
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_4

    .line 355
    :cond_b
    if-lez v7, :cond_2

    if-gt v7, v11, :cond_2

    .line 356
    const/4 v6, 0x0

    goto :goto_4

    .line 361
    .restart local v4    # "bodyAge":I
    :cond_c
    const/16 v8, 0x3c

    if-le v4, v8, :cond_3

    .line 362
    const/16 v4, 0x3c

    goto :goto_5
.end method

.method public calcBodyFat(F)F
    .locals 6
    .param p1, "latest_weight"    # F

    .prologue
    .line 288
    const/4 v0, 0x0

    .line 289
    .local v0, "sex":I
    const-string v2, "1"

    iget-object v3, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 290
    const/4 v0, 0x1

    .line 292
    :cond_0
    const v2, 0x3f99999a    # 1.2f

    invoke-virtual {p0, p1}, Lcom/boohee/model/User;->calcBmi(F)F

    move-result v3

    mul-float/2addr v2, v3

    const v3, 0x3e6b851f    # 0.23f

    invoke-virtual {p0}, Lcom/boohee/model/User;->getAge()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    const v3, 0x412ccccd    # 10.8f

    int-to-float v4, v0

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    const v3, 0x40accccd    # 5.4f

    sub-float v1, v2, v3

    .line 293
    .local v1, "value":F
    const/high16 v2, 0x40a00000    # 5.0f

    cmpg-float v2, v1, v2

    if-gez v2, :cond_3

    .line 294
    const/high16 v1, 0x40a00000    # 5.0f

    .line 298
    :cond_1
    :goto_0
    const-string v2, "1"

    iget-object v3, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 299
    float-to-double v2, v1

    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    sub-double/2addr v2, v4

    double-to-float v1, v2

    .line 301
    :cond_2
    return v1

    .line 295
    :cond_3
    const/high16 v2, 0x42700000    # 60.0f

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    .line 296
    const/high16 v1, 0x42700000    # 60.0f

    goto :goto_0
.end method

.method public calcHealthyWeight()[F
    .locals 9

    .prologue
    const/high16 v8, 0x41200000    # 10.0f

    .line 200
    iget v3, p0, Lcom/boohee/model/User;->height:F

    const/high16 v4, 0x42c80000    # 100.0f

    div-float v0, v3, v4

    .line 201
    .local v0, "h":F
    const-wide v4, 0x4032800000000000L    # 18.5

    mul-float v3, v0, v0

    float-to-double v6, v3

    mul-double/2addr v4, v6

    double-to-float v2, v4

    .line 202
    .local v2, "min_h":F
    const/high16 v3, 0x41c00000    # 24.0f

    mul-float v4, v0, v0

    mul-float v1, v3, v4

    .line 204
    .local v1, "max_h":F
    mul-float v3, v2, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float v2, v3, v8

    .line 205
    mul-float v3, v1, v8

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v8

    .line 207
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    return-object v3
.end method

.method public calcHeartRate()[I
    .locals 9

    .prologue
    const/high16 v8, 0x435c0000    # 220.0f

    .line 228
    invoke-virtual {p0}, Lcom/boohee/model/User;->getAge()I

    move-result v3

    int-to-float v0, v3

    .line 229
    .local v0, "age":F
    sub-float v3, v8, v0

    float-to-double v4, v3

    const-wide v6, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v4, v6

    double-to-float v2, v4

    .line 230
    .local v2, "min":F
    sub-float v3, v8, v0

    float-to-double v4, v3

    const-wide v6, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v4, v6

    double-to-float v1, v4

    .line 232
    .local v1, "max":F
    const/4 v3, 0x2

    new-array v3, v3, [I

    const/4 v4, 0x0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v4

    const/4 v4, 0x1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v5

    aput v5, v3, v4

    return-object v3
.end method

.method public calcIdealLoseSpeed(Ljava/util/Date;)F
    .locals 5
    .param p1, "beigin_date"    # Ljava/util/Date;

    .prologue
    .line 237
    iget v3, p0, Lcom/boohee/model/User;->begin_weight:F

    iget v4, p0, Lcom/boohee/model/User;->target_weight:F

    sub-float v1, v3, v4

    .line 238
    .local v1, "loseWeight":F
    iget-object v3, p0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    invoke-static {v3}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/boohee/utils/DateHelper;->between(Ljava/util/Date;Ljava/util/Date;)I

    move-result v0

    .line 239
    .local v0, "days":I
    const v3, 0x45f0a000    # 7700.0f

    mul-float/2addr v3, v1

    int-to-float v4, v0

    div-float v2, v3, v4

    .line 240
    .local v2, "speed":F
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 241
    const v2, 0x44098000    # 550.0f

    .line 243
    :cond_0
    return v2
.end method

.method public calcTargetCalory(Ljava/util/Date;F)I
    .locals 8
    .param p1, "beigin_date"    # Ljava/util/Date;
    .param p2, "latest_weight"    # F

    .prologue
    .line 249
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/boohee/model/User;->calcBee(F)I

    move-result v0

    .line 250
    .local v0, "bee":I
    const-wide v4, 0x3ff4cccccccccccdL    # 1.3

    int-to-double v6, v0

    mul-double/2addr v4, v6

    invoke-virtual {p0, p1}, Lcom/boohee/model/User;->calcIdealLoseSpeed(Ljava/util/Date;)F

    move-result v3

    float-to-double v6, v3

    sub-double/2addr v4, v6

    double-to-float v2, v4

    .line 251
    .local v2, "targetCalory":F
    int-to-float v3, v0

    cmpg-float v3, v2, v3

    if-gez v3, :cond_0

    .line 252
    const v3, 0x3f666666    # 0.9f

    int-to-float v4, v0

    mul-float/2addr v3, v4

    const/high16 v4, 0x43480000    # 200.0f

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 257
    .end local v0    # "bee":I
    .end local v2    # "targetCalory":F
    :goto_0
    return v3

    .line 254
    .restart local v0    # "bee":I
    .restart local v2    # "targetCalory":F
    :cond_0
    invoke-static {v2}, Ljava/lang/Math;->round(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    goto :goto_0

    .line 256
    .end local v0    # "bee":I
    .end local v2    # "targetCalory":F
    :catch_0
    move-exception v1

    .line 257
    .local v1, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getAge()I
    .locals 3

    .prologue
    .line 263
    const/16 v0, 0x19

    .line 265
    .local v0, "age":I
    :try_start_0
    iget-object v2, p0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->parseString(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->getAge(Ljava/util/Date;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 269
    :goto_0
    return v0

    .line 266
    :catch_0
    move-exception v1

    .line 267
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCheckedItem()I
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public getWeight()F
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/boohee/model/User;->begin_weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x425c0000    # 55.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/boohee/model/User;->begin_weight:F

    goto :goto_0
.end method

.method public hasProfile()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 273
    iget v1, p0, Lcom/boohee/model/User;->target_calory:I

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public height()F
    .locals 2

    .prologue
    .line 110
    iget v0, p0, Lcom/boohee/model/User;->height:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x43200000    # 160.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/boohee/model/User;->height:F

    goto :goto_0
.end method

.method public isMale()Z
    .locals 2

    .prologue
    .line 88
    const-string v0, "2"

    iget-object v1, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setBeginWeight(Ljava/lang/String;)V
    .locals 1
    .param p1, "begin_weight"    # Ljava/lang/String;

    .prologue
    .line 152
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/model/User;->begin_weight:F

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/boohee/model/User;->begin_weight:F

    goto :goto_0
.end method

.method public setBirthday(Ljava/lang/String;)V
    .locals 1
    .param p1, "birthday"    # Ljava/lang/String;

    .prologue
    .line 136
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const-string v0, "1985-01-01"

    iput-object v0, p0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    iput-object p1, p0, Lcom/boohee/model/User;->birthday:Ljava/lang/String;

    goto :goto_0
.end method

.method public setHeight(Ljava/lang/String;)V
    .locals 1
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 144
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/model/User;->height:F

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/boohee/model/User;->height:F

    goto :goto_0
.end method

.method public setSexType(Ljava/lang/String;)V
    .locals 1
    .param p1, "sexType"    # Ljava/lang/String;

    .prologue
    .line 128
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    const-string v0, "1"

    iput-object v0, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    const-string v0, "2"

    iput-object v0, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTargetDate(Ljava/lang/String;)V
    .locals 4
    .param p1, "target_date"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x2

    .line 168
    const-string v2, "null"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 170
    .local v0, "cal":Ljava/util/Calendar;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 171
    .local v1, "d":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 172
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v0, v3, v2}, Ljava/util/Calendar;->set(II)V

    .line 173
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    .line 177
    .end local v0    # "cal":Ljava/util/Calendar;
    .end local v1    # "d":Ljava/util/Date;
    :goto_0
    return-void

    .line 175
    :cond_0
    iput-object p1, p0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    goto :goto_0
.end method

.method public setTargetWeight(Ljava/lang/String;)V
    .locals 1
    .param p1, "target_weight"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/model/User;->target_weight:F

    .line 165
    :goto_0
    return-void

    .line 163
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/boohee/model/User;->target_weight:F

    goto :goto_0
.end method

.method public sexName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 80
    const-string v0, "1"

    iget-object v1, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    const-string v0, "\u7537"

    .line 83
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u5973"

    goto :goto_0
.end method

.method public sexType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "null"

    iget-object v1, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    const-string v0, "2"

    .line 100
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/boohee/model/User;->sex_type:Ljava/lang/String;

    goto :goto_0
.end method

.method public targetDate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "null"

    iget-object v1, p0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    invoke-static {}, Lcom/boohee/utils/DateHelper;->defaultTargetDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/boohee/model/User;->target_date:Ljava/lang/String;

    goto :goto_0
.end method

.method public targetWeight()F
    .locals 2

    .prologue
    .line 118
    iget v0, p0, Lcom/boohee/model/User;->target_weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/high16 v0, 0x42480000    # 50.0f

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/boohee/model/User;->target_weight:F

    goto :goto_0
.end method

.method public userName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    :cond_0
    const-string v0, "general"

    .line 94
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/boohee/model/User;->user_name:Ljava/lang/String;

    goto :goto_0
.end method
