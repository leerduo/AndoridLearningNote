.class Lcom/boohee/one/ui/SuccessStoryActivity$5;
.super Ljava/lang/Object;
.source "SuccessStoryActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SuccessStoryActivity;->refreshHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SuccessStoryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SuccessStoryActivity;)V
    .locals 0

    .prologue
    .line 177
    iput-object p1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$5;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 180
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$5;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    # getter for: Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;
    invoke-static {v1}, Lcom/boohee/one/ui/SuccessStoryActivity;->access$300(Lcom/boohee/one/ui/SuccessStoryActivity;)Lcom/boohee/model/SuccessStory;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/SuccessStory;->sliders:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/SuccessStory$SlidersEntity;

    iget-object v0, v1, Lcom/boohee/model/SuccessStory$SlidersEntity;->url:Ljava/lang/String;

    .line 181
    .local v0, "url":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 182
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 183
    :cond_0
    const-string v1, "id="

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "story"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$5;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    iget-object v2, v1, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/boohee/utils/TextUtil;->checkId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$5;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    # getter for: Lcom/boohee/one/ui/SuccessStoryActivity;->successStory:Lcom/boohee/model/SuccessStory;
    invoke-static {v1}, Lcom/boohee/one/ui/SuccessStoryActivity;->access$300(Lcom/boohee/one/ui/SuccessStoryActivity;)Lcom/boohee/model/SuccessStory;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/SuccessStory;->sliders:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/SuccessStory$SlidersEntity;

    iget-object v1, v1, Lcom/boohee/model/SuccessStory$SlidersEntity;->title:Ljava/lang/String;

    invoke-static {v2, v0, v3, v1}, Lcom/boohee/one/ui/StoryDetailActivity;->comeOn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 186
    :cond_2
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$5;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 189
    :cond_3
    iget-object v1, p0, Lcom/boohee/one/ui/SuccessStoryActivity$5;->this$0:Lcom/boohee/one/ui/SuccessStoryActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SuccessStoryActivity;->ctx:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    goto :goto_0
.end method
