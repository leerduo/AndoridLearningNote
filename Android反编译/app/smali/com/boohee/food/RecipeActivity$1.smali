.class Lcom/boohee/food/RecipeActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "RecipeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/RecipeActivity;->requestData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/RecipeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/RecipeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/boohee/food/RecipeActivity$1;->this$0:Lcom/boohee/food/RecipeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "obj"    # Lorg/json/JSONObject;

    .prologue
    .line 128
    instance-of v1, p1, Lorg/json/JSONObject;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .end local p1    # "obj":Lorg/json/JSONObject;
    :goto_0
    invoke-static {v1}, Lcom/boohee/model/Recipe;->parse(Ljava/lang/String;)Lcom/boohee/model/Recipe;

    move-result-object v0

    .line 129
    .local v0, "recipe":Lcom/boohee/model/Recipe;
    if-eqz v0, :cond_1

    .line 130
    iget-object v1, p0, Lcom/boohee/food/RecipeActivity$1;->this$0:Lcom/boohee/food/RecipeActivity;

    # invokes: Lcom/boohee/food/RecipeActivity;->initView(Lcom/boohee/model/Recipe;)V
    invoke-static {v1, v0}, Lcom/boohee/food/RecipeActivity;->access$000(Lcom/boohee/food/RecipeActivity;Lcom/boohee/model/Recipe;)V

    .line 135
    :goto_1
    return-void

    .line 128
    .end local v0    # "recipe":Lcom/boohee/model/Recipe;
    .restart local p1    # "obj":Lorg/json/JSONObject;
    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    .end local p1    # "obj":Lorg/json/JSONObject;
    invoke-static {p1}, Lcom/newrelic/agent/android/instrumentation/JSONObjectInstrumentation;->toString(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 133
    .restart local v0    # "recipe":Lcom/boohee/model/Recipe;
    :cond_1
    const-string v1, "Data error!"

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showLong(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/boohee/food/RecipeActivity$1;->this$0:Lcom/boohee/food/RecipeActivity;

    invoke-virtual {v1}, Lcom/boohee/food/RecipeActivity;->finish()V

    goto :goto_1
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/boohee/food/RecipeActivity$1;->this$0:Lcom/boohee/food/RecipeActivity;

    invoke-virtual {v0}, Lcom/boohee/food/RecipeActivity;->dismissLoading()V

    .line 141
    return-void
.end method
