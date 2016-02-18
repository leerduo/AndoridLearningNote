.class public Lcom/boohee/one/onekey/UserInfoCheckActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "UserInfoCheckActivity.java"


# instance fields
.field age:I

.field birthday:Ljava/lang/String;

.field etBirthday:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e0
    .end annotation
.end field

.field etHeight:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e1
    .end annotation
.end field

.field etRemark:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01d3
    .end annotation
.end field

.field etTarget:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e3
    .end annotation
.end field

.field etWeight:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e2
    .end annotation
.end field

.field height:F

.field private mLevel:Ljava/lang/String;

.field private mSex:Ljava/lang/String;

.field rbEasy:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e5
    .end annotation
.end field

.field rbFemale:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01df
    .end annotation
.end field

.field rbHard:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e7
    .end annotation
.end field

.field rbMale:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01de
    .end annotation
.end field

.field rbNormal:Landroid/widget/RadioButton;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e6
    .end annotation
.end field

.field remark:Ljava/lang/String;

.field rgLevel:Landroid/widget/RadioGroup;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e4
    .end annotation
.end field

.field rgSex:Landroid/widget/RadioGroup;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01dd
    .end annotation
.end field

.field suggestTargetWeight:F

.field target_weight:F

.field tvErrorMsg:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01e8
    .end annotation
.end field

.field weight:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 82
    iput v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->height:F

    .line 83
    iput v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->weight:F

    .line 84
    iput v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->target_weight:F

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->age:I

    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/onekey/UserInfoCheckActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserInfoCheckActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->mSex:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/boohee/one/onekey/UserInfoCheckActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserInfoCheckActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->mLevel:Ljava/lang/String;

    return-object p1
.end method

.method public static calBmi(FF)F
    .locals 6
    .param p0, "height"    # F
    .param p1, "weight"    # F

    .prologue
    .line 208
    const/high16 v2, 0x42c80000    # 100.0f

    div-float v0, p0, v2

    .line 209
    .local v0, "h":F
    mul-float v2, v0, v0

    div-float v1, p1, v2

    .line 210
    .local v1, "ret":F
    const/high16 v2, 0x41200000    # 10.0f

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-double v2, v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    div-double/2addr v2, v4

    double-to-float v2, v2

    return v2
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 219
    if-nez p0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 222
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/onekey/UserInfoCheckActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 223
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->rgSex:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/boohee/one/onekey/UserInfoCheckActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/UserInfoCheckActivity$1;-><init>(Lcom/boohee/one/onekey/UserInfoCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 109
    iget-object v0, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->rgLevel:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/onekey/UserInfoCheckActivity$2;-><init>(Lcom/boohee/one/onekey/UserInfoCheckActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 121
    return-void
.end method

.method private submitUserInfo()Z
    .locals 12

    .prologue
    const/high16 v10, 0x42c80000    # 100.0f

    const/4 v4, 0x0

    .line 125
    :try_start_0
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->etHeight:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->height:F

    .line 126
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->etWeight:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->weight:F

    .line 127
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->etTarget:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->target_weight:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->etBirthday:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->birthday:Ljava/lang/String;

    .line 132
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->etRemark:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->remark:Ljava/lang/String;

    .line 134
    :try_start_1
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->birthday:Ljava/lang/String;

    const/16 v6, 0x2e

    const/16 v7, 0x2f

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 135
    .local v3, "tmpBirthDay":Ljava/lang/String;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v3}, Ljava/util/Date;-><init>(Ljava/lang/String;)V

    .line 136
    .local v0, "date":Ljava/util/Date;
    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->getAge(Ljava/util/Date;)I

    move-result v5

    iput v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->age:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    iget v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->age:I

    const/16 v6, 0x12

    if-ge v5, v6, :cond_0

    .line 144
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->tvErrorMsg:Landroid/widget/TextView;

    const-string v6, "\u672a\u6ee118\u5468\u5c81\uff01"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    .end local v0    # "date":Ljava/util/Date;
    .end local v3    # "tmpBirthDay":Ljava/lang/String;
    :goto_1
    return v4

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    .line 137
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_1
    move-exception v1

    .line 138
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 139
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->tvErrorMsg:Landroid/widget/TextView;

    const-string v6, "\u65e5\u671f\u683c\u5f0f\u8f93\u5165\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165!"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 148
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v3    # "tmpBirthDay":Ljava/lang/String;
    :cond_0
    iget v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->height:F

    const/high16 v6, 0x43020000    # 130.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_1

    iget v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->height:F

    const/high16 v6, 0x437a0000    # 250.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_2

    .line 149
    :cond_1
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->tvErrorMsg:Landroid/widget/TextView;

    const-string v6, "\u8eab\u9ad8\u8f93\u5165\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165!"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    :cond_2
    iget v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->weight:F

    const/high16 v6, 0x42200000    # 40.0f

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_3

    iget v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->weight:F

    const/high16 v6, 0x43480000    # 200.0f

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 154
    :cond_3
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->tvErrorMsg:Landroid/widget/TextView;

    const-string v6, "\u4f53\u91cd\u8f93\u5165\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 158
    :cond_4
    iget v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->target_weight:F

    const/4 v6, 0x0

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_5

    .line 159
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->tvErrorMsg:Landroid/widget/TextView;

    const-string v6, "\u76ee\u6807\u4f53\u91cd\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 163
    :cond_5
    iget v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->height:F

    iget v6, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->target_weight:F

    invoke-static {v5, v6}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->calBmi(FF)F

    move-result v2

    .line 165
    .local v2, "targetBmi":F
    float-to-double v6, v2

    const-wide v8, 0x4032800000000000L    # 18.5

    cmpg-double v5, v6, v8

    if-gez v5, :cond_6

    .line 166
    const/high16 v5, 0x41940000    # 18.5f

    iget v6, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->height:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    iget v6, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->height:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v10

    iput v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->suggestTargetWeight:F

    .line 167
    iget-object v5, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->tvErrorMsg:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\u76ee\u6807\u4f53\u91cd\u8fc7\u4f4e\uff0c\u63a8\u8350\u4f53\u91cd "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->suggestTargetWeight:F

    const/high16 v8, 0x41200000    # 10.0f

    mul-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-double v8, v7

    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    div-double/2addr v8, v10

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 171
    :cond_6
    invoke-virtual {p0}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->showLoading()V

    .line 172
    invoke-virtual {p0}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->sendInfo()V

    .line 173
    const/4 v4, 0x1

    goto/16 :goto_1
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01d7
        }
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 78
    :goto_0
    return-void

    .line 71
    :pswitch_0
    invoke-static {p0}, Lcom/boohee/one/onekey/UserHomeActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 72
    invoke-virtual {p0}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->finish()V

    goto :goto_0

    .line 66
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e01d7
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const v0, 0x7f030067

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->setContentView(I)V

    .line 93
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 95
    invoke-direct {p0}, Lcom/boohee/one/onekey/UserInfoCheckActivity;->initView()V

    .line 96
    return-void
.end method

.method public sendInfo()V
    .locals 4

    .prologue
    .line 177
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 178
    .local v1, "profile":Lcom/boohee/one/http/JsonParams;
    const-string v2, "birthday"

    iget-object v3, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->birthday:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    const-string v2, "height"

    iget v3, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->height:F

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 180
    const-string v2, "weight"

    iget v3, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->weight:F

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 181
    const-string v2, "target_weight"

    iget v3, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->target_weight:F

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 182
    const-string v2, "remark"

    iget-object v3, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->remark:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v2, "level"

    iget-object v3, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v2, "sex"

    iget-object v3, p0, Lcom/boohee/one/onekey/UserInfoCheckActivity;->mSex:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 186
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v2, "profile"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 188
    const-string v2, "/api/v1/profiles"

    new-instance v3, Lcom/boohee/one/onekey/UserInfoCheckActivity$3;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/onekey/UserInfoCheckActivity$3;-><init>(Lcom/boohee/one/onekey/UserInfoCheckActivity;Landroid/content/Context;)V

    invoke-static {v2, v0, v3, p0}, Lcom/boohee/one/http/client/BingoClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 205
    return-void
.end method
