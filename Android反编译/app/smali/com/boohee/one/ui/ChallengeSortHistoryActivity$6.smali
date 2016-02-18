.class Lcom/boohee/one/ui/ChallengeSortHistoryActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "ChallengeSortHistoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->loadClockOutChallengeHistory()V
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
    .line 184
    iput-object p1, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$6;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 187
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 189
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$6;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    # invokes: Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->refreshClockOutData(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->access$700(Lcom/boohee/one/ui/ChallengeSortHistoryActivity;Lorg/json/JSONObject;)V

    .line 190
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 195
    iget-object v0, p0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity$6;->this$0:Lcom/boohee/one/ui/ChallengeSortHistoryActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/ChallengeSortHistoryActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 196
    return-void
.end method
