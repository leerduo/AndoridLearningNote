.class Lcom/boohee/one/easemob/ChatActivity$GroupListener;
.super Lcom/boohee/one/easemob/model/GroupRemoveListener;
.source "ChatActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/easemob/ChatActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/easemob/ChatActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/easemob/ChatActivity;)V
    .locals 0

    .prologue
    .line 1680
    iput-object p1, p0, Lcom/boohee/one/easemob/ChatActivity$GroupListener;->this$0:Lcom/boohee/one/easemob/ChatActivity;

    invoke-direct {p0}, Lcom/boohee/one/easemob/model/GroupRemoveListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupDestroy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 1714
    return-void
.end method

.method public onUserRemoved(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "groupId"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;

    .prologue
    .line 1684
    # getter for: Lcom/boohee/one/easemob/ChatActivity;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/boohee/one/easemob/ChatActivity;->access$1900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUserRemoved!"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 1697
    return-void
.end method
