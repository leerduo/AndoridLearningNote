.class Lcom/boohee/one/easemob/ChatActivity$2;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Lcom/easemob/EMCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/easemob/ChatActivity;->onCreate(Landroid/os/Bundle;)V
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
    .line 211
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$2;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$2;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-virtual {v0}, Lcom/boohee/one/easemob/ChatActivity;->dismissLoading()V

    .line 220
    return-void
.end method

.method public onProgress(ILjava/lang/String;)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 225
    return-void
.end method

.method public onSuccess()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$2;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-virtual {v0}, Lcom/boohee/one/easemob/ChatActivity;->dismissLoading()V

    .line 215
    return-void
.end method
