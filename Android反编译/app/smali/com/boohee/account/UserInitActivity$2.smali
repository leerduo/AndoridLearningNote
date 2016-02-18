.class Lcom/boohee/account/UserInitActivity$2;
.super Landroid/os/Handler;
.source "UserInitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/account/UserInitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/UserInitActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/UserInitActivity;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 210
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 225
    :goto_0
    return-void

    .line 212
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/boohee/account/UserInitActivity;->keepWeight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/boohee/account/UserInitActivity;->access$502(Lcom/boohee/account/UserInitActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 213
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/account/UserInitActivity;->access$600(Lcom/boohee/account/UserInitActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 214
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/account/UserInitActivity;->access$600(Lcom/boohee/account/UserInitActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 215
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/account/UserInitActivity;->access$600(Lcom/boohee/account/UserInitActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 218
    :pswitch_1
    sget-object v0, Lcom/boohee/account/UserInitActivity;->TAG:Ljava/lang/String;

    const-string v1, "keep_weight"

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/boohee/account/UserInitActivity;->keepWeight:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/boohee/account/UserInitActivity;->access$502(Lcom/boohee/account/UserInitActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 220
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/account/UserInitActivity;->access$600(Lcom/boohee/account/UserInitActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 221
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/account/UserInitActivity;->access$600(Lcom/boohee/account/UserInitActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 222
    iget-object v0, p0, Lcom/boohee/account/UserInitActivity$2;->this$0:Lcom/boohee/account/UserInitActivity;

    # getter for: Lcom/boohee/account/UserInitActivity;->menu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/account/UserInitActivity;->access$600(Lcom/boohee/account/UserInitActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 210
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
