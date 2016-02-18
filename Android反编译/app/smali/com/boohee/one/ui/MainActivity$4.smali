.class Lcom/boohee/one/ui/MainActivity$4;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MainActivity;->initFragments()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MainActivity;)V
    .locals 0

    .prologue
    .line 226
    iput-object p1, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 267
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 268
    .local v0, "position":I
    packed-switch v0, :pswitch_data_0

    .line 281
    :goto_0
    :pswitch_0
    return-void

    .line 272
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;
    invoke-static {v1}, Lcom/boohee/one/ui/MainActivity;->access$100(Lcom/boohee/one/ui/MainActivity;)Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/boohee/one/ui/MainActivity$Tabs;->COUPLE:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v2}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/ui/fragment/BaseFragment;

    invoke-virtual {v1}, Lcom/boohee/one/ui/fragment/BaseFragment;->loadFirst()V

    goto :goto_0

    .line 268
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    const v3, 0x7f0d0007

    .line 229
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/MainActivity;->supportInvalidateOptionsMenu()V

    .line 230
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 258
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$100(Lcom/boohee/one/ui/MainActivity;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/boohee/one/ui/MainActivity$Tabs;->HOME:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v2}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    # invokes: Lcom/boohee/one/ui/MainActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    invoke-static {v1, v0}, Lcom/boohee/one/ui/MainActivity;->access$200(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V

    .line 233
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$000(Lcom/boohee/one/ui/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "bingo_homePage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    sget v1, Lcom/boohee/one/ui/fragment/HomeNewFragment;->toolBarColor:I

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/MainActivity;->setToolBarColor(I)V

    goto :goto_0

    .line 237
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$100(Lcom/boohee/one/ui/MainActivity;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/boohee/one/ui/MainActivity$Tabs;->COUPLE:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v2}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    # invokes: Lcom/boohee/one/ui/MainActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    invoke-static {v1, v0}, Lcom/boohee/one/ui/MainActivity;->access$200(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V

    .line 238
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$000(Lcom/boohee/one/ui/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "status_homePage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$300(Lcom/boohee/one/ui/MainActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    goto :goto_0

    .line 242
    :pswitch_2
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$100(Lcom/boohee/one/ui/MainActivity;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/boohee/one/ui/MainActivity$Tabs;->MINE:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v2}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    # invokes: Lcom/boohee/one/ui/MainActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    invoke-static {v1, v0}, Lcom/boohee/one/ui/MainActivity;->access$200(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V

    .line 243
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$000(Lcom/boohee/one/ui/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "tool_homePage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$300(Lcom/boohee/one/ui/MainActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    goto/16 :goto_0

    .line 247
    :pswitch_3
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mFragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$100(Lcom/boohee/one/ui/MainActivity;)Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/boohee/one/ui/MainActivity$Tabs;->SHOP:Lcom/boohee/one/ui/MainActivity$Tabs;

    invoke-virtual {v2}, Lcom/boohee/one/ui/MainActivity$Tabs;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    # invokes: Lcom/boohee/one/ui/MainActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    invoke-static {v1, v0}, Lcom/boohee/one/ui/MainActivity;->access$200(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V

    .line 248
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$000(Lcom/boohee/one/ui/MainActivity;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "shop_homePage"

    invoke-static {v0, v1}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mShopBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$400(Lcom/boohee/one/ui/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mShopBadge:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$400(Lcom/boohee/one/ui/MainActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$4;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->toolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$300(Lcom/boohee/one/ui/MainActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/Toolbar;->setBackgroundResource(I)V

    .line 253
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/ConstEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/ConstEvent;-><init>()V

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/boohee/one/event/ConstEvent;->setFlag(I)Lcom/boohee/one/event/ConstEvent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 263
    return-void
.end method
