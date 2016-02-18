.class Lcom/boohee/one/ui/CheckPhoneActivity$1;
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
    .line 74
    iput-object p1, p0, Lcom/boohee/one/ui/CheckPhoneActivity$1;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/boohee/one/ui/CheckPhoneActivity$1;->this$0:Lcom/boohee/one/ui/CheckPhoneActivity;

    # invokes: Lcom/boohee/one/ui/CheckPhoneActivity;->getCode()V
    invoke-static {v0}, Lcom/boohee/one/ui/CheckPhoneActivity;->access$000(Lcom/boohee/one/ui/CheckPhoneActivity;)V

    .line 79
    return-void
.end method
