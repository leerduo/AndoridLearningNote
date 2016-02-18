.class Lcom/boohee/one/ui/HomeTimelineActivity$2;
.super Lcom/boohee/one/http/JsonCallback;
.source "HomeTimelineActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/HomeTimelineActivity;->refreshUnreadMsg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/HomeTimelineActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/HomeTimelineActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/boohee/one/ui/HomeTimelineActivity$2;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public fail(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 88
    return-void
.end method

.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 79
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 80
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity$2;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    const-string v1, "count"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    # += operator for: Lcom/boohee/one/ui/HomeTimelineActivity;->messageCount:I
    invoke-static {v0, v1}, Lcom/boohee/one/ui/HomeTimelineActivity;->access$112(Lcom/boohee/one/ui/HomeTimelineActivity;I)I

    .line 82
    iget-object v0, p0, Lcom/boohee/one/ui/HomeTimelineActivity$2;->this$0:Lcom/boohee/one/ui/HomeTimelineActivity;

    # invokes: Lcom/boohee/one/ui/HomeTimelineActivity;->updateMessageBager()V
    invoke-static {v0}, Lcom/boohee/one/ui/HomeTimelineActivity;->access$400(Lcom/boohee/one/ui/HomeTimelineActivity;)V

    .line 83
    return-void
.end method
