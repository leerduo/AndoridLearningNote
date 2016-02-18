.class Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;
.super Ljava/lang/Thread;
.source "CheckPhoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/CheckPhoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

.field private volatile time:I


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/CheckPhoneActivity;I)V
    .locals 1
    .param p2, "seconds"    # I

    .prologue
    .line 304
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 302
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->time:I

    .line 305
    iput p2, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->time:I

    .line 306
    return-void
.end method

.method static synthetic access$1202(Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;I)I
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;
    .param p1, "x1"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->time:I

    return p1
.end method

.method private revertUI()V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/CheckPhoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-nez v0, :cond_0

    .line 330
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/CheckPhoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread$1;

    invoke-direct {v1, p0}, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread$1;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private setTime(I)V
    .locals 2
    .param p1, "time"    # I

    .prologue
    .line 338
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/CheckPhoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    if-nez v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/CheckPhoneActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v1, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread$2;

    invoke-direct {v1, p0, p1}, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread$2;-><init>(Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;I)V

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/BaseActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 310
    :goto_0
    iget v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->time:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->time:I

    if-lez v0, :cond_0

    .line 311
    iget v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->time:I

    invoke-direct {p0, v0}, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->setTime(I)V

    .line 312
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    const/16 v1, 0x3e8

    # invokes: Lcom/boohee/one/ui/CheckPhoneActivity;->delay(I)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$900(Lcom/boohee/one/ui/CheckPhoneActivity;I)V

    goto :goto_0

    .line 314
    :cond_0
    invoke-direct {p0}, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->revertUI()V

    .line 315
    return-void
.end method

.method public stopTimer()V
    .locals 1

    .prologue
    .line 333
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->time:I

    .line 334
    invoke-virtual {p0}, Lcom/boohee/one/ui/CheckPhoneActivity$TimeThread;->interrupt()V

    .line 335
    return-void
.end method
