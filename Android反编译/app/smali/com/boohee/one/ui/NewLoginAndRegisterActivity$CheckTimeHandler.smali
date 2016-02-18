.class Lcom/boohee/one/ui/NewLoginAndRegisterActivity$CheckTimeHandler;
.super Landroid/os/Handler;
.source "NewLoginAndRegisterActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/NewLoginAndRegisterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckTimeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$CheckTimeHandler;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 196
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$CheckTimeHandler;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    # operator-- for: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->mNumber:I
    invoke-static {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$010(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)I

    .line 197
    iget-object v0, p0, Lcom/boohee/one/ui/NewLoginAndRegisterActivity$CheckTimeHandler;->this$0:Lcom/boohee/one/ui/NewLoginAndRegisterActivity;

    # invokes: Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->refreshTimeView()V
    invoke-static {v0}, Lcom/boohee/one/ui/NewLoginAndRegisterActivity;->access$100(Lcom/boohee/one/ui/NewLoginAndRegisterActivity;)V

    .line 198
    return-void
.end method
