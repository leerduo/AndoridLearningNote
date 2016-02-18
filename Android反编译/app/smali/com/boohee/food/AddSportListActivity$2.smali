.class Lcom/boohee/food/AddSportListActivity$2;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "AddSportListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddSportListActivity;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddSportListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddSportListActivity;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/boohee/food/AddSportListActivity$2;->this$0:Lcom/boohee/food/AddSportListActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 144
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$2;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mCustomSportFragment:Lcom/boohee/food/CustomSportFragment;
    invoke-static {v0}, Lcom/boohee/food/AddSportListActivity;->access$200(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/food/CustomSportFragment;

    move-result-object v0

    iget-boolean v0, v0, Lcom/boohee/food/CustomSportFragment;->isFirstLoad:Z

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/boohee/food/AddSportListActivity$2;->this$0:Lcom/boohee/food/AddSportListActivity;

    # getter for: Lcom/boohee/food/AddSportListActivity;->mCustomSportFragment:Lcom/boohee/food/CustomSportFragment;
    invoke-static {v0}, Lcom/boohee/food/AddSportListActivity;->access$200(Lcom/boohee/food/AddSportListActivity;)Lcom/boohee/food/CustomSportFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/food/CustomSportFragment;->firstLoad()V

    .line 147
    :cond_0
    return-void
.end method
