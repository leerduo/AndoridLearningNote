.class Lcom/boohee/one/ui/AccountSettingActivity$3;
.super Ljava/lang/Object;
.source "AccountSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

.field final synthetic val$conn:Lcom/boohee/model/status/UserConnection;

.field final synthetic val$tmpKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/AccountSettingActivity;Ljava/lang/String;Lcom/boohee/model/status/UserConnection;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/boohee/one/ui/AccountSettingActivity$3;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iput-object p2, p0, Lcom/boohee/one/ui/AccountSettingActivity$3;->val$tmpKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/boohee/one/ui/AccountSettingActivity$3;->val$conn:Lcom/boohee/model/status/UserConnection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 211
    iget-object v0, p0, Lcom/boohee/one/ui/AccountSettingActivity$3;->this$0:Lcom/boohee/one/ui/AccountSettingActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/AccountSettingActivity$3;->val$tmpKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/boohee/one/ui/AccountSettingActivity$3;->val$conn:Lcom/boohee/model/status/UserConnection;

    invoke-virtual {v0, v1, v2}, Lcom/boohee/one/ui/AccountSettingActivity;->deleteConn(Ljava/lang/String;Lcom/boohee/model/status/UserConnection;)V

    .line 212
    return-void
.end method
