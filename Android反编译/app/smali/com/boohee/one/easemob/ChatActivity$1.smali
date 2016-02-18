.class Lcom/boohee/one/easemob/ChatActivity$1;
.super Landroid/os/Handler;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/easemob/ChatActivity;
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
    .line 173
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$1;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$1;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->micImage:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$100(Lcom/boohee/one/easemob/ChatActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/easemob/ChatActivity$1;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->micImages:[Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/boohee/one/easemob/ChatActivity;->access$000(Lcom/boohee/one/easemob/ChatActivity;)[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    return-void
.end method
