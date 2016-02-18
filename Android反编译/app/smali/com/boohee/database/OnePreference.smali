.class public Lcom/boohee/database/OnePreference;
.super Ljava/lang/Object;
.source "OnePreference.java"


# static fields
.field public static final NO_CAN_CANCALORY:I = -0x1869f

.field public static final PREFS_LATEST_WEIGHT:Ljava/lang/String; = "prefs_latest_weight"

.field public static final PREFS_NAME:Ljava/lang/String;

.field public static final PREFS_SHOP_UPDATE_AT:Ljava/lang/String; = "prefs_shop_update_at"

.field public static final PREF_ACCEPT_PUSH:Ljava/lang/String; = "pref_accept_push"

.field public static final PREF_ADD_FOOD_GUIDE:Ljava/lang/String; = "pref_add_food_guide"

.field public static final PREF_CANCALORY:Ljava/lang/String; = "pref_cancalory"

.field public static final PREF_DIAMOND_SIGN_REMIND:Ljava/lang/String; = "pref_diamond_sign_remind"

.field public static final PREF_DIET_FOOD_GUIDE:Ljava/lang/String; = "pref_diet_food_guide"

.field public static final PREF_ESTIMATE_FOOD_GUIDE:Ljava/lang/String; = "pref_estimate_food_guide"

.field public static final PREF_FIRST_ONEKEY:Ljava/lang/String; = "pref_first_onekey"

.field public static final PREF_FOOD_SEARCH_HISTORY:Ljava/lang/String; = "pref_food_search_history"

.field public static final PREF_GUIDE_DIET:Ljava/lang/String; = "pref_guide_diet"

.field public static final PREF_GUIDE_DIET_CHART:Ljava/lang/String; = "pref_guide_diet_chart"

.field public static final PREF_GUIDE_HOME:Ljava/lang/String; = "pref_guide_home"

.field public static final PREF_GUIDE_MINE:Ljava/lang/String; = "pref_guide_mine"

.field public static final PREF_GUIDE_PARTNER:Ljava/lang/String; = "pref_guide_partner"

.field public static final PREF_GUIDE_TOOL:Ljava/lang/String; = "pref_guide_tool"

.field public static final PREF_HOME_NEW_GUIDE:Ljava/lang/String; = "pref_home_new_guide"

.field public static final PREF_SEARCH_FOOD_GUIDE:Ljava/lang/String; = "pref_search_food_guide"

.field public static final PREF_SHOW_UNIT:Ljava/lang/String; = "pref_show_unit"

.field public static final PREF_SIGN_RECORD:Ljava/lang/String; = "pref_diamond_sign_record"

.field public static final PREF_SPORT_REMIND:Ljava/lang/String; = "pref_sport_remind"

.field public static final PREF_SPORT_REMIND_TIME:Ljava/lang/String; = "pref_sport_remind_time"

.field public static final PREF_SPORT_SEARCH_HISTORY:Ljava/lang/String; = "pref_sport_search_history"

.field public static final PREF_START_UP_URL:Ljava/lang/String; = "pref_start_up_url"

.field public static final PREF_TOOL_CHOOSE:Ljava/lang/String; = "pref_tool_choose"

.field public static final PREF_VERSION_CODE:Ljava/lang/String; = "pref_version_code"

.field private static preference:Lcom/boohee/database/OnePreference;


# instance fields
.field private setting:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const-class v0, Lcom/boohee/database/OnePreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/database/OnePreference;->PREFS_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    sget-object v0, Lcom/boohee/database/OnePreference;->PREFS_NAME:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    .line 48
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    sget-object v0, Lcom/boohee/database/OnePreference;->preference:Lcom/boohee/database/OnePreference;

    if-nez v0, :cond_0

    .line 52
    new-instance v0, Lcom/boohee/database/OnePreference;

    invoke-direct {v0, p0}, Lcom/boohee/database/OnePreference;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/boohee/database/OnePreference;->preference:Lcom/boohee/database/OnePreference;

    .line 54
    :cond_0
    sget-object v0, Lcom/boohee/database/OnePreference;->preference:Lcom/boohee/database/OnePreference;

    return-object v0
.end method

.method public static getLatestWeight()F
    .locals 2

    .prologue
    .line 143
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "prefs_latest_weight"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public static getPrefDiamondSignRemind()Z
    .locals 3

    .prologue
    .line 283
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_diamond_sign_remind"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPrefSignRecord()Ljava/lang/String;
    .locals 2

    .prologue
    .line 291
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_diamond_sign_record"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefSoprtRemind()Z
    .locals 3

    .prologue
    .line 299
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_sport_remind"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getPrefSportRemindTime()Ljava/lang/String;
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_sport_remind_time"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPrefToolChoose()I
    .locals 2

    .prologue
    .line 275
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_tool_choose"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getReceivePush(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 119
    invoke-static {p0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "isReceivePush"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getStartUpUrl()Ljava/lang/String;
    .locals 5

    .prologue
    .line 262
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v2

    const-string v3, "pref_start_up_url"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->init(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 263
    .local v1, "object":Lorg/json/JSONObject;
    const-string v2, "start_up_url"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 266
    :goto_0
    return-object v2

    .line 264
    :catch_0
    move-exception v0

    .line 265
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 266
    const-string v2, ""

    goto :goto_0
.end method

.method public static getVersionCode()I
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_version_code"

    invoke-virtual {v0, v1}, Lcom/boohee/database/OnePreference;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static isAcceptPush()Z
    .locals 3

    .prologue
    .line 319
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_accept_push"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isAddFoodGuide()Z
    .locals 3

    .prologue
    .line 359
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_add_food_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isDietFoodGuide()Z
    .locals 3

    .prologue
    .line 351
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_diet_food_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isEstimateFoodGuide()Z
    .locals 3

    .prologue
    .line 335
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_estimate_food_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isGuideDietChart()Z
    .locals 3

    .prologue
    .line 311
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_guide_diet_chart"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isNewHomeGuide()Z
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_home_new_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isSearchFoodGuide()Z
    .locals 3

    .prologue
    .line 343
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_search_food_guide"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static isShowCaloryUnit()Z
    .locals 3

    .prologue
    .line 148
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_show_unit"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static putReceivePush(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "value"    # I

    .prologue
    .line 123
    invoke-static {p0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "isReceivePush"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/database/OnePreference;->putInt(Ljava/lang/String;I)V

    .line 124
    return-void
.end method

.method public static setAddFoodGuide(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 363
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_add_food_guide"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 364
    return-void
.end method

.method public static setDietFoodGuide(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 355
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_diet_food_guide"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 356
    return-void
.end method

.method public static setEstimateFoodGuide(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 339
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_estimate_food_guide"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 340
    return-void
.end method

.method public static setGuideDietChart(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 315
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_guide_diet_chart"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 316
    return-void
.end method

.method public static setLatestWeight(F)V
    .locals 2
    .param p0, "weight"    # F

    .prologue
    .line 139
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "prefs_latest_weight"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putFloat(Ljava/lang/String;F)V

    .line 140
    return-void
.end method

.method public static setNewHomeGuide(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 331
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_home_new_guide"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 332
    return-void
.end method

.method public static setPrefAcceptPush(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 323
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_accept_push"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 324
    return-void
.end method

.method public static setPrefDiamondSignRemind(Z)V
    .locals 2
    .param p0, "bool"    # Z

    .prologue
    .line 279
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_diamond_sign_remind"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 280
    return-void
.end method

.method public static setPrefSignRecord(Ljava/lang/String;)V
    .locals 2
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 287
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_diamond_sign_record"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    return-void
.end method

.method public static setPrefSoprtRemind(Z)V
    .locals 2
    .param p0, "bool"    # Z

    .prologue
    .line 295
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_sport_remind"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 296
    return-void
.end method

.method public static setPrefSportRemindTime(Ljava/lang/String;)V
    .locals 2
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 303
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_sport_remind_time"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public static setPrefToolChoose(I)V
    .locals 2
    .param p0, "index"    # I

    .prologue
    .line 271
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_tool_choose"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putInt(Ljava/lang/String;I)V

    .line 272
    return-void
.end method

.method public static setSearchFoodGuide(Z)V
    .locals 2
    .param p0, "status"    # Z

    .prologue
    .line 347
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_search_food_guide"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 348
    return-void
.end method

.method public static setShowUnit(Z)V
    .locals 2
    .param p0, "isCalory"    # Z

    .prologue
    .line 152
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_show_unit"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 153
    return-void
.end method

.method public static setStartUpUrl(Ljava/lang/String;)V
    .locals 2
    .param p0, "splashAds"    # Ljava/lang/String;

    .prologue
    .line 251
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v0

    const-string v1, "pref_start_up_url"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/database/OnePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method

.method public static updateVersionCode()V
    .locals 3

    .prologue
    .line 246
    invoke-static {}, Lcom/boohee/utils/SystemUtil;->getAppVersionCode()I

    move-result v0

    .line 247
    .local v0, "versionCode":I
    invoke-static {}, Lcom/boohee/one/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v1

    const-string v2, "pref_version_code"

    invoke-virtual {v1, v2, v0}, Lcom/boohee/database/OnePreference;->putInt(Ljava/lang/String;I)V

    .line 248
    return-void
.end method


# virtual methods
.method public clearAll()V
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 367
    return-void
.end method

.method public clearSearchHistory()V
    .locals 1

    .prologue
    .line 164
    const-string v0, "pref_food_search_history"

    invoke-virtual {p0, v0}, Lcom/boohee/database/OnePreference;->remove(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public clearSportHistory()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "pref_sport_search_history"

    invoke-virtual {p0, v0}, Lcom/boohee/database/OnePreference;->remove(Ljava/lang/String;)V

    .line 177
    return-void
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 74
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public getCanCalory()I
    .locals 2

    .prologue
    .line 180
    const-string v0, "pref_cancalory"

    const v1, -0x1869f

    invoke-virtual {p0, v0, v1}, Lcom/boohee/database/OnePreference;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getFloat(Ljava/lang/String;)F
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .prologue
    .line 110
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSearchHistory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 156
    const-string v0, "pref_food_search_history"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShopUpdateAt()Ljava/lang/String;
    .locals 2

    .prologue
    .line 131
    const-string v0, "prefs_shop_update_at"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSportHistory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 168
    const-string v0, "pref_sport_search_history"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/boohee/database/OnePreference;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "default_value"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/boohee/database/OnePreference;->setting:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isFirstOneKey()Z
    .locals 1

    .prologue
    .line 212
    const-string v0, "pref_first_onekey"

    invoke-virtual {p0, v0}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGuideDiet()Z
    .locals 2

    .prologue
    .line 204
    const-string v0, "pref_guide_diet"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGuideHome()Z
    .locals 1

    .prologue
    .line 220
    const-string v0, "pref_guide_home"

    invoke-virtual {p0, v0}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isGuideMine()Z
    .locals 2

    .prologue
    .line 196
    const-string v0, "pref_guide_mine"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGuidePartner()Z
    .locals 2

    .prologue
    .line 228
    const-string v0, "pref_guide_partner"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isGuideTool()Z
    .locals 2

    .prologue
    .line 188
    const-string v0, "pref_guide_tool"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/boohee/database/OnePreference;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public putBoolean(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/boohee/database/OnePreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 67
    return-void
.end method

.method public putFloat(Ljava/lang/String;F)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/boohee/database/OnePreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 95
    return-void
.end method

.method public putInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 78
    invoke-virtual {p0}, Lcom/boohee/database/OnePreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 79
    return-void
.end method

.method public putLong(Ljava/lang/String;J)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/boohee/database/OnePreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 87
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/boohee/database/OnePreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 63
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/boohee/database/OnePreference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 99
    return-void
.end method

.method public setCanCalory(I)V
    .locals 1
    .param p1, "canCalory"    # I

    .prologue
    .line 184
    const-string v0, "pref_cancalory"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putInt(Ljava/lang/String;I)V

    .line 185
    return-void
.end method

.method public setFirstOneKey(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 216
    const-string v0, "pref_first_onekey"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 217
    return-void
.end method

.method public setGuideDiet(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 208
    const-string v0, "pref_guide_diet"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 209
    return-void
.end method

.method public setGuideHome(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 224
    const-string v0, "pref_guide_home"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 225
    return-void
.end method

.method public setGuideMine(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 200
    const-string v0, "pref_guide_mine"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 201
    return-void
.end method

.method public setGuidePartner(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 232
    const-string v0, "pref_guide_partner"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 233
    return-void
.end method

.method public setGuideTool(Z)V
    .locals 1
    .param p1, "status"    # Z

    .prologue
    .line 192
    const-string v0, "pref_guide_tool"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putBoolean(Ljava/lang/String;Z)V

    .line 193
    return-void
.end method

.method public setSearchHistory(Ljava/lang/String;)V
    .locals 1
    .param p1, "historyString"    # Ljava/lang/String;

    .prologue
    .line 160
    const-string v0, "pref_food_search_history"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public setShopUpdateAt(Ljava/lang/String;)V
    .locals 1
    .param p1, "shopUpdateAt"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "prefs_shop_update_at"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    return-void
.end method

.method public setSportHistory(Ljava/lang/String;)V
    .locals 1
    .param p1, "historyString"    # Ljava/lang/String;

    .prologue
    .line 172
    const-string v0, "pref_sport_search_history"

    invoke-virtual {p0, v0, p1}, Lcom/boohee/database/OnePreference;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    return-void
.end method
