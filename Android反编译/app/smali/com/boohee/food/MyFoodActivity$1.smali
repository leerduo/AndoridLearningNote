.class Lcom/boohee/food/MyFoodActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "MyFoodActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/MyFoodActivity;->refreshUploadFoodCount()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/MyFoodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/MyFoodActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/boohee/food/MyFoodActivity$1;->this$0:Lcom/boohee/food/MyFoodActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 72
    :try_start_0
    iget-object v1, p0, Lcom/boohee/food/MyFoodActivity$1;->this$0:Lcom/boohee/food/MyFoodActivity;

    const-string v2, "count"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/boohee/food/MyFoodActivity;->uploadCount:I
    invoke-static {v1, v2}, Lcom/boohee/food/MyFoodActivity;->access$002(Lcom/boohee/food/MyFoodActivity;I)I

    .line 73
    iget-object v1, p0, Lcom/boohee/food/MyFoodActivity$1;->this$0:Lcom/boohee/food/MyFoodActivity;

    iget-object v1, v1, Lcom/boohee/food/MyFoodActivity;->UploadNum:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/food/MyFoodActivity$1;->this$0:Lcom/boohee/food/MyFoodActivity;

    # getter for: Lcom/boohee/food/MyFoodActivity;->uploadCount:I
    invoke-static {v2}, Lcom/boohee/food/MyFoodActivity;->access$000(Lcom/boohee/food/MyFoodActivity;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
