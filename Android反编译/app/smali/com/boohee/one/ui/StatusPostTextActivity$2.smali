.class Lcom/boohee/one/ui/StatusPostTextActivity$2;
.super Ljava/lang/Object;
.source "StatusPostTextActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/StatusPostTextActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StatusPostTextActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StatusPostTextActivity;)V
    .locals 0

    .prologue
    .line 478
    iput-object p1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$2;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 481
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    .line 483
    .local v0, "baseNFId":I
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$2;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->startSend(I)V
    invoke-static {v1, v0}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$600(Lcom/boohee/one/ui/StatusPostTextActivity;I)V

    .line 485
    iget-object v1, p0, Lcom/boohee/one/ui/StatusPostTextActivity$2;->this$0:Lcom/boohee/one/ui/StatusPostTextActivity;

    # invokes: Lcom/boohee/one/ui/StatusPostTextActivity;->sendPost(I)V
    invoke-static {v1, v0}, Lcom/boohee/one/ui/StatusPostTextActivity;->access$700(Lcom/boohee/one/ui/StatusPostTextActivity;I)V

    .line 486
    return-void
.end method
