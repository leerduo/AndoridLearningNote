.class Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;
.super Ljava/lang/Object;
.source "OneKeyContactActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/OneKeyContactActivity$3;->ok(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/boohee/one/onekey/OneKeyContactActivity$3;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/OneKeyContactActivity$3;)V
    .locals 0

    .prologue
    .line 194
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;->this$1:Lcom/boohee/one/onekey/OneKeyContactActivity$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;->this$1:Lcom/boohee/one/onekey/OneKeyContactActivity$3;

    iget-object v0, v0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->isFirst:Z
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$400(Lcom/boohee/one/onekey/OneKeyContactActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;->this$1:Lcom/boohee/one/onekey/OneKeyContactActivity$3;

    iget-object v0, v0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/OneKeyContactActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;->this$1:Lcom/boohee/one/onekey/OneKeyContactActivity$3;

    iget-object v1, v1, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 199
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;->this$1:Lcom/boohee/one/onekey/OneKeyContactActivity$3;

    iget-object v0, v0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->isFirst:Z
    invoke-static {v0, v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$402(Lcom/boohee/one/onekey/OneKeyContactActivity;Z)Z

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;->this$1:Lcom/boohee/one/onekey/OneKeyContactActivity$3;

    iget-object v0, v0, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    iget-object v0, v0, Lcom/boohee/one/onekey/OneKeyContactActivity;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$3$1;->this$1:Lcom/boohee/one/onekey/OneKeyContactActivity$3;

    iget-object v1, v1, Lcom/boohee/one/onekey/OneKeyContactActivity$3;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->selection:I
    invoke-static {v1}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$200(Lcom/boohee/one/onekey/OneKeyContactActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
