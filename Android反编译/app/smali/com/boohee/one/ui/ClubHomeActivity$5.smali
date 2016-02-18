.class Lcom/boohee/one/ui/ClubHomeActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "ClubHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ClubHomeActivity;->requestClubs()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ClubHomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ClubHomeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 293
    iput-object p1, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 296
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 297
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 306
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    const-class v0, Lcom/boohee/model/status/ClubHome;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/ClubHome;

    # setter for: Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;
    invoke-static {v1, v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1202(Lcom/boohee/one/ui/ClubHomeActivity;Lcom/boohee/model/status/ClubHome;)Lcom/boohee/model/status/ClubHome;

    .line 299
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1200(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/model/status/ClubHome;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1200(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/model/status/ClubHome;

    move-result-object v0

    iget-object v0, v0, Lcom/boohee/model/status/ClubHome;->top_members:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1200(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/model/status/ClubHome;

    move-result-object v0

    iget-object v0, v0, Lcom/boohee/model/status/ClubHome;->top_members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 300
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_members:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1400(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    iget-object v2, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;
    invoke-static {v2}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1200(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/model/status/ClubHome;

    move-result-object v2

    iget v2, v2, Lcom/boohee/model/status/ClubHome;->members_count:I

    # invokes: Lcom/boohee/one/ui/ClubHomeActivity;->getClubMemberCount(I)Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1300(Lcom/boohee/one/ui/ClubHomeActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_name:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1500(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;
    invoke-static {v1}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1200(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/model/status/ClubHome;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/status/ClubHome;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 302
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->tv_circle_title:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1600(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;
    invoke-static {v1}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1200(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/model/status/ClubHome;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/status/ClubHome;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/ClubHomeActivity;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mClubHome:Lcom/boohee/model/status/ClubHome;
    invoke-static {v1}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1200(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/model/status/ClubHome;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/status/ClubHome;->avatar_url:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->iv_circle_thumb:Lcom/boohee/widgets/CircularImage;
    invoke-static {v2}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1700(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/widgets/CircularImage;

    move-result-object v2

    const v3, 0x7f02033e

    invoke-static {v3}, Lcom/boohee/utility/ImageLoaderOptions;->global(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 304
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # invokes: Lcom/boohee/one/ui/ClubHomeActivity;->initViewPager()V
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1800(Lcom/boohee/one/ui/ClubHomeActivity;)V

    goto/16 :goto_0
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 310
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 311
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$5;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->dismissLoading()V

    .line 312
    return-void
.end method
