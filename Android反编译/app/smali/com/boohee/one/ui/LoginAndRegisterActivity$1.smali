.class Lcom/boohee/one/ui/LoginAndRegisterActivity$1;
.super Ljava/lang/Object;
.source "LoginAndRegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/LoginAndRegisterActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/LoginAndRegisterActivity;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$1;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 111
    iget-object v0, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$1;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->loginBtn:Landroid/widget/Button;
    invoke-static {v0}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$000(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 112
    return-void
.end method
