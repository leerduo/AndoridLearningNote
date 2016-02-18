.class Lcom/boohee/one/ui/SplashActivity$1;
.super Ljava/lang/Object;
.source "SplashActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/SplashActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SplashActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SplashActivity;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 65
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->count:I
    invoke-static {v0}, Lcom/boohee/one/ui/SplashActivity;->access$000(Lcom/boohee/one/ui/SplashActivity;)I

    move-result v0

    if-lez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->isAd:Z
    invoke-static {v0}, Lcom/boohee/one/ui/SplashActivity;->access$100(Lcom/boohee/one/ui/SplashActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/SplashActivity;->tvTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/SplashActivity;->tvTime:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->count:I
    invoke-static {v1}, Lcom/boohee/one/ui/SplashActivity;->access$000(Lcom/boohee/one/ui/SplashActivity;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->count:I
    invoke-static {v1}, Lcom/boohee/one/ui/SplashActivity;->access$000(Lcom/boohee/one/ui/SplashActivity;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    # setter for: Lcom/boohee/one/ui/SplashActivity;->count:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/SplashActivity;->access$002(Lcom/boohee/one/ui/SplashActivity;I)I

    .line 71
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # getter for: Lcom/boohee/one/ui/SplashActivity;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/boohee/one/ui/SplashActivity;->access$200(Lcom/boohee/one/ui/SplashActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/SplashActivity;->r:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 75
    :goto_0
    return-void

    .line 74
    :cond_1
    iget-object v0, p0, Lcom/boohee/one/ui/SplashActivity$1;->this$0:Lcom/boohee/one/ui/SplashActivity;

    # invokes: Lcom/boohee/one/ui/SplashActivity;->finishToJump()V
    invoke-static {v0}, Lcom/boohee/one/ui/SplashActivity;->access$300(Lcom/boohee/one/ui/SplashActivity;)V

    goto :goto_0
.end method
