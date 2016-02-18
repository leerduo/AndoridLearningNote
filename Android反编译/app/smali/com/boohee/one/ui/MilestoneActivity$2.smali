.class Lcom/boohee/one/ui/MilestoneActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "MilestoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MilestoneActivity;->reset()V
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
    .line 91
    iput-object p1, p0, Lcom/boohee/one/ui/MilestoneActivity$2;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 94
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 95
    const-string v2, "result"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    iget-object v2, p0, Lcom/boohee/one/ui/MilestoneActivity$2;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/MilestoneActivity;->access$000(Lcom/boohee/one/ui/MilestoneActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/boohee/one/ui/MilestoneActivity$2;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/MilestoneActivity;->access$000(Lcom/boohee/one/ui/MilestoneActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/MilestoneActivity$2;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/MilestoneActivity;->access$000(Lcom/boohee/one/ui/MilestoneActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/Milestone;

    .line 100
    .local v1, "stone":Lcom/boohee/model/status/Milestone;
    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/boohee/model/status/Milestone;->achieved:Z

    goto :goto_1

    .line 102
    .end local v1    # "stone":Lcom/boohee/model/status/Milestone;
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/ui/MilestoneActivity$2;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->mAdapter:Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/MilestoneActivity;->access$100(Lcom/boohee/one/ui/MilestoneActivity;)Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/ui/MilestoneActivity$MilestoneAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 108
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 109
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$2;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/MilestoneActivity;->dismissLoading()V

    .line 110
    return-void
.end method
