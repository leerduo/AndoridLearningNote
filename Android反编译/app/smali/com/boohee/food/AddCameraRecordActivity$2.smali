.class Lcom/boohee/food/AddCameraRecordActivity$2;
.super Ljava/lang/Object;
.source "AddCameraRecordActivity.java"

# interfaces
.implements Lboohee/lib/uploader/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/food/AddCameraRecordActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddCameraRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddCameraRecordActivity;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/boohee/food/AddCameraRecordActivity$2;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$2;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    invoke-virtual {v0}, Lcom/boohee/food/AddCameraRecordActivity;->dismissLoading()V

    .line 189
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 158
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/boohee/food/AddCameraRecordActivity$2;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    invoke-virtual {v0}, Lcom/boohee/food/AddCameraRecordActivity;->showLoading()V

    .line 163
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 7
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
    .line 167
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    if-nez p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 184
    :goto_0
    return-void

    .line 168
    :cond_0
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lboohee/lib/uploader/model/Picture;

    .line 170
    .local v4, "picture":Lboohee/lib/uploader/model/Picture;
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 171
    .local v0, "array":Lorg/json/JSONArray;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 172
    .local v3, "obj":Lorg/json/JSONObject;
    const-string v5, "origin_width"

    iget v6, v4, Lboohee/lib/uploader/model/Picture;->width:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 173
    const-string v5, "origin_height"

    iget v6, v4, Lboohee/lib/uploader/model/Picture;->height:I

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 174
    iget-object v2, v4, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    .line 175
    .local v2, "jsonObject":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 176
    const-string v5, "qiniu_key"

    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v5, "qiniu_hash"

    const-string v6, "hash"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    :cond_1
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 180
    iget-object v5, p0, Lcom/boohee/food/AddCameraRecordActivity$2;->this$0:Lcom/boohee/food/AddCameraRecordActivity;

    const-string v6, "key"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/boohee/food/AddCameraRecordActivity;->postWeight(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/boohee/food/AddCameraRecordActivity;->access$100(Lcom/boohee/food/AddCameraRecordActivity;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v0    # "array":Lorg/json/JSONArray;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
