.class Lcom/boohee/one/ui/SetInvitorActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "SetInvitorActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/SetInvitorActivity;->rightAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/SetInvitorActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/SetInvitorActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/boohee/one/ui/SetInvitorActivity$2;->this$0:Lcom/boohee/one/ui/SetInvitorActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 88
    iget-object v0, p0, Lcom/boohee/one/ui/SetInvitorActivity$2;->this$0:Lcom/boohee/one/ui/SetInvitorActivity;

    # invokes: Lcom/boohee/one/ui/SetInvitorActivity;->goDirect()V
    invoke-static {v0}, Lcom/boohee/one/ui/SetInvitorActivity;->access$000(Lcom/boohee/one/ui/SetInvitorActivity;)V

    .line 89
    return-void
.end method
