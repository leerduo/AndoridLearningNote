.class Lcom/boohee/one/video/ui/NewSportPlanActivity$1;
.super Ljava/lang/Object;
.source "NewSportPlanActivity.java"

# interfaces
.implements Landroid/support/design/widget/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/NewSportPlanActivity;->initTabLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/NewSportPlanActivity;)V
    .locals 0

    .prologue
    .line 103
    iput-object p1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$1;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 125
    return-void
.end method

.method public onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$1;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    invoke-virtual {v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->supportInvalidateOptionsMenu()V

    .line 107
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    :goto_0
    return-void

    .line 109
    :pswitch_0
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$1;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$1;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    # getter for: Lcom/boohee/one/video/ui/NewSportPlanActivity;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->access$000(Lcom/boohee/one/video/ui/NewSportPlanActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    # invokes: Lcom/boohee/one/video/ui/NewSportPlanActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    invoke-static {v1, v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->access$100(Lcom/boohee/one/video/ui/NewSportPlanActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V

    goto :goto_0

    .line 112
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$1;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    iget-object v0, p0, Lcom/boohee/one/video/ui/NewSportPlanActivity$1;->this$0:Lcom/boohee/one/video/ui/NewSportPlanActivity;

    # getter for: Lcom/boohee/one/video/ui/NewSportPlanActivity;->fragments:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->access$000(Lcom/boohee/one/video/ui/NewSportPlanActivity;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/fragment/BaseFragment;

    # invokes: Lcom/boohee/one/video/ui/NewSportPlanActivity;->switchFragment(Lcom/boohee/one/ui/fragment/BaseFragment;)V
    invoke-static {v1, v0}, Lcom/boohee/one/video/ui/NewSportPlanActivity;->access$100(Lcom/boohee/one/video/ui/NewSportPlanActivity;Lcom/boohee/one/ui/fragment/BaseFragment;)V

    goto :goto_0

    .line 107
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 121
    return-void
.end method
