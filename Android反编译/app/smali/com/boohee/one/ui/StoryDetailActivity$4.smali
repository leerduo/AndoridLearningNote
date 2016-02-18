.class Lcom/boohee/one/ui/StoryDetailActivity$4;
.super Lcom/boohee/one/http/JsonCallback;
.source "StoryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryDetailActivity;->initCollect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/StoryDetailActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/StoryDetailActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity$4;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 204
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 205
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$4;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # invokes: Lcom/boohee/one/ui/StoryDetailActivity;->refreshCollect(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/StoryDetailActivity;->access$100(Lcom/boohee/one/ui/StoryDetailActivity;Lorg/json/JSONObject;)V

    .line 206
    return-void
.end method

.method public onFinish()V
    .locals 0

    .prologue
    .line 210
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 211
    return-void
.end method
