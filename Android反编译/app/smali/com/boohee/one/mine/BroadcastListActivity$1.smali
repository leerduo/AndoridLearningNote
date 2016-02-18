.class Lcom/boohee/one/mine/BroadcastListActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "BroadcastListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/mine/BroadcastListActivity;->getBroadcasts()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/mine/BroadcastListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/mine/BroadcastListActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/boohee/one/mine/BroadcastListActivity$1;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 64
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 65
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity$1;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    const-string v1, "broadcasts"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/model/status/Broadcast;->parseBroadacasts(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/boohee/one/mine/BroadcastListActivity;->access$002(Lcom/boohee/one/mine/BroadcastListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 66
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity$1;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    new-instance v1, Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    iget-object v2, p0, Lcom/boohee/one/mine/BroadcastListActivity$1;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    # getter for: Lcom/boohee/one/mine/BroadcastListActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v2}, Lcom/boohee/one/mine/BroadcastListActivity;->access$200(Lcom/boohee/one/mine/BroadcastListActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/mine/BroadcastListActivity$1;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    # getter for: Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/one/mine/BroadcastListActivity;->access$000(Lcom/boohee/one/mine/BroadcastListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/one/ui/adapter/BroadcastAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    # setter for: Lcom/boohee/one/mine/BroadcastListActivity;->mAdapter:Lcom/boohee/one/ui/adapter/BroadcastAdapter;
    invoke-static {v0, v1}, Lcom/boohee/one/mine/BroadcastListActivity;->access$102(Lcom/boohee/one/mine/BroadcastListActivity;Lcom/boohee/one/ui/adapter/BroadcastAdapter;)Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    .line 67
    iget-object v0, p0, Lcom/boohee/one/mine/BroadcastListActivity$1;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    # getter for: Lcom/boohee/one/mine/BroadcastListActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/one/mine/BroadcastListActivity;->access$300(Lcom/boohee/one/mine/BroadcastListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/mine/BroadcastListActivity$1;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    # getter for: Lcom/boohee/one/mine/BroadcastListActivity;->mAdapter:Lcom/boohee/one/ui/adapter/BroadcastAdapter;
    invoke-static {v1}, Lcom/boohee/one/mine/BroadcastListActivity;->access$100(Lcom/boohee/one/mine/BroadcastListActivity;)Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 68
    return-void
.end method
