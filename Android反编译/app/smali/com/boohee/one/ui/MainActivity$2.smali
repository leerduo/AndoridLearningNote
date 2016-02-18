.class Lcom/boohee/one/ui/MainActivity$2;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MainActivity;->showAvatarInToolBar()V
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
    .line 188
    iput-object p1, p0, Lcom/boohee/one/ui/MainActivity$2;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 191
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$2;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/ui/MainActivity;->access$000(Lcom/boohee/one/ui/MainActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "other_clickMyPage"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 192
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$2;->this$0:Lcom/boohee/one/ui/MainActivity;

    const-class v2, Lcom/boohee/one/ui/UserSettingActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 194
    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$2;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    return-void
.end method
