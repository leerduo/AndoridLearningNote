.class public Lcom/boohee/one/ui/WalkChallengeActivity;
.super Lcom/boohee/one/ui/BaseChallengeActivity;
.source "WalkChallengeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;,
        Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;
    }
.end annotation


# static fields
.field public static MI_REQ_CODE:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x1

    sput v0, Lcom/boohee/one/ui/WalkChallengeActivity;->MI_REQ_CODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;-><init>()V

    .line 144
    return-void
.end method

.method private UploadWalkDataIfNeeded()V
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    if-nez v1, :cond_1

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v1, v1, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    invoke-static {v1}, Lcom/boohee/utility/SportDataBindHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "templete":Ljava/lang/String;
    const-string v1, "KEY_MI_BAND"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    invoke-direct {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->bindMiBand()V

    goto :goto_0

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->isDetached()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    new-instance v2, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;Lcom/boohee/one/ui/WalkChallengeActivity$1;)V

    invoke-virtual {v1, v2}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->setBottomClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object v1, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->initLoad()V

    goto :goto_0
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/WalkChallengeActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/ui/WalkChallengeActivity;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/WalkChallengeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->bindMiBand()V

    return-void
.end method

.method static synthetic access$500(Lcom/boohee/one/ui/WalkChallengeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->loadLeDongLiData()V

    return-void
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/WalkChallengeActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->isOneDataSource()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/WalkChallengeActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->showDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/boohee/one/ui/WalkChallengeActivity;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WalkChallengeActivity;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/WalkChallengeActivity;->uploadSportStep(ILjava/lang/String;)V

    return-void
.end method

.method private bindMiBand()V
    .locals 2

    .prologue
    .line 213
    invoke-static {}, Lcom/boohee/utils/MiBandHelper;->shouldAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    sget v1, Lcom/boohee/one/ui/WalkChallengeActivity;->MI_REQ_CODE:I

    invoke-static {p0, v0, v1}, Lcom/boohee/utils/MiBandHelper;->startAuthenticate(Landroid/app/Activity;Landroid/os/Bundle;I)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->loadXMSportData()V

    goto :goto_0
.end method

.method private handleMiAuth(ILandroid/content/Intent;)V
    .locals 5
    .param p1, "resultCode"    # I
    .param p2, "data"    # Landroid/content/Intent;

    .prologue
    .line 233
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 234
    .local v1, "bundle":Landroid/os/Bundle;
    sget v3, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_SUCCESS:I

    if-ne v3, p1, :cond_1

    .line 235
    const-string v3, "access_token"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 236
    .local v0, "accessToken":Ljava/lang/String;
    iget-object v3, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v3, v3, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    const-string v4, "KEY_MI_BAND"

    invoke-static {v3, v4}, Lcom/boohee/utility/SportDataBindHelper;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {v0}, Lcom/boohee/utils/MiBandHelper;->setXMToken(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->setBottomTextGone()V

    .line 240
    invoke-direct {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->loadXMSportData()V

    .line 249
    .end local v0    # "accessToken":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 241
    :cond_1
    sget v3, Lcom/xiaomi/account/openauth/AuthorizeActivity;->RESULT_FAIL:I

    if-ne v3, p1, :cond_0

    .line 242
    const-string v3, "error_description"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 243
    .local v2, "errorDescription":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 244
    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 246
    :cond_2
    const-string v3, "\u6388\u6743\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5~~"

    invoke-static {v3}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private isOneDataSource()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "count":I
    iget-object v4, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v4, v4, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, "key":Ljava/lang/String;
    if-le v0, v5, :cond_0

    .line 176
    .end local v3    # "key":Ljava/lang/String;
    :goto_1
    return v6

    .line 174
    .restart local v3    # "key":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v4, v4, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    move v1, v0

    .line 175
    :goto_2
    goto :goto_0

    :cond_1
    move v1, v0

    .line 174
    .end local v0    # "count":I
    .local v1, "count":I
    goto :goto_2

    .line 176
    .end local v1    # "count":I
    .end local v3    # "key":Ljava/lang/String;
    .restart local v0    # "count":I
    :cond_2
    if-gt v0, v5, :cond_3

    move v4, v5

    :goto_3
    move v6, v4

    goto :goto_1

    :cond_3
    move v4, v6

    goto :goto_3
.end method

.method private loadLeDongLiData()V
    .locals 1

    .prologue
    .line 275
    new-instance v0, Lcom/boohee/one/ui/WalkChallengeActivity$4;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/WalkChallengeActivity$4;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    invoke-static {p0, v0}, Lcom/boohee/utils/LeDongLiHelper;->LoadLeDongLiSteps(Landroid/app/Activity;Lcom/boohee/utils/LeDongLiHelper$CallBack;)V

    .line 294
    return-void
.end method

.method private loadXMSportData()V
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->showLoading()V

    .line 254
    new-instance v0, Lcom/boohee/one/ui/WalkChallengeActivity$3;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/WalkChallengeActivity$3;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;)V

    invoke-static {p0, v0}, Lcom/boohee/utils/MiBandHelper;->loadMIBndData(Landroid/content/Context;Lcom/boohee/utils/MiBandHelper$MiBandCallBack;)V

    .line 270
    return-void
.end method

.method private showDialog()V
    .locals 2

    .prologue
    .line 180
    iget-object v1, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/BaseActivity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 201
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    new-instance v0, Lcom/boohee/widgets/SelectSportDataSrcDialog;

    invoke-direct {v0, p0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;-><init>(Landroid/content/Context;)V

    .line 182
    .local v0, "selectDialog":Lcom/boohee/widgets/SelectSportDataSrcDialog;
    invoke-direct {p0, v0}, Lcom/boohee/one/ui/WalkChallengeActivity;->updateDataSourceItem(Lcom/boohee/widgets/SelectSportDataSrcDialog;)V

    .line 183
    new-instance v1, Lcom/boohee/one/ui/WalkChallengeActivity$1;

    invoke-direct {v1, p0, v0}, Lcom/boohee/one/ui/WalkChallengeActivity$1;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;Lcom/boohee/widgets/SelectSportDataSrcDialog;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->setBindMiBandListener(Landroid/view/View$OnClickListener;)V

    .line 193
    new-instance v1, Lcom/boohee/one/ui/WalkChallengeActivity$2;

    invoke-direct {v1, p0, v0}, Lcom/boohee/one/ui/WalkChallengeActivity$2;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;Lcom/boohee/widgets/SelectSportDataSrcDialog;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->setBindLeDongLiListener(Landroid/view/View$OnClickListener;)V

    .line 200
    invoke-virtual {v0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->show()V

    goto :goto_0
.end method

.method private updateDataSourceItem(Lcom/boohee/widgets/SelectSportDataSrcDialog;)V
    .locals 2
    .param p1, "selectDialog"    # Lcom/boohee/widgets/SelectSportDataSrcDialog;

    .prologue
    .line 205
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    const-string v1, "ledongli"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->setLedongLiVisibility(Z)V

    .line 209
    iget-object v0, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v0, v0, Lcom/boohee/model/chanllenge/BaseChallenge;->data_source:Ljava/util/HashMap;

    const-string v1, "xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/boohee/widgets/SelectSportDataSrcDialog;->setMiBandVisibility(Z)V

    goto :goto_0
.end method

.method private uploadSportStep(ILjava/lang/String;)V
    .locals 4
    .param p1, "steps"    # I
    .param p2, "dataSource"    # Ljava/lang/String;

    .prologue
    .line 302
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-nez v2, :cond_0

    .line 324
    :goto_0
    return-void

    .line 303
    :cond_0
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 304
    .local v1, "stepsParams":Lcom/boohee/one/http/JsonParams;
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 305
    .local v0, "rootParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "steps"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 306
    const-string v2, "walking"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 307
    const-string v2, "data_source"

    invoke-virtual {v0, v2, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    new-instance v3, Lcom/boohee/one/ui/WalkChallengeActivity$5;

    invoke-direct {v3, p0, p0}, Lcom/boohee/one/ui/WalkChallengeActivity$5;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;Landroid/content/Context;)V

    invoke-static {v2, v0, p0, v3}, Lcom/boohee/api/ChallengeApi;->uploadWalkingSteps(ILcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method


# virtual methods
.method protected challengeUpdateComplete(Lcom/boohee/model/chanllenge/BaseChallenge;)V
    .locals 0
    .param p1, "challenge"    # Lcom/boohee/model/chanllenge/BaseChallenge;

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseChallengeActivity;->challengeUpdateComplete(Lcom/boohee/model/chanllenge/BaseChallenge;)V

    .line 56
    invoke-direct {p0}, Lcom/boohee/one/ui/WalkChallengeActivity;->UploadWalkDataIfNeeded()V

    .line 57
    return-void
.end method

.method protected getFragments()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/ui/fragment/BaseChallegeFragment;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 79
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 80
    .local v0, "fragments":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/ui/fragment/BaseChallegeFragment;>;"
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    if-gez v2, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-object v0

    .line 81
    :cond_1
    const-string v2, "\u6392\u884c"

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->newInstance(Ljava/lang/String;)Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    .line 82
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    iget-object v3, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    invoke-virtual {v2, v3}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->setChallenge(Lcom/boohee/model/chanllenge/BaseChallenge;)V

    .line 83
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-object v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->template:Ljava/lang/String;

    invoke-static {v2}, Lcom/boohee/utility/SportDataBindHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 84
    .local v1, "template":Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget-boolean v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->isJoined:Z

    if-eqz v2, :cond_3

    .line 86
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    new-instance v3, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/WalkChallengeActivity$BindDataClickListener;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;Lcom/boohee/one/ui/WalkChallengeActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->setBottomClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->challenge:Lcom/boohee/model/chanllenge/BaseChallenge;

    iget v2, v2, Lcom/boohee/model/chanllenge/BaseChallenge;->id:I

    invoke-static {v2}, Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;->newInstance(I)Lcom/boohee/one/ui/fragment/ChallengeDiscussFragment;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 92
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->sortFragment:Lcom/boohee/one/ui/fragment/WalkingSortFragment;

    new-instance v3, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/WalkChallengeActivity$BottomBtnClick;-><init>(Lcom/boohee/one/ui/WalkChallengeActivity;Lcom/boohee/one/ui/WalkChallengeActivity$1;)V

    invoke-virtual {v2, v3}, Lcom/boohee/one/ui/fragment/WalkingSortFragment;->setBottomClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 224
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/BaseChallengeActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 225
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    sget v0, Lcom/boohee/one/ui/WalkChallengeActivity;->MI_REQ_CODE:I

    if-ne p1, v0, :cond_0

    .line 228
    invoke-direct {p0, p2, p3}, Lcom/boohee/one/ui/WalkChallengeActivity;->handleMiAuth(ILandroid/content/Intent;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 49
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseChallengeActivity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    iput-object p0, p0, Lcom/boohee/one/ui/WalkChallengeActivity;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 328
    invoke-super {p0}, Lcom/boohee/one/ui/BaseChallengeActivity;->onDestroy()V

    .line 329
    invoke-static {p0}, Lcom/boohee/utils/LeDongLiHelper;->destroy(Landroid/app/Activity;)V

    .line 330
    return-void
.end method
