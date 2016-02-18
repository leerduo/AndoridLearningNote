.class Lcom/boohee/one/ui/CheckPhoneActivity$2;
.super Ljava/lang/Object;
.source "CheckPhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/CheckPhoneActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/CheckPhoneActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/CheckPhoneActivity;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 86
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # getter for: Lcom/boohee/one/ui/CheckPhoneActivity;->accountLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$100(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 87
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # getter for: Lcom/boohee/one/ui/CheckPhoneActivity;->passWordLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$200(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # getter for: Lcom/boohee/one/ui/CheckPhoneActivity;->tipText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$300(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # getter for: Lcom/boohee/one/ui/CheckPhoneActivity;->skipTipText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$400(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # getter for: Lcom/boohee/one/ui/CheckPhoneActivity;->alreadyCheckLayout:Landroid/widget/LinearLayout;
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$500(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 91
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # getter for: Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$600(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/view/Menu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # getter for: Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$600(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 93
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$2;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # getter for: Lcom/boohee/one/ui/CheckPhoneActivity;->mMenu:Landroid/view/Menu;
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$600(Lcom/boohee/one/ui/CheckPhoneActivity;)Landroid/view/Menu;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 95
    :cond_0
    return-void
.end method
