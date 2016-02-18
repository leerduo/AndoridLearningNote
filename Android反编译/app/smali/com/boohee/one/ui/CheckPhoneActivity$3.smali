.class Lcom/boohee/one/ui/CheckPhoneActivity$3;
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
    .line 98
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$3;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 102
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$3;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/boohee/one/ui/CheckPhoneActivity;->setResult(I)V

    .line 103
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$3;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->finish()V

    .line 104
    return-void
.end method
