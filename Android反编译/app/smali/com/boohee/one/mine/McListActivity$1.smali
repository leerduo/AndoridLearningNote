.class Lcom/boohee/one/mine/McListActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "McListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/mine/McListActivity;->getList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/mine/McListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/mine/McListActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/boohee/one/mine/McListActivity$1;->this$0:Lcom/boohee/one/mine/McListActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 78
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity$1;->this$0:Lcom/boohee/one/mine/McListActivity;

    invoke-static {p1}, Lcom/boohee/model/mine/McPeriod;->parseMcList(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/boohee/one/mine/McListActivity;->mcPeriodList:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/boohee/one/mine/McListActivity;->access$002(Lcom/boohee/one/mine/McListActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 79
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity$1;->this$0:Lcom/boohee/one/mine/McListActivity;

    new-instance v1, Lcom/boohee/one/mine/McListActivity$McListAdaper;

    iget-object v2, p0, Lcom/boohee/one/mine/McListActivity$1;->this$0:Lcom/boohee/one/mine/McListActivity;

    iget-object v3, p0, Lcom/boohee/one/mine/McListActivity$1;->this$0:Lcom/boohee/one/mine/McListActivity;

    # getter for: Lcom/boohee/one/mine/McListActivity;->mcPeriodList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/one/mine/McListActivity;->access$000(Lcom/boohee/one/mine/McListActivity;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/boohee/one/mine/McListActivity$1;->this$0:Lcom/boohee/one/mine/McListActivity;

    # getter for: Lcom/boohee/one/mine/McListActivity;->edit:Z
    invoke-static {v4}, Lcom/boohee/one/mine/McListActivity;->access$200(Lcom/boohee/one/mine/McListActivity;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/one/mine/McListActivity$McListAdaper;-><init>(Lcom/boohee/one/mine/McListActivity;Ljava/util/ArrayList;Z)V

    # setter for: Lcom/boohee/one/mine/McListActivity;->mcListAdapter:Lcom/boohee/one/mine/McListActivity$McListAdaper;
    invoke-static {v0, v1}, Lcom/boohee/one/mine/McListActivity;->access$102(Lcom/boohee/one/mine/McListActivity;Lcom/boohee/one/mine/McListActivity$McListAdaper;)Lcom/boohee/one/mine/McListActivity$McListAdaper;

    .line 80
    iget-object v0, p0, Lcom/boohee/one/mine/McListActivity$1;->this$0:Lcom/boohee/one/mine/McListActivity;

    # getter for: Lcom/boohee/one/mine/McListActivity;->listView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/one/mine/McListActivity;->access$300(Lcom/boohee/one/mine/McListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/mine/McListActivity$1;->this$0:Lcom/boohee/one/mine/McListActivity;

    # getter for: Lcom/boohee/one/mine/McListActivity;->mcListAdapter:Lcom/boohee/one/mine/McListActivity$McListAdaper;
    invoke-static {v1}, Lcom/boohee/one/mine/McListActivity;->access$100(Lcom/boohee/one/mine/McListActivity;)Lcom/boohee/one/mine/McListActivity$McListAdaper;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 81
    return-void
.end method
