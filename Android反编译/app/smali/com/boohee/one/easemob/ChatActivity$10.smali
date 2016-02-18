.class Lcom/boohee/one/easemob/ChatActivity$10;
.super Ljava/lang/Object;
.source "ChatActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/easemob/ChatActivity;->refreshUI()V
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
    .line 817
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$10;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Lcom/boohee/one/easemob/ChatActivity$10;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    # getter for: Lcom/boohee/one/easemob/ChatActivity;->adapter:Lcom/boohee/one/easemob/adapter/MessageAdapter;
    invoke-static {v0}, Lcom/boohee/one/easemob/ChatActivity;->access$1300(Lcom/boohee/one/easemob/ChatActivity;)Lcom/boohee/one/easemob/adapter/MessageAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/one/easemob/adapter/MessageAdapter;->refresh()V

    .line 820
    return-void
.end method
