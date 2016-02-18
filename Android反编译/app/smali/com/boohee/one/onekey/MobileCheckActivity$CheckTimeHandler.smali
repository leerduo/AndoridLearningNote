.class Lcom/boohee/one/onekey/MobileCheckActivity$CheckTimeHandler;
.super Landroid/os/Handler;
.source "MobileCheckActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/onekey/MobileCheckActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckTimeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/MobileCheckActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/MobileCheckActivity;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/boohee/one/onekey/MobileCheckActivity$CheckTimeHandler;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$CheckTimeHandler;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    # operator-- for: Lcom/boohee/one/onekey/MobileCheckActivity;->mNumber:I
    invoke-static {v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->access$010(Lcom/boohee/one/onekey/MobileCheckActivity;)I

    .line 83
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$CheckTimeHandler;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    # invokes: Lcom/boohee/one/onekey/MobileCheckActivity;->refreshTimeView()V
    invoke-static {v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->access$100(Lcom/boohee/one/onekey/MobileCheckActivity;)V

    .line 84
    return-void
.end method
