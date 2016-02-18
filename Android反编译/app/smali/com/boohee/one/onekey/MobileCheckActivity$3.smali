.class Lcom/boohee/one/onekey/MobileCheckActivity$3;
.super Ljava/lang/Object;
.source "MobileCheckActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/MobileCheckActivity;->showAlertDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/MobileCheckActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/MobileCheckActivity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/boohee/one/onekey/MobileCheckActivity$3;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 220
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$3;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    const/4 v1, 0x1

    # setter for: Lcom/boohee/one/onekey/MobileCheckActivity;->force:I
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/MobileCheckActivity;->access$302(Lcom/boohee/one/onekey/MobileCheckActivity;I)I

    .line 221
    iget-object v0, p0, Lcom/boohee/one/onekey/MobileCheckActivity$3;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    # invokes: Lcom/boohee/one/onekey/MobileCheckActivity;->checkCaptcha()V
    invoke-static {v0}, Lcom/boohee/one/onekey/MobileCheckActivity;->access$400(Lcom/boohee/one/onekey/MobileCheckActivity;)V

    .line 222
    return-void
.end method
