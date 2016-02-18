.class Lcom/boohee/food/SearchSportActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "SearchSportActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchSportActivity;->loadData(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchSportActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/SearchSportActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/boohee/food/SearchSportActivity$3;->this$0:Lcom/boohee/food/SearchSportActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 211
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 212
    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity$3;->this$0:Lcom/boohee/food/SearchSportActivity;

    # getter for: Lcom/boohee/food/SearchSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v1}, Lcom/boohee/food/SearchSportActivity;->access$400(Lcom/boohee/food/SearchSportActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v1

    const-string v2, "tool_foodandsport_sportsearch"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 213
    const-string v1, "activities"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/boohee/model/Sport;

    invoke-static {v1, v2}, Lcom/boohee/utils/FastJsonUtils;->parseList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 214
    .local v0, "foods":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Sport;>;"
    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity$3;->this$0:Lcom/boohee/food/SearchSportActivity;

    # invokes: Lcom/boohee/food/SearchSportActivity;->refreshData(Ljava/util/List;)V
    invoke-static {v1, v0}, Lcom/boohee/food/SearchSportActivity;->access$500(Lcom/boohee/food/SearchSportActivity;Ljava/util/List;)V

    .line 215
    return-void
.end method

.method public onFinish()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$3;->this$0:Lcom/boohee/food/SearchSportActivity;

    invoke-virtual {v0}, Lcom/boohee/food/SearchSportActivity;->dismissLoading()V

    .line 220
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$3;->this$0:Lcom/boohee/food/SearchSportActivity;

    # getter for: Lcom/boohee/food/SearchSportActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/food/SearchSportActivity;->access$600(Lcom/boohee/food/SearchSportActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity$3;->this$0:Lcom/boohee/food/SearchSportActivity;

    iget-object v1, v1, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/KeyBoardUtils;->closeKeybord(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 221
    return-void
.end method
