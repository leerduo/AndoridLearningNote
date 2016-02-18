.class Lcom/boohee/one/ui/SelectStatusActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "SelectStatusActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SelectStatusActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SelectStatusActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SelectStatusActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 121
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 122
    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lcom/boohee/model/FoodMealDetailBean;->parse(Ljava/lang/String;)Lcom/boohee/model/FoodMealDetailBean;

    move-result-object v0

    # setter for: Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;
    invoke-static {v1, v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$202(Lcom/boohee/one/ui/SelectStatusActivity;Lcom/boohee/model/FoodMealDetailBean;)Lcom/boohee/model/FoodMealDetailBean;

    .line 123
    const-string v0, "-->"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->isFromHead:Z
    invoke-static {v2}, Lcom/boohee/one/ui/SelectStatusActivity;->access$300(Lcom/boohee/one/ui/SelectStatusActivity;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->isFromHead:Z
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$300(Lcom/boohee/one/ui/SelectStatusActivity;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mStatusCache:Lcom/boohee/one/cache/FileCache;
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$400(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/one/cache/FileCache;

    move-result-object v1

    const-string v2, "key_select_status"

    instance-of v0, p1, Lorg/json/JSONObject;

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .end local p1    # "object":Lorg/json/JSONObject;
    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/boohee/one/cache/FileCache;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$500(Lcom/boohee/one/ui/SelectStatusActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 128
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$500(Lcom/boohee/one/ui/SelectStatusActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;
    invoke-static {v1}, Lcom/boohee/one/ui/SelectStatusActivity;->access$200(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/model/FoodMealDetailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/model/FoodMealDetailBean;->getMeals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 133
    :goto_2
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mAdapter:Lcom/boohee/one/ui/adapter/SelectStatusAdapter;
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$600(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/one/ui/adapter/SelectStatusAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/adapter/SelectStatusAdapter;->notifyDataSetChanged()V

    .line 136
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$200(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/model/FoodMealDetailBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/model/FoodMealDetailBean;->getCurrent_page()I

    move-result v0

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;
    invoke-static {v1}, Lcom/boohee/one/ui/SelectStatusActivity;->access$200(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/model/FoodMealDetailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/model/FoodMealDetailBean;->getTotal_page()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 137
    const-string v0, "\u5df2\u52a0\u8f7d\u5b8c\u5168\u90e8~~"

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mListView:Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$800(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/handmark/pulltorefresh/library/PullToRefreshListView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->loadingFooter:Lcom/boohee/widgets/TurboLoadingFooter;
    invoke-static {v1}, Lcom/boohee/one/ui/SelectStatusActivity;->access$700(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/widgets/TurboLoadingFooter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/widgets/TurboLoadingFooter;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    .line 140
    :cond_0
    return-void

    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_1
    move-object v0, p1

    .line 122
    check-cast v0, Lorg/json/JSONObject;

    invoke-static {v0}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 126
    :cond_2
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "object":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 131
    .restart local p1    # "object":Lorg/json/JSONObject;
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mDatas:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$500(Lcom/boohee/one/ui/SelectStatusActivity;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # getter for: Lcom/boohee/one/ui/SelectStatusActivity;->mBean:Lcom/boohee/model/FoodMealDetailBean;
    invoke-static {v1}, Lcom/boohee/one/ui/SelectStatusActivity;->access$200(Lcom/boohee/one/ui/SelectStatusActivity;)Lcom/boohee/model/FoodMealDetailBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/model/FoodMealDetailBean;->getMeals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 144
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 145
    iget-object v0, p0, Lcom/boohee/one/ui/SelectStatusActivity$1;->this$0:Lcom/boohee/one/ui/SelectStatusActivity;

    # invokes: Lcom/boohee/one/ui/SelectStatusActivity;->completeRefresh()V
    invoke-static {v0}, Lcom/boohee/one/ui/SelectStatusActivity;->access$900(Lcom/boohee/one/ui/SelectStatusActivity;)V

    .line 146
    return-void
.end method
