.class Lcom/boohee/one/ui/StoryDetailActivity$5;
.super Lcom/boohee/one/http/JsonCallback;
.source "StoryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryDetailActivity;->addFavorite()V
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
    .line 247
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity$5;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 250
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 251
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$5;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # invokes: Lcom/boohee/one/ui/StoryDetailActivity;->addFavoriteSuccess(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/StoryDetailActivity;->access$200(Lcom/boohee/one/ui/StoryDetailActivity;Lorg/json/JSONObject;)V

    .line 252
    return-void
.end method
