.class Lcom/boohee/one/ui/UserGuideRecomandActivity$1;
.super Ljava/lang/Object;
.source "UserGuideRecomandActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 60
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    if-nez v2, :cond_0

    .line 96
    :goto_0
    return-void

    .line 66
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v1, "tempList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 68
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_2
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # setter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v2, v1}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$002(Lcom/boohee/one/ui/UserGuideRecomandActivity;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 74
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_3

    .line 75
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$100(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "\u8bf7\u9009\u62e9\u4e00\u4f4d\u7528\u6237\uff01"

    invoke-static {v2, v3}, Lcom/boohee/utils/Helper;->showToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 78
    :cond_3
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->showLoading()V

    .line 79
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/UserGuideRecomandActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->chosenList:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$000(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v4, Lcom/boohee/one/ui/UserGuideRecomandActivity$1$1;

    iget-object v5, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    iget-object v5, v5, Lcom/boohee/one/ui/UserGuideRecomandActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v4, p0, v5}, Lcom/boohee/one/ui/UserGuideRecomandActivity$1$1;-><init>(Lcom/boohee/one/ui/UserGuideRecomandActivity$1;Landroid/content/Context;)V

    invoke-static {v2, v3, v4}, Lcom/boohee/api/OneApi;->createFriendshipList(Landroid/content/Context;Ljava/util/ArrayList;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method
