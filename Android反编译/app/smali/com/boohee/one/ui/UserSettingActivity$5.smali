.class Lcom/boohee/one/ui/UserSettingActivity$5;
.super Ljava/lang/Object;
.source "UserSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserSettingActivity;->doLogout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UserSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UserSettingActivity;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lcom/boohee/one/ui/UserSettingActivity$5;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 253
    invoke-static {}, Lcom/boohee/utils/AccountUtils;->logout()V

    .line 256
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity$5;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/UserSettingActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/one/ui/WelcomeActivity;->comeOnBaby(Landroid/content/Context;)V

    .line 257
    invoke-static {}, Lde/greenrobot/event/EventBus;->getDefault()Lde/greenrobot/event/EventBus;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/event/LogoutEvent;

    invoke-direct {v1}, Lcom/boohee/one/event/LogoutEvent;-><init>()V

    invoke-virtual {v0, v1}, Lde/greenrobot/event/EventBus;->post(Ljava/lang/Object;)V

    .line 258
    iget-object v0, p0, Lcom/boohee/one/ui/UserSettingActivity$5;->this$0:Lcom/boohee/one/ui/UserSettingActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/UserSettingActivity;->finish()V

    .line 259
    return-void
.end method
