.class Lcom/boohee/one/ui/ClubHomeActivity$4;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "ClubHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ClubHomeActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ClubHomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ClubHomeActivity;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 236
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # setter for: Lcom/boohee/one/ui/ClubHomeActivity;->mPosition:I
    invoke-static {v0, p1}, Lcom/boohee/one/ui/ClubHomeActivity;->access$402(Lcom/boohee/one/ui/ClubHomeActivity;I)I

    .line 237
    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->isSecondLoad:Z
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$500(Lcom/boohee/one/ui/ClubHomeActivity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->hotFragment:Lcom/boohee/one/ui/TimeLineFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$600(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/one/ui/TimeLineFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/TimeLineFragment;->pullToRefresh()V

    .line 239
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # setter for: Lcom/boohee/one/ui/ClubHomeActivity;->isSecondLoad:Z
    invoke-static {v0, v2}, Lcom/boohee/one/ui/ClubHomeActivity;->access$502(Lcom/boohee/one/ui/ClubHomeActivity;Z)Z

    .line 249
    :cond_0
    :goto_0
    if-le p1, v2, :cond_3

    .line 250
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1100(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    :goto_1
    return-void

    .line 240
    :cond_1
    if-ne p1, v3, :cond_2

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->isThirdLoad:Z
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$700(Lcom/boohee/one/ui/ClubHomeActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 241
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->actFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$800(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->loadWeb()V

    .line 242
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/ClubHomeActivity;->ctx:Landroid/content/Context;

    const-string v1, "club_viewEvent"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # setter for: Lcom/boohee/one/ui/ClubHomeActivity;->isThirdLoad:Z
    invoke-static {v0, v2}, Lcom/boohee/one/ui/ClubHomeActivity;->access$702(Lcom/boohee/one/ui/ClubHomeActivity;Z)Z

    goto :goto_0

    .line 244
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->isFourthLoad:Z
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$900(Lcom/boohee/one/ui/ClubHomeActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->expFragment:Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1000(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/TimeLineBrowserFragment;->loadWeb()V

    .line 246
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/ClubHomeActivity;->ctx:Landroid/content/Context;

    const-string v1, "club_viewKnowleage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # setter for: Lcom/boohee/one/ui/ClubHomeActivity;->isFourthLoad:Z
    invoke-static {v0, v2}, Lcom/boohee/one/ui/ClubHomeActivity;->access$902(Lcom/boohee/one/ui/ClubHomeActivity;Z)Z

    goto :goto_0

    .line 252
    :cond_3
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1100(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$4;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->cardview_timeline:Landroid/view/View;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$1100(Lcom/boohee/one/ui/ClubHomeActivity;)Landroid/view/View;

    move-result-object v0

    const-string v1, "alpha"

    new-array v2, v3, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Lcom/nineoldandroids/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/nineoldandroids/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nineoldandroids/animation/ObjectAnimator;->start()V

    goto :goto_1

    nop

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f800000    # 1.0f
    .end array-data
.end method
