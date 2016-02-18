.class Lcom/boohee/one/ui/MainActivity$9;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MainActivity;->doLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MainActivity;)V
    .locals 0

    .prologue
    .line 469
    iput-object p1, p0, Lcom/boohee/one/ui/MainActivity$9;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 472
    invoke-static {}, Lcom/boohee/utils/AccountUtils;->logout()V

    .line 476
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$9;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-static {v0}, Lcom/boohee/one/ui/WelcomeActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 477
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$9;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/MainActivity;->finish()V

    .line 478
    return-void
.end method
