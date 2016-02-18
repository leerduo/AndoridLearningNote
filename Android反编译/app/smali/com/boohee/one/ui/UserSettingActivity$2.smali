.class Lcom/boohee/one/ui/UserSettingActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserSettingActivity;->getCouponsInfo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UserSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UserSettingActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/boohee/one/ui/UserSettingActivity$2;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x0

    .line 192
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 193
    const-string v3, "coupons"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/boohee/model/Coupon;->parseLists(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 194
    .local v0, "coupons":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Coupon;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v1, 0x1

    .line 195
    .local v1, "isShowContent":Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/boohee/one/ui/UserSettingActivity$2;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/UserSettingActivity;->ivCouponPoint:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 196
    :cond_0
    return-void

    .end local v1    # "isShowContent":Z
    :cond_1
    move v1, v2

    .line 194
    goto :goto_0
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 200
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 201
    return-void
.end method
