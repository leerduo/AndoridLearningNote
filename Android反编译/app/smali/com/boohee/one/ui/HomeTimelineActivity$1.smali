.class Lcom/boohee/one/ui/HomeTimelineActivity$1;
.super Ljava/lang/Object;
.source "HomeTimelineActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/HomeTimelineActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/HomeTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/HomeTimelineActivity;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    new-instance v1, Lcom/boohee/myview/BadgeView;

    iget-object v2, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    const v4, 0x7f0e07c3

    invoke-virtual {v3, v4}, Lcom/boohee/one/ui/HomeTimelineActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    # setter for: Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/HomeTimelineActivity;->access$002(Lcom/boohee/one/ui/HomeTimelineActivity;Lcom/boohee/myview/BadgeView;)Lcom/boohee/myview/BadgeView;

    .line 58
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    # getter for: Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0}, Lcom/boohee/one/ui/HomeTimelineActivity;->access$000(Lcom/boohee/one/ui/HomeTimelineActivity;)Lcom/boohee/myview/BadgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/HomeTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BadgeView;->setBadgeBackgroundColor(I)V

    .line 59
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    # getter for: Lcom/boohee/one/ui/HomeTimelineActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0}, Lcom/boohee/one/ui/HomeTimelineActivity;->access$000(Lcom/boohee/one/ui/HomeTimelineActivity;)Lcom/boohee/myview/BadgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/HomeTimelineActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BadgeView;->setTextColor(I)V

    .line 61
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/HomeTimelineActivity;->access$102(Lcom/boohee/one/ui/HomeTimelineActivity;I)I

    .line 62
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    # invokes: Lcom/boohee/one/ui/HomeTimelineActivity;->refreshUnreadMsg()V
    invoke-static {v0}, Lcom/boohee/one/ui/HomeTimelineActivity;->access$200(Lcom/boohee/one/ui/HomeTimelineActivity;)V

    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity$1;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    # invokes: Lcom/boohee/one/ui/HomeTimelineActivity;->getApnUnread()V
    invoke-static {v0}, Lcom/boohee/one/ui/HomeTimelineActivity;->access$300(Lcom/boohee/one/ui/HomeTimelineActivity;)V

    .line 64
    return-void
.end method
