.class public Lcom/boohee/food/UploadFoodActivity;
.super Lcom/boohee/main/GestureActivity;
.source "UploadFoodActivity.java"


# static fields
.field private static final FOOD_CODE:Ljava/lang/String; = "FOOD_CODE"

.field private static final REQUEST_BACK_IMAGE:I = 0x2

.field private static final REQUEST_FRONT_IMAGE:I = 0x1


# instance fields
.field private backImgPath:Ljava/lang/String;

.field private brand:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field etBrand:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0246
    .end annotation
.end field

.field etFoodName:Landroid/widget/EditText;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00c5
    .end annotation
.end field

.field foodBackImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0253
    .end annotation
.end field

.field foodFrontImg:Landroid/widget/ImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e024e
    .end annotation
.end field

.field private frontImgPath:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field rlFoodBack:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0252
    .end annotation
.end field

.field rlFoodFront:Landroid/widget/RelativeLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e024d
    .end annotation
.end field

.field tvCode:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e024a
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/food/UploadFoodActivity;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/food/UploadFoodActivity;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/boohee/food/UploadFoodActivity;->uploadToServer(Ljava/util/List;)V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 282
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/UploadFoodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 283
    return-void
.end method

.method public static comeOnBabyWithCode(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/UploadFoodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "FOOD_CODE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 289
    return-void
.end method

.method private handlerIntent()V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/boohee/food/UploadFoodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "FOOD_CODE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "code":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    invoke-static {v1}, Lcom/boohee/utils/TextUtil;->isEmpty([Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/boohee/food/UploadFoodActivity;->tvCode:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    :cond_0
    return-void
.end method

.method private showTakePhotoDialog(I)V
    .locals 4
    .param p1, "requestCode"    # I

    .prologue
    const/4 v3, 0x1

    .line 125
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/food/UploadFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lme/nereo/multi_image_selector/MultiImageSelectorActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 127
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "show_camera"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 129
    const-string v1, "max_select_count"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 131
    const-string v1, "select_count_mode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 132
    invoke-virtual {p0, v0, p1}, Lcom/boohee/food/UploadFoodActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void
.end method

.method private uploadFood()V
    .locals 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->tvCode:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->code:Ljava/lang/String;

    .line 174
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->etBrand:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->brand:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->etFoodName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->name:Ljava/lang/String;

    .line 176
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->code:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const v0, 0x7f0705ff

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 213
    :goto_0
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    const v0, 0x7f0705fb

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 184
    :cond_1
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->frontImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    const v0, 0x7f0705fa

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->backImgPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 189
    const v0, 0x7f0705eb

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0

    .line 192
    :cond_3
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/boohee/food/UploadFoodActivity;->frontImgPath:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/boohee/food/UploadFoodActivity;->backImgPath:Ljava/lang/String;

    aput-object v2, v0, v1

    new-instance v1, Lcom/boohee/food/UploadFoodActivity$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/UploadFoodActivity$1;-><init>(Lcom/boohee/food/UploadFoodActivity;)V

    invoke-static {v0, v1}, Lboohee/lib/uploader/UploaderManager;->upload([Ljava/lang/String;Lboohee/lib/uploader/OnUploadListener;)V

    goto :goto_0
.end method

.method private uploadToServer(Ljava/util/List;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x2

    if-ge v13, v14, :cond_1

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 218
    :cond_1
    :try_start_0
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 219
    .local v11, "photos":Lorg/json/JSONArray;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_5

    .line 220
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lboohee/lib/uploader/model/Picture;

    iget-object v8, v13, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    .line 221
    .local v8, "obj":Lorg/json/JSONObject;
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lboohee/lib/uploader/model/Picture;

    iget-object v9, v13, Lboohee/lib/uploader/model/Picture;->path:Ljava/lang/String;

    .line 222
    .local v9, "path":Ljava/lang/String;
    const-string v13, "hash"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 223
    .local v3, "hash":Ljava/lang/String;
    const-string v13, "key"

    invoke-virtual {v8, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 224
    .local v7, "key":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lboohee/lib/uploader/model/Picture;

    iget v12, v13, Lboohee/lib/uploader/model/Picture;->width:I

    .line 225
    .local v12, "width":I
    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lboohee/lib/uploader/model/Picture;

    iget v4, v13, Lboohee/lib/uploader/model/Picture;->width:I

    .line 227
    .local v4, "height":I
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 228
    .local v10, "photo":Lorg/json/JSONObject;
    const-string v14, "_type"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string v13, "Photo::Boohee"

    :goto_2
    invoke-virtual {v10, v14, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boohee/food/UploadFoodActivity;->frontImgPath:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 230
    const-string v13, "photo_type"

    const-string v14, "front"

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    :cond_2
    :goto_3
    const-string v13, "qiniu_key"

    invoke-virtual {v10, v13, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v13, "qiniu_hash"

    invoke-virtual {v10, v13, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    const-string v13, "origin_width"

    invoke-virtual {v10, v13, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 237
    const-string v13, "origin_height"

    invoke-virtual {v10, v13, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    invoke-virtual {v11, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 219
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 228
    :cond_3
    const-string v13, "Photo::Qiniu"

    goto :goto_2

    .line 231
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boohee/food/UploadFoodActivity;->backImgPath:Ljava/lang/String;

    invoke-virtual {v13, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 232
    const-string v13, "photo_type"

    const-string v14, "back"

    invoke-virtual {v10, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 262
    .end local v3    # "hash":Ljava/lang/String;
    .end local v4    # "height":I
    .end local v5    # "i":I
    .end local v7    # "key":Ljava/lang/String;
    .end local v8    # "obj":Lorg/json/JSONObject;
    .end local v9    # "path":Ljava/lang/String;
    .end local v10    # "photo":Lorg/json/JSONObject;
    .end local v11    # "photos":Lorg/json/JSONArray;
    .end local v12    # "width":I
    :catch_0
    move-exception v1

    .line 263
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0

    .line 240
    .end local v1    # "e":Lorg/json/JSONException;
    .restart local v5    # "i":I
    .restart local v11    # "photos":Lorg/json/JSONArray;
    :cond_5
    :try_start_1
    new-instance v2, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v2}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 241
    .local v2, "food_draft":Lcom/boohee/one/http/JsonParams;
    const-string v13, "food_name"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/UploadFoodActivity;->name:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v13, "barcode"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/UploadFoodActivity;->code:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v13, "brand"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/boohee/food/UploadFoodActivity;->brand:Ljava/lang/String;

    invoke-virtual {v2, v13, v14}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-string v13, "photos"

    invoke-virtual {v2, v13, v11}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lorg/json/JSONArray;)V

    .line 245
    new-instance v6, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v6}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 246
    .local v6, "json_param":Lcom/boohee/one/http/JsonParams;
    const-string v13, "food_draft"

    invoke-virtual {v6, v13, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;)V

    .line 247
    invoke-virtual/range {p0 .. p0}, Lcom/boohee/food/UploadFoodActivity;->showLoading()V

    .line 248
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/boohee/food/UploadFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v14, Lcom/boohee/food/UploadFoodActivity$2;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/boohee/food/UploadFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v15}, Lcom/boohee/food/UploadFoodActivity$2;-><init>(Lcom/boohee/food/UploadFoodActivity;Landroid/content/Context;)V

    invoke-static {v6, v13, v14}, Lcom/boohee/api/FoodApi;->uploadFood(Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const v5, 0x7f0d012e

    const/4 v6, 0x0

    .line 143
    if-nez p3, :cond_0

    .line 170
    :goto_0
    return-void

    .line 144
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 169
    :cond_1
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcom/boohee/main/GestureActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0

    .line 146
    :sswitch_0
    const-string v2, "CODE_DATA"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "contents":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 148
    iget-object v2, p0, Lcom/boohee/food/UploadFoodActivity;->tvCode:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 153
    .end local v0    # "contents":Ljava/lang/String;
    :sswitch_1
    const-string v2, "select_result"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 154
    .local v1, "path":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 155
    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 156
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/food/UploadFoodActivity;->frontImgPath:Ljava/lang/String;

    .line 157
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/boohee/food/UploadFoodActivity;->frontImgPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/food/UploadFoodActivity;->foodFrontImg:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 159
    iget-object v2, p0, Lcom/boohee/food/UploadFoodActivity;->rlFoodFront:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 161
    :cond_2
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/boohee/food/UploadFoodActivity;->backImgPath:Ljava/lang/String;

    .line 162
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/boohee/food/UploadFoodActivity;->backImgPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/food/UploadFoodActivity;->foodBackImg:Landroid/widget/ImageView;

    invoke-static {v5}, Lcom/boohee/utility/ImageLoaderOptions;->color(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 164
    iget-object v2, p0, Lcom/boohee/food/UploadFoodActivity;->rlFoodBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_1
        0xaf -> :sswitch_0
    .end sparse-switch
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e0248,
            0x7f0e024b,
            0x7f0e0250,
            0x7f0e024f,
            0x7f0e0254,
            0x7f0e0245,
            0x7f0e0247
        }
    .end annotation

    .prologue
    const/16 v1, 0x8

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 122
    :goto_0
    :pswitch_0
    return-void

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const/16 v1, 0xaf

    invoke-static {v0, v1}, Lcom/boohee/one/ui/ScannerActivity;->startScannerForResult(Landroid/content/Context;I)V

    goto :goto_0

    .line 102
    :pswitch_2
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/boohee/food/UploadFoodActivity;->showTakePhotoDialog(I)V

    goto :goto_0

    .line 105
    :pswitch_3
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/boohee/food/UploadFoodActivity;->showTakePhotoDialog(I)V

    goto :goto_0

    .line 108
    :pswitch_4
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->frontImgPath:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->rlFoodFront:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 112
    :pswitch_5
    const-string v0, ""

    iput-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->backImgPath:Ljava/lang/String;

    .line 113
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->rlFoodBack:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 116
    :pswitch_6
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->etBrand:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 119
    :pswitch_7
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity;->etFoodName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    goto :goto_0

    .line 97
    :pswitch_data_0
    .packed-switch 0x7f0e0245
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 81
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    const v0, 0x7f030089

    invoke-virtual {p0, v0}, Lcom/boohee/food/UploadFoodActivity;->setContentView(I)V

    .line 83
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 84
    invoke-direct {p0}, Lcom/boohee/food/UploadFoodActivity;->handlerIntent()V

    .line 85
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/boohee/food/UploadFoodActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0f001b

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 138
    const/4 v0, 0x1

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 269
    invoke-static {}, Lcom/boohee/utils/WheelUtils;->isFastDoubleClick()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    :goto_0
    return v0

    .line 272
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 277
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0

    .line 274
    :pswitch_0
    invoke-direct {p0}, Lcom/boohee/food/UploadFoodActivity;->uploadFood()V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x7f0e07e1
        :pswitch_0
    .end packed-switch
.end method
