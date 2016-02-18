.class Lcom/boohee/one/ui/StoryDetailActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "StoryDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/StoryDetailActivity;->deleteFavorite()V
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
    .line 267
    iput-object p1, p0, Lcom/boohee/one/ui/StoryDetailActivity$6;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 270
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 271
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$6;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    # setter for: Lcom/boohee/one/ui/StoryDetailActivity;->isFavorite:Z
    invoke-static {v0, v1}, Lcom/boohee/one/ui/StoryDetailActivity;->access$302(Lcom/boohee/one/ui/StoryDetailActivity;Z)Z

    .line 272
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$6;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryDetailActivity;->cbCollect:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 273
    iget-object v0, p0, Lcom/boohee/one/ui/StoryDetailActivity$6;->this$0:Lcom/boohee/one/ui/StoryDetailActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/StoryDetailActivity;->cbCollect:Landroid/widget/CheckBox;

    const-string v1, "\u6536\u85cf"

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 274
    return-void
.end method
