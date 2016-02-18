.class public Lcom/boohee/food/AddCustomFoodActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AddCustomFoodActivity.java"


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "key_date"

.field private static final KEY_IS_ADD_DIET:Ljava/lang/String; = "isAddDiet"

.field private static final KEY_TIME_TYPE:Ljava/lang/String; = "key_time_type"


# instance fields
.field et_food_calory:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c8
    .end annotation
.end field

.field et_food_name:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c5
    .end annotation
.end field

.field et_food_num:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c6
    .end annotation
.end field

.field et_food_unit:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c7
    .end annotation
.end field

.field private isAddDiet:Z

.field private mAmount:F

.field private mCalory:F

.field private mFoodName:Ljava/lang/String;

.field private mTimeType:I

.field private mUnitName:Ljava/lang/String;

.field private record_on:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/boohee/food/AddCustomFoodActivity;->isAddDiet:Z

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/AddCustomFoodActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddCustomFoodActivity;

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/boohee/food/AddCustomFoodActivity;->isAddDiet:Z

    return v0
.end method

.method static synthetic access$100(Lcom/boohee/food/AddCustomFoodActivity;Lcom/boohee/model/CustomFood;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddCustomFoodActivity;
    .param p1, "x1"    # Lcom/boohee/model/CustomFood;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/boohee/food/AddCustomFoodActivity;->createEating(Lcom/boohee/model/CustomFood;)V

    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_num:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/food/AddCustomFoodActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddCustomFoodActivity$1;-><init>(Lcom/boohee/food/AddCustomFoodActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    return-void
.end method

.method private addTolocal()V
    .locals 7

    .prologue
    const/16 v5, 0x3c

    .line 134
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_name:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mFoodName:Ljava/lang/String;

    .line 135
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_unit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mUnitName:Ljava/lang/String;

    .line 136
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 137
    .local v1, "food_amount":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_calory:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 139
    .local v2, "food_calory":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mFoodName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 140
    const-string v3, "\u98df\u7269\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 141
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_name:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 194
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mFoodName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 144
    const-string v3, "\u8d85\u51fa\u5b57\u6570\u9650\u5236"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 148
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 149
    const-string v3, "\u6570\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 154
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mAmount:F

    .line 155
    iget v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mAmount:F

    const v4, 0x4479c000    # 999.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 156
    const-string v3, "\u6570\u91cf\u4e0d\u80fd\u8d85\u8fc7999"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 157
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "\u6570\u91cf\u4e0d\u80fd\u8d85\u8fc7999"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 166
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mUnitName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 167
    const-string v3, "\u5355\u4f4d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_unit:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 170
    :cond_4
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mFoodName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_5

    .line 171
    const-string v3, "\u8d85\u51fa\u5b57\u6570\u9650\u5236"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_5
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 176
    const-string v3, "\u603b\u70ed\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_calory:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 181
    :cond_6
    :try_start_1
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-float v3, v4

    iput v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mCalory:F

    .line 182
    iget v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mCalory:F

    const v4, 0x461c4000    # 10000.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    .line 183
    const-string v3, "\u603b\u70ed\u91cf\u4e0d\u80fd\u8d85\u8fc710000"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_calory:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 187
    :catch_1
    move-exception v0

    .line 188
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "\u603b\u70ed\u91cf\u4e0d\u80fd\u8d85\u8fc710000"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->et_food_calory:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_7
    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->mFoodName:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/food/AddCustomFoodActivity;->mUnitName:Ljava/lang/String;

    iget v5, p0, Lcom/boohee/food/AddCustomFoodActivity;->mAmount:F

    iget v6, p0, Lcom/boohee/food/AddCustomFoodActivity;->mCalory:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/boohee/food/AddCustomFoodActivity;->createCustomFood(Ljava/lang/String;Ljava/lang/String;FF)V

    goto/16 :goto_0
.end method

.method public static comeWithoutAddDiet(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/AddCustomFoodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 68
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "isAddDiet"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 70
    return-void
.end method

.method private createCustomFood(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 4
    .param p1, "foodName"    # Ljava/lang/String;
    .param p2, "unitName"    # Ljava/lang/String;
    .param p3, "amount"    # F
    .param p4, "calory"    # F

    .prologue
    .line 201
    invoke-virtual {p0}, Lcom/boohee/food/AddCustomFoodActivity;->showLoading()V

    .line 202
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boohee/food/AddCustomFoodActivity;->paramsWithCustomFood(Ljava/lang/String;Ljava/lang/String;FF)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddCustomFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/food/AddCustomFoodActivity$2;

    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/AddCustomFoodActivity$2;-><init>(Lcom/boohee/food/AddCustomFoodActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->createCustomFood(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 225
    return-void
.end method

.method private createEating(Lcom/boohee/model/CustomFood;)V
    .locals 4
    .param p1, "customFood"    # Lcom/boohee/model/CustomFood;

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/boohee/food/AddCustomFoodActivity;->showLoading()V

    .line 232
    invoke-direct {p0, p1}, Lcom/boohee/food/AddCustomFoodActivity;->paramsWithFoodRecord(Lcom/boohee/model/CustomFood;)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddCustomFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/food/AddCustomFoodActivity$3;

    iget-object v3, p0, Lcom/boohee/food/AddCustomFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/AddCustomFoodActivity$3;-><init>(Lcom/boohee/food/AddCustomFoodActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->createEating(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 251
    return-void
.end method

.method private handleIntent()V
    .locals 3

    .prologue
    .line 83
    const-string v0, "key_time_type"

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCustomFoodActivity;->getIntExtra(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/food/AddCustomFoodActivity;->mTimeType:I

    .line 84
    const-string v0, "key_date"

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCustomFoodActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/AddCustomFoodActivity;->record_on:Ljava/lang/String;

    .line 85
    invoke-virtual {p0}, Lcom/boohee/food/AddCustomFoodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isAddDiet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/food/AddCustomFoodActivity;->isAddDiet:Z

    .line 86
    return-void
.end method

.method private paramsWithCustomFood(Ljava/lang/String;Ljava/lang/String;FF)Lcom/boohee/one/http/JsonParams;
    .locals 3
    .param p1, "foodName"    # Ljava/lang/String;
    .param p2, "unitName"    # Ljava/lang/String;
    .param p3, "amount"    # F
    .param p4, "calory"    # F

    .prologue
    .line 277
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 278
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    iget-object v2, p0, Lcom/boohee/food/AddCustomFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    const-string v1, "food_name"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    const-string v1, "unit_name"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    const-string v1, "amount"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 282
    const-string v1, "calory"

    invoke-virtual {v0, v1, p4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 283
    return-object v0
.end method

.method private paramsWithFoodRecord(Lcom/boohee/model/CustomFood;)Lcom/boohee/one/http/JsonParams;
    .locals 3
    .param p1, "customFood"    # Lcom/boohee/model/CustomFood;

    .prologue
    .line 260
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 261
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    iget-object v2, p0, Lcom/boohee/food/AddCustomFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-string v1, "record_on"

    iget-object v2, p0, Lcom/boohee/food/AddCustomFoodActivity;->record_on:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const-string v1, "time_type"

    iget v2, p0, Lcom/boohee/food/AddCustomFoodActivity;->mTimeType:I

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 264
    const-string v1, "unit_name"

    iget-object v2, p1, Lcom/boohee/model/CustomFood;->unit_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-string v1, "amount"

    iget-object v2, p1, Lcom/boohee/model/CustomFood;->amount:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    const-string v1, "food_name"

    iget-object v2, p1, Lcom/boohee/model/CustomFood;->food_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const-string v1, "calory"

    iget-object v2, p1, Lcom/boohee/model/CustomFood;->calory:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    return-object v0
.end method

.method public static start(Landroid/content/Context;ILjava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "time_type"    # I
    .param p2, "record_on"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/AddCustomFoodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "key_time_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 62
    const-string v1, "key_date"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 64
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    const v0, 0x7f030022

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCustomFoodActivity;->setContentView(I)V

    .line 76
    const v0, 0x7f0701af

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCustomFoodActivity;->setTitle(I)V

    .line 77
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 78
    invoke-direct {p0}, Lcom/boohee/food/AddCustomFoodActivity;->handleIntent()V

    .line 79
    invoke-direct {p0}, Lcom/boohee/food/AddCustomFoodActivity;->addListener()V

    .line 80
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 90
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 91
    const/4 v1, 0x0

    const v2, 0x7f070082

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 92
    .local v0, "add":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 93
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 98
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 100
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/food/AddCustomFoodActivity;->addTolocal()V

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
