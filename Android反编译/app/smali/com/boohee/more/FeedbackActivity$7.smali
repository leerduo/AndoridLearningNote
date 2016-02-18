.class Lcom/boohee/more/FeedbackActivity$7;
.super Ljava/util/TimerTask;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/FeedbackActivity;->startTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/FeedbackActivity;)V
    .locals 0

    .prologue
    .line 366
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity$7;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$7;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v0}, Lcom/boohee/more/FeedbackActivity;->getMessage()V

    .line 370
    const-string v0, "TED"

    const-string v1, "Timer is run ..."

    invoke-static {v0, v1}, Lcom/boohee/utils/Helper;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    return-void
.end method
