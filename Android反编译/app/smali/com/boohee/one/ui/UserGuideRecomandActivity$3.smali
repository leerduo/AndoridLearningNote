.class Lcom/boohee/one/ui/UserGuideRecomandActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserGuideRecomandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserGuideRecomandActivity;->loadMoreData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UserGuideRecomandActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 7
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 144
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 146
    :try_start_0
    const-string v4, "users"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 147
    .local v3, "usersArray":Lorg/json/JSONArray;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-lez v4, :cond_0

    .line 148
    iget-object v5, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    instance-of v4, v3, Lorg/json/JSONArray;

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v4

    .end local v3    # "usersArray":Lorg/json/JSONArray;
    :goto_0
    invoke-static {v4}, Lcom/boohee/model/status/StatusUser;->parseUsers(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    # setter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;
    invoke-static {v5, v4}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$202(Lcom/boohee/one/ui/UserGuideRecomandActivity;Ljava/util/List;)Ljava/util/List;

    .line 149
    iget-object v4, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v4, v5}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$002(Lcom/boohee/one/ui/UserGuideRecomandActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 150
    iget-object v4, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;
    invoke-static {v4}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$200(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/status/StatusUser;

    .line 151
    .local v2, "user":Lcom/boohee/model/status/StatusUser;
    iget-object v4, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v2, Lcom/boohee/model/status/StatusUser;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 155
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "user":Lcom/boohee/model/status/StatusUser;
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 158
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_2
    return-void

    .line 148
    .restart local v3    # "usersArray":Lorg/json/JSONArray;
    :cond_1
    :try_start_1
    check-cast v3, Lorg/json/JSONArray;

    .end local v3    # "usersArray":Lorg/json/JSONArray;
    invoke-static {v3}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 153
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    iget-object v4, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->adapter:Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;
    invoke-static {v4}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$300(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;->notifyDataSetChanged()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 163
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$3;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->dismissLoading()V

    .line 164
    return-void
.end method
