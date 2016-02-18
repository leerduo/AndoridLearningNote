.class Lcom/boohee/one/easemob/ChatActivity$4;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    .line 302
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$4;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v2, 0x8

    .line 307
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$4;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->more:Landroid/view/View;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$200(Lcom/boohee/one/easemob/ChatActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$4;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_normal:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$300(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$4;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->iv_emoticons_checked:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$400(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 310
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$4;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->emojiIconContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$500(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 311
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$4;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->btnContainer:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$600(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 312
    return-void
.end method
