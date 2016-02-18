.class Lcom/boohee/one/easemob/ChatActivity$5;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/easemob/ChatActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/easemob/ChatActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/easemob/ChatActivity;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$5;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 335
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 330
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$5;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->btnMore:Landroid/widget/Button;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$700(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$5;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->buttonSend:Landroid/view/View;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$800(Lcom/boohee/one/easemob/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :goto_0
    return-void

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$5;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->btnMore:Landroid/widget/Button;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$700(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$5;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->buttonSend:Landroid/view/View;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$800(Lcom/boohee/one/easemob/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
