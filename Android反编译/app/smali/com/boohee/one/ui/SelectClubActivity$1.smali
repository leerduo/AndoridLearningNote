.class Lcom/boohee/one/ui/SelectClubActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "SelectClubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SelectClubActivity;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SelectClubActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SelectClubActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/boohee/one/ui/SelectClubActivity$1;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    if-nez p1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    invoke-static {p1}, Lcom/boohee/model/club/Club;->parseClubs(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v0

    .line 74
    .local v0, "clubs":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Club;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 75
    # getter for: Lcom/boohee/one/ui/SelectClubActivity;->mDataList:Ljava/util/List;
    invoke-static {}, Lcom/boohee/one/ui/SelectClubActivity;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 76
    # getter for: Lcom/boohee/one/ui/SelectClubActivity;->mDataList:Ljava/util/List;
    invoke-static {}, Lcom/boohee/one/ui/SelectClubActivity;->access$000()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubActivity$1;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    # invokes: Lcom/boohee/one/ui/SelectClubActivity;->initSelected()V
    invoke-static {v1}, Lcom/boohee/one/ui/SelectClubActivity;->access$100(Lcom/boohee/one/ui/SelectClubActivity;)V

    .line 79
    iget-object v1, p0, Lcom/boohee/one/ui/SelectClubActivity$1;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    # getter for: Lcom/boohee/one/ui/SelectClubActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectClubAdapter;
    invoke-static {v1}, Lcom/boohee/one/ui/SelectClubActivity;->access$200(Lcom/boohee/one/ui/SelectClubActivity;)Lcom/boohee/one/ui/adapter/SelectClubAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/SelectClubAdapter;->notifyDataSetChanged()V

    .line 81
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 82
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity$1;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/SelectClubActivity;->dismissLoading()V

    .line 89
    return-void
.end method
