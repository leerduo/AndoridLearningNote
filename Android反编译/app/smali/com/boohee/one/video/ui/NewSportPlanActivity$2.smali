.class Lcom/boohee/one/video/ui/NewSportPlanActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "NewSportPlanActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/NewSportPlanActivity;->getData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/NewSportPlanActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 149
    iput-object p1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$2;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 158
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 159
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$2;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    const-class v0, Lcom/boohee/one/video/entity/DashBoard;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/video/entity/DashBoard;

    # setter for: Lcom/boohee/one/video/ui/NewSportPlanActivity;->dashBoard:Lcom/boohee/one/video/entity/DashBoard;
    invoke-static {v1, v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->access$202(Lcom/boohee/one/video/ui/NewSportPlanActivity;Lcom/boohee/one/video/entity/DashBoard;)Lcom/boohee/one/video/entity/DashBoard;

    .line 160
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$2;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    # invokes: Lcom/boohee/one/video/ui/NewSportPlanActivity;->refreshDashBoard()V
    invoke-static {v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->access$300(Lcom/boohee/one/video/ui/NewSportPlanActivity;)V

    .line 161
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 153
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$2;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->dismissLoading()V

    .line 154
    return-void
.end method
