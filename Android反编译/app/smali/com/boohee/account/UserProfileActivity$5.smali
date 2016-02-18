.class Lcom/boohee/account/UserProfileActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "UserProfileActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/UserProfileActivity;->changeAvatar(Lboohee/lib/uploader/model/Picture;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/UserProfileActivity;

.field final synthetic val$photoUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Lcom/boohee/account/UserProfileActivity;Landroid/content/Context;Landroid/net/Uri;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 361
    iput-object p1, p0, Lcom/boohee/account/UserProfileActivity$5;->this$0:Lcom/boohee/account/UserProfileActivity;

    iput-object p3, p0, Lcom/boohee/account/UserProfileActivity$5;->val$photoUri:Landroid/net/Uri;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 364
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 365
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity$5;->val$photoUri:Landroid/net/Uri;

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity$5;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v0}, Lcom/boohee/account/UserProfileActivity;->access$800(Lcom/boohee/account/UserProfileActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/account/UserProfileActivity$5;->val$photoUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/account/UserProfileActivity$5;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->avatarImage:Lde/hdodenhof/circleimageview/CircleImageView;
    invoke-static {v2}, Lcom/boohee/account/UserProfileActivity;->access$600(Lcom/boohee/account/UserProfileActivity;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/account/UserProfileActivity$5;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->options:Lcom/nostra13/universalimageloader/core/DisplayImageOptions;
    invoke-static {v3}, Lcom/boohee/account/UserProfileActivity;->access$700(Lcom/boohee/account/UserProfileActivity;)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 367
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/UserIntEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/UserIntEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 369
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity$5;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-virtual {v0}, Lcom/boohee/account/UserProfileActivity;->dismissLoading()V

    .line 373
    return-void
.end method
