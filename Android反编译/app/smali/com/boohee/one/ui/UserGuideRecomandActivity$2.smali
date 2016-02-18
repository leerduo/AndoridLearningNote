.class Lcom/boohee/one/ui/UserGuideRecomandActivity$2;
.super Ljava/lang/Object;
.source "UserGuideRecomandActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserGuideRecomandActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UserGuideRecomandActivity;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
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
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 102
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$200(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/StatusUser;

    .line 103
    .local v1, "user":Lcom/boohee/model/status/StatusUser;
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;

    .line 105
    .local v0, "holder":Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;
    iget-boolean v2, v1, Lcom/boohee/model/status/StatusUser;->following:Z

    if-nez v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    const/4 v5, 0x0

    invoke-virtual {v2, p3, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 107
    iput-boolean v3, v1, Lcom/boohee/model/status/StatusUser;->following:Z

    .line 108
    iget-object v5, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v2, v1, Lcom/boohee/model/status/StatusUser;->following:Z

    if-nez v2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 114
    :goto_1
    return-void

    :cond_0
    move v2, v4

    .line 108
    goto :goto_0

    .line 110
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$2;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$200(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/boohee/model/status/StatusUser;

    iget v2, v2, Lcom/boohee/model/status/StatusUser;->id:I

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 111
    iput-boolean v4, v1, Lcom/boohee/model/status/StatusUser;->following:Z

    .line 112
    iget-object v2, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v5, v1, Lcom/boohee/model/status/StatusUser;->following:Z

    if-nez v5, :cond_2

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    :cond_2
    move v3, v4

    goto :goto_2
.end method
