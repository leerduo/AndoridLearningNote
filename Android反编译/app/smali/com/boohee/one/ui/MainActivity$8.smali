.class Lcom/boohee/one/ui/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MainActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MainActivity;)V
    .locals 0

    .prologue
    .line 407
    iput-object p1, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 410
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    new-instance v1, Lcom/boohee/myview/BadgeView;

    iget-object v2, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    const v4, 0x7f0e07c3

    invoke-virtual {v3, v4}, Lcom/boohee/one/ui/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    # setter for: Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/MainActivity;->access$702(Lcom/boohee/one/ui/MainActivity;Lcom/boohee/myview/BadgeView;)Lcom/boohee/myview/BadgeView;

    .line 411
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$700(Lcom/boohee/one/ui/MainActivity;)Lcom/boohee/myview/BadgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BadgeView;->setBadgeBackgroundColor(I)V

    .line 412
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$700(Lcom/boohee/one/ui/MainActivity;)Lcom/boohee/myview/BadgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BadgeView;->setTextColor(I)V

    .line 413
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->messageCount:I
    invoke-static {v1}, Lcom/boohee/one/ui/MainActivity;->access$500(Lcom/boohee/one/ui/MainActivity;)I

    move-result v1

    # invokes: Lcom/boohee/one/ui/MainActivity;->updateMessageBager(I)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/MainActivity;->access$600(Lcom/boohee/one/ui/MainActivity;I)V

    .line 414
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->messageCount:I
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$500(Lcom/boohee/one/ui/MainActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    .line 415
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/one/ui/MainActivity;->messageCount:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/MainActivity;->access$502(Lcom/boohee/one/ui/MainActivity;I)I

    .line 416
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    # invokes: Lcom/boohee/one/ui/MainActivity;->refreshUnreadMsg()V
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$800(Lcom/boohee/one/ui/MainActivity;)V

    .line 417
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$8;->this$0:Lcom/boohee/one/ui/MainActivity;

    # invokes: Lcom/boohee/one/ui/MainActivity;->getApnUnread()V
    invoke-static {v0}, Lcom/boohee/one/ui/MainActivity;->access$900(Lcom/boohee/one/ui/MainActivity;)V

    .line 419
    :cond_0
    return-void
.end method
