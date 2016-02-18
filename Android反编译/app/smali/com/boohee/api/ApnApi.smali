.class public Lcom/boohee/api/ApnApi;
.super Ljava/lang/Object;
.source "ApnApi.java"


# static fields
.field public static final CHECK_UNREAD:Ljava/lang/String; = "/api/v1/feedbacks/check_unread"

.field public static final GET_MESSAGES:Ljava/lang/String; = "/api/v1/feedbacks/messages"

.field public static final SEND_MESSAGE:Ljava/lang/String; = "/api/v1/feedbacks/send_message"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkUnread(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 28
    const-string v0, "/api/v1/feedbacks/check_unread"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/boohee/one/http/client/ApnClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 29
    return-void
.end method

.method public static getMessages(Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 63
    const-string v0, "/api/v1/feedbacks/messages"

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Lcom/boohee/one/http/client/ApnClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 64
    return-void
.end method

.method public static sendMessage(Ljava/lang/String;Ljava/lang/String;Lboohee/lib/uploader/model/Picture;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V
    .locals 4
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "from"    # Ljava/lang/String;
    .param p2, "picture"    # Lboohee/lib/uploader/model/Picture;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "callback"    # Lcom/boohee/one/http/JsonCallback;

    .prologue
    .line 40
    new-instance v0, Lcom/boohee/one/http/JsonParams;

    invoke-direct {v0}, Lcom/boohee/one/http/JsonParams;-><init>()V

    .line 41
    .local v0, "params":Lcom/boohee/one/http/JsonParams;
    const-string v1, "message"

    invoke-virtual {v0, v1, p0}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    const-string v1, "device_name"

    invoke-static {}, Lcom/boohee/utils/SystemUtil;->getPhoneModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "version_code"

    invoke-static {}, Lcom/boohee/utils/SystemUtil;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 45
    const-string v1, "from"

    invoke-virtual {v0, v1, p1}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_0
    if-eqz p2, :cond_1

    .line 48
    const-string v1, "photo_key"

    iget-object v2, p2, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v3, "key"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string v1, "photo_hash"

    iget-object v2, p2, Lboohee/lib/uploader/model/Picture;->extraData:Lorg/json/JSONObject;

    const-string v3, "hash"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    const-string v1, "width"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lboohee/lib/uploader/model/Picture;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    const-string v1, "height"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p2, Lboohee/lib/uploader/model/Picture;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v1, "photo_type"

    const-string v2, "qiniu"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/http/JsonParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :cond_1
    const-string v1, "/api/v1/feedbacks/send_message"

    invoke-static {v1, v0, p3, p4}, Lcom/boohee/one/http/client/ApnClient;->post(Ljava/lang/String;Lcom/boohee/one/http/JsonParams;Landroid/content/Context;Lcom/boohee/one/http/JsonCallback;)V

    .line 55
    return-void
.end method
