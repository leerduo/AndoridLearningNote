.class Lcom/boohee/one/onekey/UserHomeActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/UserHomeActivity;->requestPostMessage(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/UserHomeActivity;

.field final synthetic val$isLoadMore:Z


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/UserHomeActivity;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/boohee/one/onekey/UserHomeActivity$4;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    iput-boolean p3, p0, Lcom/boohee/one/onekey/UserHomeActivity$4;->val$isLoadMore:Z

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 208
    invoke-static {p1}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 209
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 184
    if-nez p1, :cond_1

    .line 199
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    const-string v2, "posts"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 188
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    const-class v2, Lcom/boohee/one/onekey/model/PostMessage;

    invoke-static {v0, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 192
    .local v1, "tmp":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/PostMessage;>;"
    iget-boolean v2, p0, Lcom/boohee/one/onekey/UserHomeActivity$4;->val$isLoadMore:Z

    if-nez v2, :cond_2

    .line 193
    iget-object v2, p0, Lcom/boohee/one/onekey/UserHomeActivity$4;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    # getter for: Lcom/boohee/one/onekey/UserHomeActivity;->mDataList:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/onekey/UserHomeActivity;->access$200(Lcom/boohee/one/onekey/UserHomeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 195
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/onekey/UserHomeActivity$4;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    # getter for: Lcom/boohee/one/onekey/UserHomeActivity;->mDataList:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/onekey/UserHomeActivity;->access$200(Lcom/boohee/one/onekey/UserHomeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 196
    iget-object v2, p0, Lcom/boohee/one/onekey/UserHomeActivity$4;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    # getter for: Lcom/boohee/one/onekey/UserHomeActivity;->mAdapter:Lcom/boohee/one/onekey/adapter/PostMessageAdapter;
    invoke-static {v2}, Lcom/boohee/one/onekey/UserHomeActivity;->access$300(Lcom/boohee/one/onekey/UserHomeActivity;)Lcom/boohee/one/onekey/adapter/PostMessageAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->notifyDataSetChanged()V

    .line 198
    iget-object v2, p0, Lcom/boohee/one/onekey/UserHomeActivity$4;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    # operator++ for: Lcom/boohee/one/onekey/UserHomeActivity;->mPage:I
    invoke-static {v2}, Lcom/boohee/one/onekey/UserHomeActivity;->access$408(Lcom/boohee/one/onekey/UserHomeActivity;)I

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/boohee/one/onekey/UserHomeActivity$4;->this$0:Lcom/boohee/one/onekey/UserHomeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/onekey/UserHomeActivity;->dismissLoading()V

    .line 204
    return-void
.end method
