.class public Lcom/boohee/one/ui/WebViewPicUploadActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "WebViewPicUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;,
        Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;,
        Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;
    }
.end annotation


# static fields
.field private static final KEY_WEIGHT_PARAMS:Ljava/lang/String; = "key_weight_params"

.field public static final MODE_WEIGHT:I = 0x0

.field public static final MODE_WHOLE:I = 0x1

.field private static final REQUEST_IMAGE:I = 0x0

.field public static final REQUEST_METHOD_POST:I = 0x1

.field public static final REQUEST_METHOD_PUT:I = 0x2


# instance fields
.field private bet_id:I

.field private isNeedUpload:Z

.field mCbSyncPost:Landroid/widget/CheckBox;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0271
    .end annotation
.end field

.field private mCurrentWeight:F

.field mEtCurrentWeight:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e026b
    .end annotation
.end field

.field mIvWeight:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e026d
    .end annotation
.end field

.field mIvWeightDelete:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e026e
    .end annotation
.end field

.field mIvWhole:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e026f
    .end annotation
.end field

.field mIvWholeDelete:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0270
    .end annotation
.end field

.field private mMode:I

.field private mPicUploadListener:Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;

.field private mRequestMethod:I

.field private mUploadList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWeightParams:Ljava/lang/String;

.field private mWeightPath:Ljava/lang/String;

.field private mWholePath:Ljava/lang/String;

.field private order_id:I

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 55
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 137
    iput v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mRequestMethod:I

    .line 138
    iput v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mMode:I

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mUploadList:Ljava/util/List;

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->isNeedUpload:Z

    .line 367
    return-void
.end method

.method static synthetic access$002(Lcom/boohee/one/ui/WebViewPicUploadActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/boohee/one/ui/WebViewPicUploadActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/WebViewPicUploadActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->type:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Lcom/boohee/one/ui/WebViewPicUploadActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->type:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcom/boohee/one/ui/WebViewPicUploadActivity;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mRequestMethod:I

    return p1
.end method

.method static synthetic access$400(Lcom/boohee/one/ui/WebViewPicUploadActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;

    .prologue
    .line 55
    iget v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F

    return v0
.end method

.method static synthetic access$402(Lcom/boohee/one/ui/WebViewPicUploadActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;
    .param p1, "x1"    # F

    .prologue
    .line 55
    iput p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F

    return p1
.end method

.method static synthetic access$600(Lcom/boohee/one/ui/WebViewPicUploadActivity;)Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/boohee/one/ui/WebViewPicUploadActivity;Lorg/json/JSONArray;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/WebViewPicUploadActivity;
    .param p1, "x1"    # Lorg/json/JSONArray;
    .param p2, "x2"    # Z

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->sendWeightRequest(Lorg/json/JSONArray;Z)V

    return-void
.end method

.method private getJsonParams(Lorg/json/JSONArray;ZIILjava/lang/String;)Lcom/boohee/one/http/JsonParams;
    .locals 4
    .param p1, "photosArray"    # Lorg/json/JSONArray;
    .param p2, "isSync"    # Z
    .param p3, "bet_id"    # I
    .param p4, "order_id"    # I
    .param p5, "type"    # Ljava/lang/String;

    .prologue
    .line 322
    new-instance v1, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v1}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 323
    .local v1, "root":Lcom/boohee/one/http/JsonParams;
    const-string v2, "token"

    iget-object v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v3}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 325
    .local v0, "bet_weight":Lcom/boohee/one/http/JsonParams;
    sget-object v2, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->base_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    invoke-virtual {v2}, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 326
    const-string v2, "base_weight"

    iget v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    .line 330
    :cond_0
    :goto_0
    const-string v2, "photos"

    if-nez p1, :cond_1

    new-instance p1, Lorg/json/JSONArray;

    .end local p1    # "photosArray":Lorg/json/JSONArray;
    invoke-direct {p1}, Lorg/json/JSONArray;-><init>()V

    :cond_1
    invoke-virtual {v0, v2, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 331
    const-string v2, "bet_weight"

    invoke-virtual {v1, v2, v0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 332
    const-string v2, "bet_id"

    invoke-virtual {v1, v2, p3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 333
    const-string v2, "order_id"

    invoke-virtual {v1, v2, p4}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;I)V

    .line 334
    const-string v2, "type"

    invoke-virtual {v1, v2, p5}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    const-string v3, "sync"

    if-eqz p2, :cond_3

    const-string v2, "yes"

    :goto_1
    invoke-virtual {v1, v3, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    return-object v1

    .line 327
    .restart local p1    # "photosArray":Lorg/json/JSONArray;
    :cond_2
    sget-object v2, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->end_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    invoke-virtual {v2}, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {p5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 328
    const-string v2, "end_weight"

    iget v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F

    invoke-virtual {v0, v2, v3}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;F)V

    goto :goto_0

    .line 335
    .end local p1    # "photosArray":Lorg/json/JSONArray;
    :cond_3
    const-string v2, "no"

    goto :goto_1
.end method

.method private init()V
    .locals 9

    .prologue
    .line 296
    iget-object v7, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightParams:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 308
    :goto_0
    return-void

    .line 297
    :cond_0
    iget-object v7, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightParams:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    const-string v8, "&"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, "keyValues":[Ljava/lang/String;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v4, "kvParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v5, :cond_2

    aget-object v6, v0, v1

    .line 300
    .local v6, "str":Ljava/lang/String;
    const-string v7, "="

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 301
    .local v3, "kv":[Ljava/lang/String;
    array-length v7, v3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 302
    const/4 v7, 0x0

    aget-object v7, v3, v7

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-interface {v4, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 305
    .end local v3    # "kv":[Ljava/lang/String;
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    new-instance v7, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;

    const/4 v8, 0x0

    invoke-direct {v7, p0, v8}, Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;-><init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;Lcom/boohee/one/ui/WebViewPicUploadActivity$1;)V

    iput-object v7, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;

    .line 306
    const-string v7, "bet_id"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->bet_id:I

    .line 307
    const-string v7, "order_id"

    invoke-interface {v4, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->order_id:I

    goto :goto_0
.end method

.method private postBetWeight()V
    .locals 3

    .prologue
    .line 228
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mUploadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 229
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mEtCurrentWeight:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "weightStr":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 232
    const-string v1, "\u4f53\u91cd\u8f93\u5165\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void

    .line 235
    :cond_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iput v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F

    .line 236
    iget v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F

    const/high16 v2, 0x41f00000    # 30.0f

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_1

    iget v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F

    const/high16 v2, 0x43480000    # 200.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 237
    :cond_1
    const-string v1, "\u4f53\u91cd\u8f93\u5165\u4e0d\u5728\u5408\u7406\u8303\u56f4\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165~~"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 240
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightPath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 241
    const-string v1, "\u8bf7\u9009\u62e9\u79f0\u91cd\u7167"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 244
    :cond_3
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mUploadList:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightPath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 247
    const-string v1, "\u8bf7\u9009\u62e9\u6b63\u9762\u5168\u8eab\u7167"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 250
    :cond_4
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mUploadList:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    iget-boolean v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->isNeedUpload:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mUploadList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 254
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mUploadList:Ljava/util/List;

    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mUploadList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mPicUploadListener:Lcom/boohee/one/ui/WebViewPicUploadActivity$PicUploadListener;

    invoke-static {v1, v2}, Lboohee/lib/uploader/UploaderManager;->upload([Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    goto :goto_0

    .line 256
    :cond_5
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCbSyncPost:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-direct {p0, v1, v2}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->sendWeightRequest(Lorg/json/JSONArray;Z)V

    goto :goto_0
.end method

.method private requestBetWeight()V
    .locals 5

    .prologue
    .line 169
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->bet_id:I

    iget v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->order_id:I

    new-instance v3, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;

    iget-object v4, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;-><init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, v2, v3}, Lcom/boohee/api/StatusApi;->getBetWeight(Landroid/content/Context;IILcom/boohee/one/http/JsonCallback;)V

    .line 222
    return-void
.end method

.method private sendWeightRequest(Lorg/json/JSONArray;Z)V
    .locals 9
    .param p1, "photosArray"    # Lorg/json/JSONArray;
    .param p2, "isSync"    # Z

    .prologue
    .line 314
    iget v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mRequestMethod:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 315
    iget-object v6, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v7, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->bet_id:I

    iget v8, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->order_id:I

    iget v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->bet_id:I

    iget v4, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->order_id:I

    iget-object v5, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->type:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->getJsonParams(Lorg/json/JSONArray;ZIILjava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;-><init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;Landroid/app/Activity;)V

    invoke-static {v6, v7, v8, v0, v1}, Lcom/boohee/api/StatusApi;->postBetWeight(Landroid/content/Context;IILcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V

    .line 319
    :cond_0
    :goto_0
    return-void

    .line 316
    :cond_1
    iget v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mRequestMethod:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 317
    iget-object v6, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget v7, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->bet_id:I

    iget v8, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->order_id:I

    iget v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->bet_id:I

    iget v4, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->order_id:I

    iget-object v5, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->type:Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->getJsonParams(Lorg/json/JSONArray;ZIILjava/lang/String;)Lcom/boohee/one/http/JsonParams;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity$UploadWeightCallBack;-><init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;Landroid/app/Activity;)V

    invoke-static {v6, v7, v8, v0, v1}, Lcom/boohee/api/StatusApi;->putBetWeight(Landroid/content/Context;IILcom/boohee/one/http/JsonParams;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method

.method private showTakePhotoDialog()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 263
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_camera"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 264
    const-string v1, "max_select_count"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v1, "select_count_mode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    invoke-virtual {p0, v0, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 267
    return-void
.end method

.method public static startMe(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "key_weight_params"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 152
    return-void
.end method


# virtual methods
.method public OnClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e026a,
            0x7f0e026c,
            0x7f0e026d,
            0x7f0e026e,
            0x7f0e026f,
            0x7f0e0270
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 133
    :goto_0
    :pswitch_0
    return-void

    .line 88
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/one/ui/DushouExampleActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :pswitch_2
    invoke-direct {p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->postBetWeight()V

    goto :goto_0

    .line 94
    :pswitch_3
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mMode:I

    .line 96
    invoke-direct {p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->showTakePhotoDialog()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightPath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/status/LargeImageActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 102
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u56fe\u7247\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/boohee/one/ui/WebViewPicUploadActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity$1;-><init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0

    .line 112
    :pswitch_5
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mMode:I

    .line 114
    invoke-direct {p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->showTakePhotoDialog()V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/boohee/status/LargeImageActivity;->start(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u786e\u5b9a\u8981\u5220\u9664\u56fe\u7247\u5417\uff1f"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u5220\u9664"

    new-instance v2, Lcom/boohee/one/ui/WebViewPicUploadActivity$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity$2;-><init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u53d6\u6d88"

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    .line 86
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e026a
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 278
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/one/ui/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 279
    if-nez p3, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 280
    :cond_1
    const-string v1, "select_result"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 281
    .local v0, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_0

    .line 282
    :cond_2
    iput-boolean v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->isNeedUpload:Z

    .line 283
    iget v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mMode:I

    if-nez v1, :cond_3

    .line 284
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightPath:Ljava/lang/String;

    .line 285
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightPath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWeight:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 286
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWeightDelete:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 287
    :cond_3
    iget v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mMode:I

    if-ne v1, v2, :cond_0

    .line 288
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;

    .line 289
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWhole:Landroid/widget/ImageView;

    invoke-static {v1, v2, v3}, Lcom/boohee/utils/ViewUtils;->initImageView(Landroid/content/Context;Landroid/net/Uri;Landroid/widget/ImageView;)V

    .line 290
    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWholeDelete:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 156
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 157
    const v0, 0x7f030090

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->setContentView(I)V

    .line 158
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 159
    invoke-virtual {p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "key_weight_params"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightParams:Ljava/lang/String;

    .line 160
    invoke-direct {p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->init()V

    .line 161
    invoke-direct {p0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->requestBetWeight()V

    .line 162
    return-void
.end method
