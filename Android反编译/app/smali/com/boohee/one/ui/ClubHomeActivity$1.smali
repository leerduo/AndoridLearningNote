.class Lcom/boohee/one/ui/ClubHomeActivity$1;
.super Ljava/lang/Object;
.source "ClubHomeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ClubHomeActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ClubHomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ClubHomeActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    new-instance v1, Lcom/boohee/myview/BadgeView;

    iget-object v2, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    iget-object v3, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    const v4, 0x7f0e07c3

    invoke-virtual {v3, v4}, Lcom/boohee/one/ui/ClubHomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/boohee/myview/BadgeView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    # setter for: Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/ClubHomeActivity;->access$002(Lcom/boohee/one/ui/ClubHomeActivity;Lcom/boohee/myview/BadgeView;)Lcom/boohee/myview/BadgeView;

    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$000(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/myview/BadgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/ClubHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d012e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BadgeView;->setBadgeBackgroundColor(I)V

    .line 127
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # getter for: Lcom/boohee/one/ui/ClubHomeActivity;->mMessageBadge:Lcom/boohee/myview/BadgeView;
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$000(Lcom/boohee/one/ui/ClubHomeActivity;)Lcom/boohee/myview/BadgeView;

    move-result-object v0

    iget-object v1, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/ClubHomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d00c9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/boohee/myview/BadgeView;->setTextColor(I)V

    .line 128
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # invokes: Lcom/boohee/one/ui/ClubHomeActivity;->refreshUnreadMsg()V
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$100(Lcom/boohee/one/ui/ClubHomeActivity;)V

    .line 129
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$1;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # invokes: Lcom/boohee/one/ui/ClubHomeActivity;->getApnUnread()V
    invoke-static {v0}, Lcom/boohee/one/ui/ClubHomeActivity;->access$200(Lcom/boohee/one/ui/ClubHomeActivity;)V

    .line 130
    return-void
.end method
