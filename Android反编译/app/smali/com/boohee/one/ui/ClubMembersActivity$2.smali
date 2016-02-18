.class Lcom/boohee/one/ui/ClubMembersActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "ClubMembersActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ClubMembersActivity;->requestClubMembers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ClubMembersActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ClubMembersActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 75
    iget-object v1, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    const-class v0, Lcom/boohee/model/status/ClubMember;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/status/ClubMember;

    # setter for: Lcom/boohee/one/ui/ClubMembersActivity;->mClubMember:Lcom/boohee/model/status/ClubMember;
    invoke-static {v1, v0}, Lcom/boohee/one/ui/ClubMembersActivity;->access$102(Lcom/boohee/one/ui/ClubMembersActivity;Lcom/boohee/model/status/ClubMember;)Lcom/boohee/model/status/ClubMember;

    .line 76
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->mClubMember:Lcom/boohee/model/status/ClubMember;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubMembersActivity;->access$100(Lcom/boohee/one/ui/ClubMembersActivity;)Lcom/boohee/model/status/ClubMember;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->mClubMember:Lcom/boohee/model/status/ClubMember;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubMembersActivity;->access$100(Lcom/boohee/one/ui/ClubMembersActivity;)Lcom/boohee/model/status/ClubMember;

    move-result-object v0

    iget-object v0, v0, Lcom/boohee/model/status/ClubMember;->club_members:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->mClubMember:Lcom/boohee/model/status/ClubMember;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubMembersActivity;->access$100(Lcom/boohee/one/ui/ClubMembersActivity;)Lcom/boohee/model/status/ClubMember;

    move-result-object v0

    iget-object v0, v0, Lcom/boohee/model/status/ClubMember;->club_members:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->mClubMember:Lcom/boohee/model/status/ClubMember;
    invoke-static {v1}, Lcom/boohee/one/ui/ClubMembersActivity;->access$100(Lcom/boohee/one/ui/ClubMembersActivity;)Lcom/boohee/model/status/ClubMember;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/status/ClubMember;->club_members:Ljava/util/List;

    # setter for: Lcom/boohee/one/ui/ClubMembersActivity;->members:Ljava/util/List;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/ClubMembersActivity;->access$002(Lcom/boohee/one/ui/ClubMembersActivity;Ljava/util/List;)Ljava/util/List;

    .line 78
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->lv_circle_members:Landroid/widget/ListView;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubMembersActivity;->access$200(Lcom/boohee/one/ui/ClubMembersActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/ui/adapter/CircleMembersAdapter;

    iget-object v2, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/ClubMembersActivity;->ctx:Landroid/content/Context;

    iget-object v3, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    # getter for: Lcom/boohee/one/ui/ClubMembersActivity;->mClubMember:Lcom/boohee/model/status/ClubMember;
    invoke-static {v3}, Lcom/boohee/one/ui/ClubMembersActivity;->access$100(Lcom/boohee/one/ui/ClubMembersActivity;)Lcom/boohee/model/status/ClubMember;

    move-result-object v3

    iget-object v3, v3, Lcom/boohee/model/status/ClubMember;->club_members:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/boohee/one/ui/adapter/CircleMembersAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 85
    iget-object v0, p0, Lcom/boohee/one/ui/ClubMembersActivity$2;->this$0:Lcom/boohee/one/ui/ClubMembersActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/ClubMembersActivity;->dismissLoading()V

    .line 86
    return-void
.end method
