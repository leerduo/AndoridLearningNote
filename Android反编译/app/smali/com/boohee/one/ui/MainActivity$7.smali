.class Lcom/boohee/one/ui/MainActivity$7;
.super Lcom/boohee/one/http/JsonCallback;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MainActivity;->getApnUnread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MainActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 372
    iput-object p1, p0, Lcom/boohee/one/ui/MainActivity$7;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 384
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 375
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 376
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$7;->this$0:Lcom/boohee/one/ui/MainActivity;

    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    # += operator for: Lcom/boohee/one/ui/MainActivity;->messageCount:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/MainActivity;->access$512(Lcom/boohee/one/ui/MainActivity;I)I

    .line 378
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$7;->this$0:Lcom/boohee/one/ui/MainActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/MainActivity$7;->this$0:Lcom/boohee/one/ui/MainActivity;

    # getter for: Lcom/boohee/one/ui/MainActivity;->messageCount:I
    invoke-static {v1}, Lcom/boohee/one/ui/MainActivity;->access$500(Lcom/boohee/one/ui/MainActivity;)I

    move-result v1

    # invokes: Lcom/boohee/one/ui/MainActivity;->updateMessageBager(I)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/MainActivity;->access$600(Lcom/boohee/one/ui/MainActivity;I)V

    .line 379
    return-void
.end method
