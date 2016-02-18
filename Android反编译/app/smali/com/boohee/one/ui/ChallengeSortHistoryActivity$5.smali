.class Lcom/boohee/one/ui/ChallengeSortHistoryActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChallengeSortHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->loadWalkingChallengeHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 165
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$5;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 169
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$5;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    const-string v1, "\u8fd9\u91cc\u662f\u5386\u53f2\u6392\u884c\u7684 \u5934\u90e8\u4fe1\u606f\uff0c\u9700\u8981\u540e\u7aef\u8fd4\u56de\u8fd9\u4e9b\u4fe1\u606f\uff0c\u7136\u540e\u5c55\u793a"

    # invokes: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->updateHeaderText(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$500(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Ljava/lang/String;)V

    .line 170
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$5;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # invokes: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->refreshWalkData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$600(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Lorg/json/JSONObject;)V

    .line 171
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$5;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 177
    return-void
.end method
