.class Lcom/boohee/one/ui/MyFavoriteActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "MyFavoriteActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MyFavoriteActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MyFavoriteActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MyFavoriteActivity;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/boohee/one/ui/MyFavoriteActivity$2;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 131
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity$2;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MyFavoriteActivity;->webFavoriteFragment:Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity$2;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MyFavoriteActivity;->webFavoriteFragment:Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->isFirstLoad()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity$2;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MyFavoriteActivity;->webFavoriteFragment:Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    invoke-virtual {v0}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->pullToRefresh()V

    .line 134
    iget-object v0, p0, Lcom/boohee/one/ui/MyFavoriteActivity$2;->this$0:Lcom/boohee/one/ui/MyFavoriteActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MyFavoriteActivity;->webFavoriteFragment:Lcom/boohee/one/ui/fragment/WebFavoriteFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/fragment/WebFavoriteFragment;->setIsFirstLoad(Z)V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 138
    return-void
.end method
