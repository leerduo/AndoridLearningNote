.class Lcom/boohee/one/ui/CouponActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "CouponActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/CouponActivity;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/CouponActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/CouponActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/boohee/one/ui/CouponActivity$1;->this$0:Lcom/boohee/one/ui/CouponActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 83
    const-string v2, "coupons"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/boohee/model/Coupon;->parseLists(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 84
    .local v0, "coupons":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Coupon;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 85
    .local v1, "isShowContent":Z
    :goto_0
    if-eqz v1, :cond_0

    .line 86
    iget-object v2, p0, Lcom/boohee/one/ui/CouponActivity$1;->this$0:Lcom/boohee/one/ui/CouponActivity;

    # getter for: Lcom/boohee/one/ui/CouponActivity;->mDatas:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/ui/CouponActivity;->access$000(Lcom/boohee/one/ui/CouponActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 87
    iget-object v2, p0, Lcom/boohee/one/ui/CouponActivity$1;->this$0:Lcom/boohee/one/ui/CouponActivity;

    # getter for: Lcom/boohee/one/ui/CouponActivity;->mAdapter:Lcom/boohee/one/ui/adapter/CouponListAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/CouponActivity;->access$100(Lcom/boohee/one/ui/CouponActivity;)Lcom/boohee/one/ui/adapter/CouponListAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/ui/adapter/CouponListAdapter;->notifyDataSetInvalidated()V

    .line 89
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/ui/CouponActivity$1;->this$0:Lcom/boohee/one/ui/CouponActivity;

    # invokes: Lcom/boohee/one/ui/CouponActivity;->showContent(Z)V
    invoke-static {v2, v1}, Lcom/boohee/one/ui/CouponActivity;->access$200(Lcom/boohee/one/ui/CouponActivity;Z)V

    .line 90
    return-void

    .line 84
    .end local v1    # "isShowContent":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 95
    iget-object v0, p0, Lcom/boohee/one/ui/CouponActivity$1;->this$0:Lcom/boohee/one/ui/CouponActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/CouponActivity;->dismissLoading()V

    .line 96
    return-void
.end method
