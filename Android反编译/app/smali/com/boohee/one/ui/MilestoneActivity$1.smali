.class Lcom/boohee/one/ui/MilestoneActivity$1;
.super Ljava/lang/Object;
.source "MilestoneActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MilestoneActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MilestoneActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MilestoneActivity;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/boohee/one/ui/MilestoneActivity$1;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
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
    .line 61
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$1;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/one/ui/MilestoneActivity;->access$000(Lcom/boohee/one/ui/MilestoneActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$1;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/one/ui/MilestoneActivity;->access$000(Lcom/boohee/one/ui/MilestoneActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Milestone;

    iget-boolean v0, v0, Lcom/boohee/model/status/Milestone;->achieved:Z

    if-nez v0, :cond_1

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$1;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MilestoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v1, "\u4efb\u52a1\u672a\u89e3\u9501\uff0c\u8bf7\u5148\u89e3\u9501"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 68
    :goto_0
    return-void

    .line 65
    :cond_1
    new-instance v1, Lcom/boohee/utility/BuilderIntent;

    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$1;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/MilestoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v1, v0, v2}, Lcom/boohee/utility/BuilderIntent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "url"

    const-string v0, "/api/v1/milestones/%1$d?token=%2$s"

    invoke-static {v0}, Lcom/boohee/one/http/client/StatusClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$1;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    # getter for: Lcom/boohee/one/ui/MilestoneActivity;->stones:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/one/ui/MilestoneActivity;->access$000(Lcom/boohee/one/ui/MilestoneActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/Milestone;

    iget v0, v0, Lcom/boohee/model/status/Milestone;->order:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/boohee/one/ui/MilestoneActivity$1;->this$0:Lcom/boohee/one/ui/MilestoneActivity;

    iget-object v5, v5, Lcom/boohee/one/ui/MilestoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v5}, Lcom/boohee/database/UserPreference;->getToken(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    const-string v1, "title"

    const-string v2, "\u4efb\u52a1\u8be6\u7ec6"

    invoke-virtual {v0, v1, v2}, Lcom/boohee/utility/BuilderIntent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/boohee/utility/BuilderIntent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/utility/BuilderIntent;->startActivity()V

    goto :goto_0
.end method
