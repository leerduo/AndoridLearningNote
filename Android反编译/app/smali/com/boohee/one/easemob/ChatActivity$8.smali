.class Lcom/boohee/one/easemob/ChatActivity$8;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/easemob/EMValueCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/easemob/ChatActivity;->onChatRoomViewCreation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/easemob/EMValueCallBack",
        "<",
        "Lcom/easemob/chat/EMChatRoom;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/easemob/ChatActivity;

.field final synthetic val$pd:Landroid/app/ProgressDialog;


# direct methods
.method constructor <init>(Lcom/boohee/one/easemob/ChatActivity;Landroid/app/ProgressDialog;)V
    .locals 0

    .prologue
    .line 508
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$8;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    iput-object p2, p0, Lcom/boohee/one/easemob/ChatActivity$8;->val$pd:Landroid/app/ProgressDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 3
    .param p1, "error"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 535
    # getter for: Lcom/boohee/one/easemob/ChatActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/boohee/one/easemob/ChatActivity;->access$1900()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "join room failure : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/easemob/util/EMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$8;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    new-instance v1, Lcom/boohee/one/easemob/ChatActivity$8$2;

    invoke-direct {v1, p0}, Lcom/boohee/one/easemob/ChatActivity$8$2;-><init>(Lcom/boohee/one/easemob/ChatActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 542
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$8;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-virtual {v0}, Lcom/boohee/one/easemob/ChatActivity;->finish()V

    .line 543
    return-void
.end method

.method public onSuccess(Lcom/easemob/chat/EMChatRoom;)V
    .locals 2
    .param p1, "value"    # Lcom/easemob/chat/EMChatRoom;

    .prologue
    .line 513
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$8;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    new-instance v1, Lcom/boohee/one/easemob/ChatActivity$8$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/easemob/ChatActivity$8$1;-><init>(Lcom/boohee/one/easemob/ChatActivity$8;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/easemob/ChatActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 530
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 508
    check-cast p1, Lcom/easemob/chat/EMChatRoom;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/boohee/one/easemob/ChatActivity$8;->onSuccess(Lcom/easemob/chat/EMChatRoom;)V

    return-void
.end method
