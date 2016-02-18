.class Lcom/boohee/one/ui/WebViewPicUploadActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "WebViewPicUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WebViewPicUploadActivity;->requestBetWeight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const v8, 0x7f020298

    const/4 v4, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 172
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 173
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    const-string v3, "type"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->type:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$202(Lcom/boohee/one/ui/WebViewPicUploadActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 174
    const-string v2, "bet_weight"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-class v3, Lcom/boohee/model/BetWeight;

    invoke-static {v2, v3}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/BetWeight;

    .line 175
    .local v0, "betWeight":Lcom/boohee/model/BetWeight;
    const-string v1, ""

    .line 177
    .local v1, "title":Ljava/lang/String;
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    # getter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->type:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$200(Lcom/boohee/one/ui/WebViewPicUploadActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->base_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    invoke-virtual {v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 178
    if-eqz v0, :cond_0

    iget v2, v0, Lcom/boohee/model/BetWeight;->base_weight:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_5

    .line 179
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    const/4 v3, 0x1

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mRequestMethod:I
    invoke-static {v2, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$302(Lcom/boohee/one/ui/WebViewPicUploadActivity;I)I

    .line 180
    const-string v1, "\u4e0a\u4f20"

    .line 186
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u521d\u59cb\u4f53\u91cd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    :cond_1
    :goto_1
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/boohee/model/BetWeight;->photos_0:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 200
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v3, v0, Lcom/boohee/model/BetWeight;->photos_0:Ljava/lang/String;

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWeightPath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$002(Lcom/boohee/one/ui/WebViewPicUploadActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/boohee/model/BetWeight;->photos_0:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v4, v4, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWeight:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 202
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWeightDelete:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 204
    :cond_2
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/boohee/model/BetWeight;->photos_1:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 205
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v3, v0, Lcom/boohee/model/BetWeight;->photos_1:Ljava/lang/String;

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$102(Lcom/boohee/one/ui/WebViewPicUploadActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 206
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v0, Lcom/boohee/model/BetWeight;->photos_1:Ljava/lang/String;

    iget-object v4, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v4, v4, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWhole:Landroid/widget/ImageView;

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 207
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWholeDelete:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    # getter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F
    invoke-static {v2}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$400(Lcom/boohee/one/ui/WebViewPicUploadActivity;)F

    move-result v2

    cmpl-float v2, v2, v6

    if-lez v2, :cond_4

    .line 211
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mEtCurrentWeight:Landroid/widget/EditText;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    # getter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F
    invoke-static {v4}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$400(Lcom/boohee/one/ui/WebViewPicUploadActivity;)F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mEtCurrentWeight:Landroid/widget/EditText;

    iget-object v3, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mEtCurrentWeight:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSelection(I)V

    .line 214
    :cond_4
    return-void

    .line 182
    :cond_5
    const-string v1, "\u4fee\u6539"

    .line 183
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mRequestMethod:I
    invoke-static {v2, v4}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$302(Lcom/boohee/one/ui/WebViewPicUploadActivity;I)I

    .line 184
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget v3, v0, Lcom/boohee/model/BetWeight;->base_weight:F

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F
    invoke-static {v2, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$402(Lcom/boohee/one/ui/WebViewPicUploadActivity;F)F

    goto/16 :goto_0

    .line 187
    :cond_6
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    # getter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->type:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$200(Lcom/boohee/one/ui/WebViewPicUploadActivity;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->end_upload:Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;

    invoke-virtual {v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity$UPLOAD_TYPE;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mRequestMethod:I
    invoke-static {v2, v4}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$302(Lcom/boohee/one/ui/WebViewPicUploadActivity;I)I

    .line 189
    if-eqz v0, :cond_7

    iget v2, v0, Lcom/boohee/model/BetWeight;->end_weight:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_8

    .line 190
    :cond_7
    const-string v1, "\u4e0a\u4f20"

    .line 196
    :goto_2
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u7ed3\u675f\u4f53\u91cd"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 192
    :cond_8
    const-string v1, "\u4fee\u6539"

    .line 193
    iget-object v2, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget v3, v0, Lcom/boohee/model/BetWeight;->end_weight:F

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mCurrentWeight:F
    invoke-static {v2, v3}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$402(Lcom/boohee/one/ui/WebViewPicUploadActivity;F)F

    goto :goto_2
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 218
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 219
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$3;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->dismissLoading()V

    .line 220
    return-void
.end method
