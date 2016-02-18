.class public Lcom/boohee/food/AddCustomSportActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AddCustomSportActivity.java"


# static fields
.field private static final KEY_DATE:Ljava/lang/String; = "key_date"


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

.field private mAmount:F

.field private mCalory:F

.field private mSportName:Ljava/lang/String;

.field private mUnitName:Ljava/lang/String;

.field private record_on:Ljava/lang/String;

.field tv_food_unit:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c9
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/AddCustomSportActivity;)Lcom/boohee/one/ui/BaseActivity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddCustomSportActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/food/AddCustomSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/food/AddCustomSportActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddCustomSportActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/food/AddCustomSportActivity;->mUnitName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/boohee/food/AddCustomSportActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddCustomSportActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/boohee/food/AddCustomSportActivity;->mUnitName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/food/AddCustomSportActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/food/AddCustomSportActivity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/boohee/food/AddCustomSportActivity;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/food/AddCustomSportActivity;Lcom/boohee/model/CustomSport;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/AddCustomSportActivity;
    .param p1, "x1"    # Lcom/boohee/model/CustomSport;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/boohee/food/AddCustomSportActivity;->createActivity(Lcom/boohee/model/CustomSport;)V

    return-void
.end method

.method private addListener()V
    .locals 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_num:Landroid/widget/EditText;

    new-instance v1, Lcom/boohee/food/AddCustomSportActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddCustomSportActivity$1;-><init>(Lcom/boohee/food/AddCustomSportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 127
    iget-object v0, p0, Lcom/boohee/food/AddCustomSportActivity;->tv_food_unit:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/food/AddCustomSportActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddCustomSportActivity$2;-><init>(Lcom/boohee/food/AddCustomSportActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    return-void
.end method

.method private addTolocal()V
    .locals 7

    .prologue
    const/16 v5, 0x3c

    .line 145
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_name:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mSportName:Ljava/lang/String;

    .line 146
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->tv_food_unit:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mUnitName:Ljava/lang/String;

    .line 147
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 148
    .local v1, "food_amount":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_calory:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, "food_calory":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mSportName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 150
    const-string v3, "\u8fd0\u52a8\u540d\u79f0\u4e0d\u80fd\u4e3a\u7a7a\uff01"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_name:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    .line 206
    :goto_0
    return-void

    .line 153
    :cond_0
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mSportName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_1

    .line 154
    const-string v3, "\u8d85\u51fa\u5b57\u6570\u9650\u5236"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 158
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 159
    const-string v3, "\u6570\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 160
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 164
    :cond_2
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    iput v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mAmount:F

    .line 165
    iget v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mAmount:F

    const v4, 0x4479c000    # 999.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    .line 166
    const-string v3, "\u6570\u91cf\u4e0d\u80fd\u8d85\u8fc7999"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 167
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "\u6570\u91cf\u4e0d\u80fd\u8d85\u8fc7999"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 175
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_num:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 170
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mUnitName:Ljava/lang/String;

    invoke-static {v3}, Lcom/boohee/utils/FoodUtils;->isKM(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 171
    iget v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mAmount:F

    const/high16 v4, 0x41200000    # 10.0f

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    div-int/lit8 v3, v3, 0xa

    int-to-float v3, v3

    iput v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mAmount:F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 179
    :cond_4
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mUnitName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 180
    const-string v3, "\u5355\u4f4d\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_5
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mSportName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v5, :cond_6

    .line 183
    const-string v3, "\u8d85\u51fa\u5b57\u6570\u9650\u5236"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 187
    :cond_6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 188
    const-string v3, "\u603b\u70ed\u91cf\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 189
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_calory:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 193
    :cond_7
    :try_start_2
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    long-to-float v3, v4

    iput v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mCalory:F

    .line 194
    iget v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mCalory:F

    const v4, 0x461c4000    # 10000.0f

    cmpl-float v3, v3, v4

    if-lez v3, :cond_8

    .line 195
    const-string v3, "\u603b\u70ed\u91cf\u4e0d\u80fd\u8d85\u8fc710000"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_calory:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 199
    :catch_1
    move-exception v0

    .line 200
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "\u603b\u70ed\u91cf\u4e0d\u80fd\u8d85\u8fc710000"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 201
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->et_food_calory:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->requestFocus()Z

    goto/16 :goto_0

    .line 205
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->mSportName:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/food/AddCustomSportActivity;->mUnitName:Ljava/lang/String;

    iget v5, p0, Lcom/boohee/food/AddCustomSportActivity;->mAmount:F

    iget v6, p0, Lcom/boohee/food/AddCustomSportActivity;->mCalory:F

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/boohee/food/AddCustomSportActivity;->createCustomSport(Ljava/lang/String;Ljava/lang/String;FF)V

    goto/16 :goto_0
.end method

.method private createActivity(Lcom/boohee/model/CustomSport;)V
    .locals 4
    .param p1, "customSport"    # Lcom/boohee/model/CustomSport;

    .prologue
    .line 238
    invoke-virtual {p0}, Lcom/boohee/food/AddCustomSportActivity;->showLoading()V

    .line 239
    invoke-direct {p0, p1}, Lcom/boohee/food/AddCustomSportActivity;->paramsWithCustomSport(Lcom/boohee/model/CustomSport;)Lcom/boohee/model/RecordSport;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddCustomSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/food/AddCustomSportActivity$4;

    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/AddCustomSportActivity$4;-><init>(Lcom/boohee/food/AddCustomSportActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/RecordApi;->createCustomActivity(Lcom/boohee/model/RecordSport;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 258
    return-void
.end method

.method private createCustomSport(Ljava/lang/String;Ljava/lang/String;FF)V
    .locals 4
    .param p1, "foodName"    # Ljava/lang/String;
    .param p2, "unitName"    # Ljava/lang/String;
    .param p3, "amount"    # F
    .param p4, "calory"    # F

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/boohee/food/AddCustomSportActivity;->showLoading()V

    .line 214
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/boohee/food/AddCustomSportActivity;->params4CustomSport(Ljava/lang/String;Ljava/lang/String;FF)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/AddCustomSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/food/AddCustomSportActivity$3;

    iget-object v3, p0, Lcom/boohee/food/AddCustomSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/food/AddCustomSportActivity$3;-><init>(Lcom/boohee/food/AddCustomSportActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/FoodApi;->createCustomActivities(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 232
    return-void
.end method

.method private handleIntent()V
    .locals 1

    .prologue
    .line 80
    const-string v0, "key_date"

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCustomSportActivity;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/AddCustomSportActivity;->record_on:Ljava/lang/String;

    .line 81
    return-void
.end method

.method private params4CustomSport(Ljava/lang/String;Ljava/lang/String;FF)Lcom/boohee/one/http/JsonParams;
    .locals 3
    .param p1, "foodName"    # Ljava/lang/String;
    .param p2, "unitName"    # Ljava/lang/String;
    .param p3, "amount"    # F
    .param p4, "calory"    # F

    .prologue
    .line 282
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 283
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "token"

    iget-object v2, p0, Lcom/boohee/food/AddCustomSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v2}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    const-string v1, "activity_name"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "unit_name"

    invoke-virtual {v0, v1, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const-string v1, "amount"

    invoke-virtual {v0, v1, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 287
    const-string v1, "calory"

    invoke-virtual {v0, v1, p4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 288
    return-object v0
.end method

.method private paramsWithCustomSport(Lcom/boohee/model/CustomSport;)Lcom/boohee/model/RecordSport;
    .locals 2
    .param p1, "customSport"    # Lcom/boohee/model/CustomSport;

    .prologue
    .line 267
    new-instance v0, Lcom/boohee/model/RecordSport;

    invoke-direct {v0}, Lcom/boohee/model/RecordSport;-><init>()V

    .line 268
    .local v0, "recordSport":Lcom/boohee/model/RecordSport;
    iget-object v1, p0, Lcom/boohee/food/AddCustomSportActivity;->record_on:Ljava/lang/String;

    iput-object v1, v0, Lcom/boohee/model/RecordSport;->record_on:Ljava/lang/String;

    .line 269
    iget-object v1, p1, Lcom/boohee/model/CustomSport;->amount:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/boohee/model/RecordSport;->duration:F

    .line 270
    iget-object v1, p1, Lcom/boohee/model/CustomSport;->activity_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/boohee/model/RecordSport;->activity_name:Ljava/lang/String;

    .line 271
    iget-object v1, p1, Lcom/boohee/model/CustomSport;->calory:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/boohee/model/RecordSport;->calory:F

    .line 272
    iget-object v1, p1, Lcom/boohee/model/CustomSport;->unit_name:Ljava/lang/String;

    iput-object v1, v0, Lcom/boohee/model/RecordSport;->unit_name:Ljava/lang/String;

    .line 273
    return-object v0
.end method

.method public static start(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "record_on"    # Ljava/lang/String;

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/AddCustomSportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "key_date"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const v0, 0x7f030023

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCustomSportActivity;->setContentView(I)V

    .line 73
    const v0, 0x7f0701af

    invoke-virtual {p0, v0}, Lcom/boohee/food/AddCustomSportActivity;->setTitle(I)V

    .line 74
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 75
    invoke-direct {p0}, Lcom/boohee/food/AddCustomSportActivity;->handleIntent()V

    .line 76
    invoke-direct {p0}, Lcom/boohee/food/AddCustomSportActivity;->addListener()V

    .line 77
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    .line 85
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 86
    const/4 v1, 0x0

    const v2, 0x7f070082

    invoke-interface {p1, v1, v3, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 87
    .local v0, "add":Landroid/view/MenuItem;
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 88
    return v3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 93
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 99
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 95
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/food/AddCustomSportActivity;->addTolocal()V

    .line 96
    const/4 v0, 0x1

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
