.class Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "IntroduceChallengeSelectActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->getUserGuideChallenges(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

.field final synthetic val$isLoadMore:Z


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;Landroid/content/Context;Z)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 126
    iput-object p1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    iput-boolean p3, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->val$isLoadMore:Z

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 130
    const-class v1, Lcom/boohee/model/chanllenge/AllChallenges;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/chanllenge/AllChallenges;

    .line 131
    .local v0, "all":Lcom/boohee/model/chanllenge/AllChallenges;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/boohee/model/chanllenge/AllChallenges;->challenges:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/boohee/model/chanllenge/AllChallenges;->challenges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    iget-boolean v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->val$isLoadMore:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$300(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 133
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    iget v2, v0, Lcom/boohee/model/chanllenge/AllChallenges;->page:I

    # setter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->page:I
    invoke-static {v1, v2}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$402(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;I)I

    .line 134
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    iget v2, v0, Lcom/boohee/model/chanllenge/AllChallenges;->total_pages:I

    # setter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->totalPage:I
    invoke-static {v1, v2}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$502(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;I)I

    .line 135
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mDatas:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$300(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Ljava/util/List;

    move-result-object v1

    iget-object v2, v0, Lcom/boohee/model/chanllenge/AllChallenges;->challenges:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 136
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mAdapter:Lcom/boohee/one/ui/adapter/ChallengeListAdapter;
    invoke-static {v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$600(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Lcom/boohee/one/ui/adapter/ChallengeListAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/one/ui/adapter/ChallengeListAdapter;->notifyDataSetChanged()V

    .line 137
    if-eqz p1, :cond_3

    const-string v1, "header_info"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 138
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->headerText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$700(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Landroid/widget/TextView;

    move-result-object v1

    const-string v2, "header_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->headerText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$700(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 141
    :cond_3
    iget-object v1, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->headerText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$700(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 147
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 148
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mIsLoadingData:Z
    invoke-static {v0, v1}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$802(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;Z)Z

    .line 149
    iget-object v0, p0, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity$5;->this$0:Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;

    # getter for: Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->mRefreshListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;->access$000(Lcom/boohee/one/ui/IntroduceChallengeSelectActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->onRefreshComplete()V

    .line 150
    return-void
.end method
