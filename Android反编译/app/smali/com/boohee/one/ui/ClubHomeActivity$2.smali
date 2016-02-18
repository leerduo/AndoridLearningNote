.class Lcom/boohee/one/ui/ClubHomeActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "ClubHomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ClubHomeActivity;->refreshUnreadMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ClubHomeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ClubHomeActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 177
    iput-object p1, p0, Lcom/boohee/one/ui/ClubHomeActivity$2;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 180
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 181
    iget-object v0, p0, Lcom/boohee/one/ui/ClubHomeActivity$2;->this$0:Lcom/boohee/one/ui/ClubHomeActivity;

    # invokes: Lcom/boohee/one/ui/ClubHomeActivity;->showBadge(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/ClubHomeActivity;->access$300(Lcom/boohee/one/ui/ClubHomeActivity;Lorg/json/JSONObject;)V

    .line 182
    return-void
.end method
