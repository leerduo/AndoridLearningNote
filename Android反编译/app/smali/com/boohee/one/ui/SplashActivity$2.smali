.class Lcom/boohee/one/ui/SplashActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "SplashActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SplashActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SplashActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 98
    iget-object v2, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    const-class v1, Lcom/boohee/model/Splash;

    invoke-static {p1, v1}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/Splash;

    # setter for: Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;
    invoke-static {v2, v1}, Lcom/boohee/one/ui/SplashActivity;->access$402(Lcom/boohee/one/ui/SplashActivity;Lcom/boohee/model/Splash;)Lcom/boohee/model/Splash;

    .line 99
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;
    invoke-static {v1}, Lcom/boohee/one/ui/SplashActivity;->access$400(Lcom/boohee/one/ui/SplashActivity;)Lcom/boohee/model/Splash;

    move-result-object v1

    if-nez v1, :cond_0

    .line 129
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v2, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;
    invoke-static {v2}, Lcom/boohee/one/ui/SplashActivity;->access$400(Lcom/boohee/one/ui/SplashActivity;)Lcom/boohee/model/Splash;

    move-result-object v2

    iget-boolean v2, v2, Lcom/boohee/model/Splash;->is_ad:Z

    # setter for: Lcom/boohee/one/ui/SplashActivity;->isAd:Z
    invoke-static {v1, v2}, Lcom/boohee/one/ui/SplashActivity;->access$102(Lcom/boohee/one/ui/SplashActivity;Z)Z

    .line 103
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SplashActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v2, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;
    invoke-static {v2}, Lcom/boohee/one/ui/SplashActivity;->access$400(Lcom/boohee/one/ui/SplashActivity;)Lcom/boohee/model/Splash;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/Splash;->start_up_url:Ljava/lang/String;

    iget-object v3, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/SplashActivity;->ivAdContent:Landroid/widget/ImageView;

    const v4, 0x7f02038c

    invoke-static {v4}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 105
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;
    invoke-static {v1}, Lcom/boohee/one/ui/SplashActivity;->access$400(Lcom/boohee/one/ui/SplashActivity;)Lcom/boohee/model/Splash;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/Splash;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->isAd:Z
    invoke-static {v1}, Lcom/boohee/one/ui/SplashActivity;->access$100(Lcom/boohee/one/ui/SplashActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SplashActivity;->tvAdTitle:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SplashActivity;->tvAdTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;
    invoke-static {v2}, Lcom/boohee/one/ui/SplashActivity;->access$400(Lcom/boohee/one/ui/SplashActivity;)Lcom/boohee/model/Splash;

    move-result-object v2

    iget-object v2, v2, Lcom/boohee/model/Splash;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->splash:Lcom/boohee/model/Splash;
    invoke-static {v1}, Lcom/boohee/one/ui/SplashActivity;->access$400(Lcom/boohee/one/ui/SplashActivity;)Lcom/boohee/model/Splash;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/Splash;->link:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 109
    .local v0, "uri":Landroid/net/Uri;
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SplashActivity;->tvAdTitle:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/one/ui/SplashActivity$2$1;

    invoke-direct {v2, p0, v0}, Lcom/boohee/one/ui/SplashActivity$2$1;-><init>(Lcom/boohee/one/ui/SplashActivity$2;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SplashActivity;->tvTime:Landroid/widget/TextView;

    new-instance v2, Lcom/boohee/one/ui/SplashActivity$2$2;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/SplashActivity$2$2;-><init>(Lcom/boohee/one/ui/SplashActivity$2;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 127
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$2;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SplashActivity;->tvAdTitle:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method
