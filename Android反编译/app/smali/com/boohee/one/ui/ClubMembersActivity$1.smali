.class Lcom/boohee/one/ui/ClubMembersActivity$1;
.super Ljava/lang/Object;
.source "ClubMembersActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ClubMembersActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ClubMembersActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ClubMembersActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/ClubMembersActivity$1;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$1;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->members:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubMembersActivity;->access$000(Lcom/boohee/one/ui/ClubMembersActivity;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$1;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->members:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubMembersActivity;->access$000(Lcom/boohee/one/ui/ClubMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 55
    iget-object v1, p0, Lcom/boohee/one/ui/ClubMembersActivity$1;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    new-instance v2, Landroid/content/Intent;

    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$1;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    const-class v3, Lcom/boohee/status/UserTimelineActivity;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "nickname"

    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$1;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->members:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubMembersActivity;->access$000(Lcom/boohee/one/ui/ClubMembersActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Member;

    iget-object v0, v0, Lcom/boohee/model/status/Member;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/ClubMembersActivity;->startActivity(Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method
