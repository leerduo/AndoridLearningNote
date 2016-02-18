.class Lcom/boohee/more/PasscodeActivity$1;
.super Ljava/lang/Object;
.source "PasscodeActivity.java"

# interfaces
.implements Lcom/boohee/myview/PasscodeView$OnPasswordCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/PasscodeActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/PasscodeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/PasscodeActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/boohee/more/PasscodeActivity$1;->this$0:Lcom/boohee/more/PasscodeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPasswordComplete(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 55
    const-string v0, "com.boohee.one.action.PASSWORD_OPEN"

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity$1;->this$0:Lcom/boohee/more/PasscodeActivity;

    # getter for: Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/more/PasscodeActivity;->access$000(Lcom/boohee/more/PasscodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$1;->this$0:Lcom/boohee/more/PasscodeActivity;

    # invokes: Lcom/boohee/more/PasscodeActivity;->setPasswordOpen(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/boohee/more/PasscodeActivity;->access$100(Lcom/boohee/more/PasscodeActivity;Ljava/lang/String;)V

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v0, "com.boohee.one.action.PASSWORD_CLOSE"

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity$1;->this$0:Lcom/boohee/more/PasscodeActivity;

    # getter for: Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/more/PasscodeActivity;->access$000(Lcom/boohee/more/PasscodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 58
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$1;->this$0:Lcom/boohee/more/PasscodeActivity;

    # invokes: Lcom/boohee/more/PasscodeActivity;->setPasswordClose(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/boohee/more/PasscodeActivity;->access$200(Lcom/boohee/more/PasscodeActivity;Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :cond_2
    const-string v0, "com.boohee.one.action.PASSWORD_INPUT"

    iget-object v1, p0, Lcom/boohee/more/PasscodeActivity$1;->this$0:Lcom/boohee/more/PasscodeActivity;

    # getter for: Lcom/boohee/more/PasscodeActivity;->action:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/more/PasscodeActivity;->access$000(Lcom/boohee/more/PasscodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/boohee/more/PasscodeActivity$1;->this$0:Lcom/boohee/more/PasscodeActivity;

    # invokes: Lcom/boohee/more/PasscodeActivity;->setPasswordInput(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/boohee/more/PasscodeActivity;->access$300(Lcom/boohee/more/PasscodeActivity;Ljava/lang/String;)V

    goto :goto_0
.end method
