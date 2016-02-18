.class public Lcom/boohee/one/ui/WagerWeightPicUploadActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "WagerWeightPicUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;,
        Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;
    }
.end annotation


# static fields
.field private static final KEY_MAX_NUM:Ljava/lang/String; = "key_max_num"

.field private static final REQ_CODE:I = 0x1

.field private static mParams:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field ed_current_weight:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0267
    .end annotation
.end field

.field private isPicChanged:Z

.field isUpdateWeight:Z

.field isUploadBeginWeight:Z

.field ivAddPic:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0268
    .end annotation
.end field

.field mActivity:Landroid/app/Activity;

.field mAdapter:Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;

.field mCheckBox:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0269
    .end annotation
.end field

.field mCommitBtn:Landroid/widget/Button;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e026a
    .end annotation
.end field

.field mCurrentWeight:F

.field mDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mGridView:Landroid/widget/GridView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0230
    .end annotation
.end field

.field mPicUploadListener:Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;

.field mSelectPath:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field maxUploadPicNums:I

.field photos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/status/Photo;",
            ">;"
        }
    .end annotation
.end field

.field private removed_photo_ids:Lorg/json/JSONArray;

.field tv_title:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0266
    .end annotation
.end field

.field private wagerId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mDatas:Ljava/util/List;

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->maxUploadPicNums:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->wagerId:I

    .line 90
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->removed_photo_ids:Lorg/json/JSONArray;

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isPicChanged:Z

    .line 326
    return-void
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WagerWeightPicUploadActivity;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 50
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->handlePhotos(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Lorg/json/JSONArray;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WagerWeightPicUploadActivity;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Z

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->sendWeightRequest(Lorg/json/JSONArray;Z)V

    return-void
.end method

.method private getItemSize()I
    .locals 6

    .prologue
    .line 176
    const/4 v0, 0x4

    .line 177
    .local v0, "columNum":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v2, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 178
    .local v2, "gridViewWidth":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800fb

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 179
    .local v3, "space":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0800d3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 180
    .local v1, "gridViewPadding":I
    mul-int/lit8 v4, v3, 0x3

    sub-int v4, v2, v4

    mul-int/lit8 v5, v1, 0x2

    sub-int/2addr v4, v5

    div-int/2addr v4, v0

    return v4
.end method

.method private getJsonParams(Lorg/json/JSONArray;Z)Lcom/boohee/one/http/JsonParams;
    .locals 4
    .param p1, "photosArray"    # Lorg/json/JSONArray;
    .param p2, "isSync"    # Z

    .prologue
    .line 281
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 282
    .local v1, "wager_weight":Lcom/boohee/one/http/JsonParams;
    iget-boolean v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isUploadBeginWeight:Z

    if-eqz v2, :cond_1

    .line 284
    const-string v2, "base_weight"

    iget v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCurrentWeight:F

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 290
    :goto_0
    const-string v2, "photos"

    invoke-virtual {v1, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 291
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 292
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    const-string v2, "wager_weight"

    invoke-virtual {v0, v2, v1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 293
    const-string v2, "sync"

    invoke-virtual {v0, v2, p2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Z)V

    .line 294
    iget-boolean v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isUpdateWeight:Z

    if-eqz v2, :cond_0

    .line 296
    const-string v2, "removed_photo_ids"

    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->removed_photo_ids:Lorg/json/JSONArray;

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 298
    :cond_0
    return-object v0

    .line 287
    .end local v0    # "jsonParams":Lcom/boohee/one/http/JsonParams;
    :cond_1
    const-string v2, "end_weight"

    iget v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCurrentWeight:F

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    goto :goto_0
.end method

.method private handlePhotos(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 158
    if-nez p1, :cond_0

    .line 173
    :goto_0
    return-void

    .line 161
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 162
    const-string v1, "photos"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/status/Photo;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 163
    .local v0, "parseList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 164
    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 166
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mAdapter:Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->notifyDataSetChanged()V

    .line 167
    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 168
    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->ivAddPic:Landroid/widget/ImageView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 171
    :cond_2
    const-string v1, "weight"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCurrentWeight:F

    .line 172
    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->ed_current_weight:Landroid/widget/EditText;

    iget v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCurrentWeight:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 117
    iput-object p0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    .line 118
    const-string v0, "base_upload"

    sget-object v1, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mParams:Ljava/util/Map;

    const-string v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isUploadBeginWeight:Z

    .line 119
    const-string v0, "update"

    sget-object v1, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mParams:Ljava/util/Map;

    const-string v2, "action"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isUpdateWeight:Z

    .line 120
    sget-object v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mParams:Ljava/util/Map;

    const-string v1, "wager_id"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->wagerId:I

    .line 121
    iget-boolean v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isUpdateWeight:Z

    if-eqz v0, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->loadUpdatedData()V

    .line 124
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->tv_title:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isUploadBeginWeight:Z

    if-eqz v0, :cond_1

    const-string v0, "\u4e0a\u4f20\u521d\u59cb\u4f53\u91cd"

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    new-instance v0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;-><init>(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;)V

    iput-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;

    .line 126
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_max_num"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->maxUploadPicNums:I

    .line 127
    invoke-direct {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->initAdapter()V

    .line 128
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->ivAddPic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->getItemSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 129
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->ivAddPic:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-direct {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->getItemSize()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 130
    return-void

    .line 124
    :cond_1
    const-string v0, "\u4e0a\u4f20\u7ed3\u675f\u4f53\u91cd"

    goto :goto_0
.end method

.method private initAdapter()V
    .locals 6

    .prologue
    .line 133
    new-instance v0, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    iget v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->maxUploadPicNums:I

    invoke-direct {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->getItemSize()I

    move-result v4

    iget-object v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->removed_photo_ids:Lorg/json/JSONArray;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IILorg/json/JSONArray;)V

    iput-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mAdapter:Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;

    .line 134
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mAdapter:Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 135
    return-void
.end method

.method private loadUpdatedData()V
    .locals 4

    .prologue
    .line 141
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->showLoading()V

    .line 142
    iget v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->wagerId:I

    iget-object v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;

    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v2, p0, v3}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;-><init>(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2}, Lcom/boohee/api/ChallengeApi;->getWagerWeight(ILandroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 155
    return-void
.end method

.method private sendWeightRequest(Lorg/json/JSONArray;Z)V
    .locals 3
    .param p1, "photosArray"    # Lorg/json/JSONArray;
    .param p2, "isSync"    # Z

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->showLoading()V

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->getJsonParams(Lorg/json/JSONArray;Z)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    .line 277
    .local v0, "jsonParams":Lcom/boohee/one/http/JsonParams;
    iget v1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->wagerId:I

    new-instance v2, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;

    invoke-direct {v2, p0, p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$UploadWeightCallBack;-><init>(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Landroid/app/Activity;)V

    invoke-static {v1, v0, v2, p0}, Lcom/boohee/api/ChallengeApi;->putWagerWeight(ILcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 278
    return-void
.end method

.method public static startMe(Landroid/content/Context;ILjava/util/Map;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "maxUploadPicNums"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p2, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    const-string v1, "type"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_max_num"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 105
    sput-object p2, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mParams:Ljava/util/Map;

    goto :goto_0
.end method


# virtual methods
.method public addPic(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0268
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "tmpNum":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 223
    .local v2, "tmpPhotos":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/status/Photo;>;"
    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 224
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 225
    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/status/Photo;

    iget-object v3, v3, Lcom/boohee/model/status/Photo;->id:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gez v3, :cond_0

    .line 227
    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/boohee/model/status/Photo;

    iget-object v3, v3, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 224
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 232
    :cond_1
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 233
    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 236
    :cond_2
    iget v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->maxUploadPicNums:I

    iget-object v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int v1, v3, v4

    .line 237
    if-gtz v1, :cond_3

    .line 244
    :goto_1
    return-void

    .line 240
    :cond_3
    const/4 v3, 0x3

    if-le v1, v3, :cond_4

    .line 241
    const/4 v1, 0x3

    .line 243
    :cond_4
    iget-object v3, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    invoke-static {v3, v5, v1, v4, v5}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/app/Activity;ZILjava/util/ArrayList;I)V

    goto :goto_1
.end method

.method public getIvAddPic()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->ivAddPic:Landroid/widget/ImageView;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 252
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 253
    if-ne p2, v3, :cond_2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 254
    const-string v2, "select_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    .line 256
    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 257
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 258
    new-instance v1, Lcom/boohee/model/status/Photo;

    invoke-direct {v1}, Lcom/boohee/model/status/Photo;-><init>()V

    .line 259
    .local v1, "photo":Lcom/boohee/model/status/Photo;
    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mSelectPath:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, v1, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    .line 260
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/boohee/model/status/Photo;->id:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 263
    .end local v1    # "photo":Lcom/boohee/model/status/Photo;
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 264
    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->ivAddPic:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 266
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mAdapter:Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;

    invoke-virtual {v2}, Lcom/boohee/one/ui/adapter/WagerWeightPicUploadAdapter;->notifyDataSetChanged()V

    .line 269
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 110
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 111
    const v0, 0x7f03008f

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->setContentView(I)V

    .line 112
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 113
    invoke-direct {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->init()V

    .line 114
    return-void
.end method

.method public uploadImage(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e026a
        }
    .end annotation

    .prologue
    .line 186
    iget-object v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->ed_current_weight:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 189
    .local v3, "weightStr":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    const-string v4, "\u4f53\u91cd\u8f93\u5165\u4e0d\u5408\u6cd5\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165~~"

    invoke-static {v4}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 216
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iput v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCurrentWeight:F

    .line 194
    iget v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCurrentWeight:F

    const/high16 v5, 0x41f00000    # 30.0f

    cmpg-float v4, v4, v5

    if-ltz v4, :cond_1

    iget v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCurrentWeight:F

    const/high16 v5, 0x43480000    # 200.0f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_2

    .line 195
    :cond_1
    const-string v4, "\u4f53\u91cd\u8f93\u5165\u4e0d\u5408\u6cd5\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165~~"

    invoke-static {v4}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-virtual {p0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->showLoading()V

    .line 200
    iget-object v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    iget v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->maxUploadPicNums:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 201
    .local v1, "length":I
    new-array v2, v1, [Ljava/lang/String;

    .line 202
    .local v2, "pathArray":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_4

    .line 203
    iget-object v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/status/Photo;

    iget-object v4, v4, Lcom/boohee/model/status/Photo;->id:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gez v4, :cond_3

    .line 205
    iget-object v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->photos:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/boohee/model/status/Photo;

    iget-object v4, v4, Lcom/boohee/model/status/Photo;->middle_url:Ljava/lang/String;

    aput-object v4, v2, v0

    .line 206
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isPicChanged:Z

    .line 202
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 209
    :cond_4
    iget-boolean v4, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->isPicChanged:Z

    if-eqz v4, :cond_5

    .line 211
    const-string v4, "t"

    iget-object v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WagerWeightPicUploadActivity$PicUploadListener;

    invoke-static {v4, v2, v5}, Lboohee/lib/uploader/UploaderManager;->upload(Ljava/lang/String;[Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    goto :goto_0

    .line 214
    :cond_5
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v5}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->sendWeightRequest(Lorg/json/JSONArray;Z)V

    goto :goto_0
.end method
