.class Lcom/boohee/one/onekey/MobileCheckActivity$4;
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
    .line 224
    iput-object p1, p0, Lcom/boohee/one/onekey/MobileCheckActivity$4;->this$0:Lcom/boohee/one/onekey/MobileCheckActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 227
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 228
    return-void
.end method
