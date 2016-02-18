.class Lcom/boohee/one/ui/SelectClubActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "SelectClubActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SelectClubActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SelectClubActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SelectClubActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 139
    iput-object p1, p0, Lcom/boohee/one/ui/SelectClubActivity$3;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 5
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 142
    iget-object v3, p0, Lcom/boohee/one/ui/SelectClubActivity$3;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/boohee/one/ui/SelectClubActivity;->setResult(I)V

    .line 143
    iget-object v3, p0, Lcom/boohee/one/ui/SelectClubActivity$3;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    # getter for: Lcom/boohee/one/ui/SelectClubActivity;->mSelectList:Ljava/util/List;
    invoke-static {v3}, Lcom/boohee/one/ui/SelectClubActivity;->access$300(Lcom/boohee/one/ui/SelectClubActivity;)Ljava/util/List;

    move-result-object v3

    if-nez v3, :cond_1

    .line 144
    const/4 v2, 0x0

    .line 145
    .local v2, "memberCount":I
    # getter for: Lcom/boohee/one/ui/SelectClubActivity;->mDataList:Ljava/util/List;
    invoke-static {}, Lcom/boohee/one/ui/SelectClubActivity;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/club/Club;

    .line 146
    .local v0, "club":Lcom/boohee/model/club/Club;
    iget v3, v0, Lcom/boohee/model/club/Club;->members_count:I

    add-int/2addr v2, v3

    .line 147
    goto :goto_0

    .line 148
    .end local v0    # "club":Lcom/boohee/model/club/Club;
    :cond_0
    iget-object v3, p0, Lcom/boohee/one/ui/SelectClubActivity$3;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    invoke-static {v3, v2}, Lcom/boohee/one/ui/SelectClubSuccessActivity;->comeOnBaby(Landroid/app/Activity;I)V

    .line 150
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "memberCount":I
    :cond_1
    iget-object v3, p0, Lcom/boohee/one/ui/SelectClubActivity$3;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    invoke-virtual {v3}, Lcom/boohee/one/ui/SelectClubActivity;->finish()V

    .line 151
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/boohee/one/ui/SelectClubActivity$3;->this$0:Lcom/boohee/one/ui/SelectClubActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/SelectClubActivity;->dismissLoading()V

    .line 156
    return-void
.end method
