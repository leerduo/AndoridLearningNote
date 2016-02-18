.class Lcom/boohee/one/mine/BroadcastListActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "BroadcastListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/mine/BroadcastListActivity;->allReaded()V
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
    .line 88
    iput-object p1, p0, Lcom/boohee/one/mine/BroadcastListActivity$2;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 92
    iget-object v2, p0, Lcom/boohee/one/mine/BroadcastListActivity$2;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    # getter for: Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/mine/BroadcastListActivity;->access$000(Lcom/boohee/one/mine/BroadcastListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/boohee/one/mine/BroadcastListActivity$2;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    # getter for: Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/mine/BroadcastListActivity;->access$000(Lcom/boohee/one/mine/BroadcastListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 93
    iget-object v2, p0, Lcom/boohee/one/mine/BroadcastListActivity$2;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    # getter for: Lcom/boohee/one/mine/BroadcastListActivity;->broadcasts:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/mine/BroadcastListActivity;->access$000(Lcom/boohee/one/mine/BroadcastListActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Broadcast;

    .line 94
    .local v0, "cast":Lcom/boohee/model/status/Broadcast;
    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/boohee/model/status/Broadcast;->read:Z

    goto :goto_0

    .line 96
    .end local v0    # "cast":Lcom/boohee/model/status/Broadcast;
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/mine/BroadcastListActivity$2;->this$0:Lcom/boohee/one/mine/BroadcastListActivity;

    # getter for: Lcom/boohee/one/mine/BroadcastListActivity;->mAdapter:Lcom/boohee/one/ui/adapter/BroadcastAdapter;
    invoke-static {v2}, Lcom/boohee/one/mine/BroadcastListActivity;->access$100(Lcom/boohee/one/mine/BroadcastListActivity;)Lcom/boohee/one/ui/adapter/BroadcastAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/ui/adapter/BroadcastAdapter;->notifyDataSetChanged()V

    .line 97
    const-string v2, "\u7f6e\u4e3a\u5168\u90e8\u5df2\u8bfb\u6210\u529f"

    invoke-static {v2}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 99
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method
