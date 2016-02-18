.class Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "TodayAnalysisActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->requestDailyAnalysis()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 176
    iput-object p1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 180
    const-class v1, Lcom/boohee/model/TodayAnalysis;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/TodayAnalysis;

    .line 181
    .local v0, "todayAnalysis":Lcom/boohee/model/TodayAnalysis;
    if-nez v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    iget v2, v0, Lcom/boohee/model/TodayAnalysis;->score:I

    # invokes: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initScore(I)V
    invoke-static {v1, v2}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$000(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;I)V

    .line 183
    iget-object v1, v0, Lcom/boohee/model/TodayAnalysis;->overview:Lcom/boohee/model/TodayOverview;

    if-eqz v1, :cond_1

    .line 184
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    iget-object v2, v0, Lcom/boohee/model/TodayAnalysis;->overview:Lcom/boohee/model/TodayOverview;

    # invokes: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initTodayOverview(Lcom/boohee/model/TodayOverview;)V
    invoke-static {v1, v2}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$100(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Lcom/boohee/model/TodayOverview;)V

    .line 186
    :cond_1
    iget-object v1, v0, Lcom/boohee/model/TodayAnalysis;->diets:Lcom/boohee/model/TodayDiets;

    if-eqz v1, :cond_2

    .line 187
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    iget-object v2, v0, Lcom/boohee/model/TodayAnalysis;->diets:Lcom/boohee/model/TodayDiets;

    # invokes: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initTodayDiets(Lcom/boohee/model/TodayDiets;)V
    invoke-static {v1, v2}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$200(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Lcom/boohee/model/TodayDiets;)V

    .line 189
    :cond_2
    iget-object v1, v0, Lcom/boohee/model/TodayAnalysis;->nuturitions:Lcom/boohee/model/TodayNutrients;

    if-eqz v1, :cond_3

    .line 190
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    iget-object v2, v0, Lcom/boohee/model/TodayAnalysis;->nuturitions:Lcom/boohee/model/TodayNutrients;

    # invokes: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initTodayNutrients(Lcom/boohee/model/TodayNutrients;)V
    invoke-static {v1, v2}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$300(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Lcom/boohee/model/TodayNutrients;)V

    .line 192
    :cond_3
    iget-object v1, v0, Lcom/boohee/model/TodayAnalysis;->micro_nuturitions:Lcom/boohee/model/TodayMicroNutrients;

    if-eqz v1, :cond_4

    .line 193
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    iget-object v2, v0, Lcom/boohee/model/TodayAnalysis;->micro_nuturitions:Lcom/boohee/model/TodayMicroNutrients;

    # invokes: Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->initTodayMicroNutrients(Lcom/boohee/model/TodayMicroNutrients;)V
    invoke-static {v1, v2}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->access$400(Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;Lcom/boohee/model/TodayMicroNutrients;)V

    .line 195
    :cond_4
    iget-object v1, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->mScrollView:Landroid/widget/ScrollView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 201
    iget-object v0, p0, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity$1;->this$0:Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/TodayAnalysisActivity;->dismissLoading()V

    .line 202
    return-void
.end method
