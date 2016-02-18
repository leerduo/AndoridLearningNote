.class Lcom/boohee/one/ui/StoryCommentActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "StoryCommentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryCommentActivity;->sendComment(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StoryCommentActivity;

.field final synthetic val$content:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StoryCommentActivity;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 157
    iput-object p1, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    iput-object p3, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->val$content:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->fail(Ljava/lang/String;)V

    .line 169
    const v0, 0x7f0702fd

    invoke-static {v0}, Lcom/boohee/utils/Helper;->showToast(I)V

    .line 170
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryCommentActivity;->commentEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->val$content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 171
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 160
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 161
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryCommentActivity;->commentEdit:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryCommentActivity;->ctx:Landroid/content/Context;

    iget-object v1, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/StoryCommentActivity;->commentEdit:Landroid/widget/EditText;

    invoke-static {v0, v1}, Lcom/boohee/utils/Keyboard;->close(Landroid/content/Context;Landroid/widget/EditText;)V

    .line 163
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    # invokes: Lcom/boohee/one/ui/StoryCommentActivity;->getComments()V
    invoke-static {v0}, Lcom/boohee/one/ui/StoryCommentActivity;->access$000(Lcom/boohee/one/ui/StoryCommentActivity;)V

    .line 164
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 175
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 176
    iget-object v0, p0, Lcom/boohee/one/ui/StoryCommentActivity$6;->this$0:Lcom/boohee/one/ui/StoryCommentActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/StoryCommentActivity;->dismissLoading()V

    .line 177
    return-void
.end method
