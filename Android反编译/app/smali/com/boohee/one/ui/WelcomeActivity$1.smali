.class Lcom/boohee/one/ui/WelcomeActivity$1;
.super Ljava/lang/Object;
.source "WelcomeActivity.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WelcomeActivity;->requestJson()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WelcomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WelcomeActivity;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/boohee/one/ui/WelcomeActivity$1;->this$0:Lcom/boohee/one/ui/WelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 51
    check-cast p1, Ljava/lang/String;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/WelcomeActivity$1;->onResponse(Ljava/lang/String;)V

    return-void
.end method

.method public onResponse(Ljava/lang/String;)V
    .locals 4
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 56
    :try_start_0
    invoke-static {p1}, Lcom/boohee/model/club/Story;->parseStory(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 57
    .local v1, "stories":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Story;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 58
    iget-object v2, p0, Lcom/boohee/one/ui/WelcomeActivity$1;->this$0:Lcom/boohee/one/ui/WelcomeActivity;

    # getter for: Lcom/boohee/one/ui/WelcomeActivity;->mDataList:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/ui/WelcomeActivity;->access$000(Lcom/boohee/one/ui/WelcomeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 59
    iget-object v2, p0, Lcom/boohee/one/ui/WelcomeActivity$1;->this$0:Lcom/boohee/one/ui/WelcomeActivity;

    # getter for: Lcom/boohee/one/ui/WelcomeActivity;->mDataList:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/ui/WelcomeActivity;->access$000(Lcom/boohee/one/ui/WelcomeActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v2, p0, Lcom/boohee/one/ui/WelcomeActivity$1;->this$0:Lcom/boohee/one/ui/WelcomeActivity;

    # getter for: Lcom/boohee/one/ui/WelcomeActivity;->mAdapter:Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;
    invoke-static {v2}, Lcom/boohee/one/ui/WelcomeActivity;->access$100(Lcom/boohee/one/ui/WelcomeActivity;)Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/ui/WelcomeActivity$StoryAdapter;->notifyDataSetChanged()V

    .line 62
    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .end local v1    # "stories":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/club/Story;>;"
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/ui/WelcomeActivity$1;->this$0:Lcom/boohee/one/ui/WelcomeActivity;

    const/4 v3, 0x0

    # invokes: Lcom/boohee/one/ui/WelcomeActivity;->setRefresh(Z)V
    invoke-static {v2, v3}, Lcom/boohee/one/ui/WelcomeActivity;->access$200(Lcom/boohee/one/ui/WelcomeActivity;Z)V

    .line 69
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
