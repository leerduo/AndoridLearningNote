.class Lcom/boohee/one/ui/BrowserActivity$3;
.super Lcom/boohee/one/http/JsonCallback;
.source "BrowserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/BrowserActivity;->addFavorite()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/BrowserActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/boohee/one/ui/BrowserActivity$3;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 291
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 292
    iget-object v0, p0, Lcom/boohee/one/ui/BrowserActivity$3;->this$0:Lcom/boohee/one/ui/BrowserActivity;

    # invokes: Lcom/boohee/one/ui/BrowserActivity;->addFavoriteSuccess(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/BrowserActivity;->access$100(Lcom/boohee/one/ui/BrowserActivity;Lorg/json/JSONObject;)V

    .line 293
    return-void
.end method
