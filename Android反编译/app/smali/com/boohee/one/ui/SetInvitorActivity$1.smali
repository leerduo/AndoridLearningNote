.class Lcom/boohee/one/ui/SetInvitorActivity$1;
.super Ljava/lang/Object;
.source "SetInvitorActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SetInvitorActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SetInvitorActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SetInvitorActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/boohee/one/ui/SetInvitorActivity$1;->this$0:Lcom/boohee/one/ui/SetInvitorActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 50
    iget-object v0, p0, Lcom/boohee/one/ui/SetInvitorActivity$1;->this$0:Lcom/boohee/one/ui/SetInvitorActivity;

    # invokes: Lcom/boohee/one/ui/SetInvitorActivity;->goDirect()V
    invoke-static {v0}, Lcom/boohee/one/ui/SetInvitorActivity;->access$000(Lcom/boohee/one/ui/SetInvitorActivity;)V

    .line 51
    return-void
.end method
