.class Lcom/boohee/one/ui/MainActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MainActivity;->getShopUpdatedTime()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MainActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 324
    iput-object p1, p0, Lcom/boohee/one/ui/MainActivity$5;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 338
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 327
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 328
    const-string v1, "shop_updated_at"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "shop_updated_at":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$5;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/ui/MainActivity;->access$000(Lcom/boohee/one/ui/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/database/OnePreference;->getShopUpdateAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$5;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/ui/MainActivity;->access$000(Lcom/boohee/one/ui/MainActivity;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/database/OnePreference;->getInstance(Landroid/content/Context;)Lcom/boohee/database/OnePreference;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/boohee/database/OnePreference;->setShopUpdateAt(Ljava/lang/String;)V

    .line 331
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$5;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mShopBadge:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/boohee/one/ui/MainActivity;->access$400(Lcom/boohee/one/ui/MainActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 333
    :cond_0
    return-void
.end method
