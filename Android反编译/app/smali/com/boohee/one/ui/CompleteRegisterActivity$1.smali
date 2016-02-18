.class Lcom/boohee/one/ui/CompleteRegisterActivity$1;
.super Ljava/lang/Object;
.source "CompleteRegisterActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/CompleteRegisterActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/CompleteRegisterActivity;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/boohee/one/ui/CompleteRegisterActivity$1;->this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/boohee/one/ui/CompleteRegisterActivity$1;->this$0:Lcom/boohee/one/ui/CompleteRegisterActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/CompleteRegisterActivity;->loginBtn:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 74
    return-void
.end method
