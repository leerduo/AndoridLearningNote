.class Lcom/boohee/one/ui/StoryDetailActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "StoryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryDetailActivity;->initPraiseAndComment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StoryDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 178
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 179
    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    const-class v0, Lcom/boohee/model/StoryInfo;

    invoke-static {p1, v0}, Lcom/boohee/utils/FastJsonUtils;->fromJson(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/StoryInfo;

    # setter for: Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;
    invoke-static {v1, v0}, Lcom/boohee/one/ui/StoryDetailActivity;->access$002(Lcom/boohee/one/ui/StoryDetailActivity;Lcom/boohee/model/StoryInfo;)Lcom/boohee/model/StoryInfo;

    .line 180
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # getter for: Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;
    invoke-static {v0}, Lcom/boohee/one/ui/StoryDetailActivity;->access$000(Lcom/boohee/one/ui/StoryDetailActivity;)Lcom/boohee/model/StoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryDetailActivity;->tvComment:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # getter for: Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;
    invoke-static {v1}, Lcom/boohee/one/ui/StoryDetailActivity;->access$000(Lcom/boohee/one/ui/StoryDetailActivity;)Lcom/boohee/model/StoryInfo;

    move-result-object v1

    iget v1, v1, Lcom/boohee/model/StoryInfo;->comment_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryDetailActivity;->cbPraise:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # getter for: Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;
    invoke-static {v1}, Lcom/boohee/one/ui/StoryDetailActivity;->access$000(Lcom/boohee/one/ui/StoryDetailActivity;)Lcom/boohee/model/StoryInfo;

    move-result-object v1

    iget v1, v1, Lcom/boohee/model/StoryInfo;->envious_count:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # getter for: Lcom/boohee/one/ui/StoryDetailActivity;->storyInfo:Lcom/boohee/model/StoryInfo;
    invoke-static {v0}, Lcom/boohee/one/ui/StoryDetailActivity;->access$000(Lcom/boohee/one/ui/StoryDetailActivity;)Lcom/boohee/model/StoryInfo;

    move-result-object v0

    iget-boolean v0, v0, Lcom/boohee/model/StoryInfo;->feedback:Z

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$3;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryDetailActivity;->cbPraise:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 187
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 191
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 192
    return-void
.end method
