.class Lcom/boohee/one/ui/ShopCategoryActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "ShopCategoryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ShopCategoryActivity;->requestLabelList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ShopCategoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ShopCategoryActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/boohee/one/ui/ShopCategoryActivity$2;->this$0:Lcom/boohee/one/ui/ShopCategoryActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 102
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 103
    const-class v1, Lcom/boohee/model/ShopList;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/ShopList;

    .line 104
    .local v0, "shopList":Lcom/boohee/model/ShopList;
    iget-object v1, p0, Lcom/boohee/one/ui/ShopCategoryActivity$2;->this$0:Lcom/boohee/one/ui/ShopCategoryActivity;

    # invokes: Lcom/boohee/one/ui/ShopCategoryActivity;->initViewPager(Lcom/boohee/model/ShopList;)V
    invoke-static {v1, v0}, Lcom/boohee/one/ui/ShopCategoryActivity;->access$000(Lcom/boohee/one/ui/ShopCategoryActivity;Lcom/boohee/model/ShopList;)V

    .line 105
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 109
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 110
    return-void
.end method
