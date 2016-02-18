.class Lcom/boohee/one/ui/AccountSettingActivity$4;
.super Ljava/lang/Object;
.source "AccountSettingActivity.java"

# interfaces
.implements Lcom/boohee/utils/ThirdLoginHelper$OnQQAuthFinishListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/AccountSettingActivity;->clickAuthStatusItem(Lcom/boohee/model/status/UserConnection;Lcom/umeng/socialize/bean/SHARE_MEDIA;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/AccountSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/AccountSettingActivity;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/boohee/one/ui/AccountSettingActivity$4;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQQAuthFinish(Z)V
    .locals 1
    .param p1, "isSuccess"    # Z

    .prologue
    .line 219
    if-eqz p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$4;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    # invokes: Lcom/boohee/one/ui/AccountSettingActivity;->getUserConnections()V
    invoke-static {v0}, Lcom/boohee/one/ui/AccountSettingActivity;->access$000(Lcom/boohee/one/ui/AccountSettingActivity;)V

    .line 222
    :cond_0
    return-void
.end method
