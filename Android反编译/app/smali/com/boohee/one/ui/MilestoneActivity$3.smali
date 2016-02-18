.class Lcom/boohee/one/ui/MilestoneActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "MilestoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MilestoneActivity;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MilestoneActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MilestoneActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/boohee/one/ui/MilestoneActivity$3;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 118
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 119
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$3;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    invoke-static {p1}, Lcom/boohee/model/status/Milestone;->parseLists(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v1

    # setter for: Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/MilestoneActivity;->access$002(Lcom/boohee/one/ui/MilestoneActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 120
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$3;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    new-instance v1, Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/MilestoneActivity$3;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/MilestoneActivity$3;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    iget-object v4, p0, Lcom/boohee/one/ui/MilestoneActivity$3;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/boohee/one/ui/MilestoneActivity;->access$000(Lcom/boohee/one/ui/MilestoneActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;-><init>(Lcom/boohee/one/ui/MilestoneActivity;Landroid/app/Activity;Ljava/util/List;)V

    # setter for: Lcom/boohee/one/ui/MilestoneActivity;->mAdapter:Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/MilestoneActivity;->access$102(Lcom/boohee/one/ui/MilestoneActivity;Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;)Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;

    .line 121
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$3;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->mListView:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/one/ui/MilestoneActivity;->access$200(Lcom/boohee/one/ui/MilestoneActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/MilestoneActivity$3;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->mAdapter:Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;
    invoke-static {v1}, Lcom/boohee/one/ui/MilestoneActivity;->access$100(Lcom/boohee/one/ui/MilestoneActivity;)Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void
.end method
