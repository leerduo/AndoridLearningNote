.class Lcom/boohee/more/FeedbackActivity$6;
.super Lcom/boohee/one/http/JsonCallback;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/FeedbackActivity;->getMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/FeedbackActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/FeedbackActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 343
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity$6;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 346
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 347
    invoke-static {p1}, Lcom/boohee/model/Feedback;->parseFeedbacks(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object v0

    .line 348
    .local v0, "tempDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/Feedback;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 349
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity$6;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 350
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity$6;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 351
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity$6;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->adapter:Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;
    invoke-static {v1}, Lcom/boohee/more/FeedbackActivity;->access$1300(Lcom/boohee/more/FeedbackActivity;)Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->notifyDataSetChanged()V

    .line 352
    iget-object v1, p0, Lcom/boohee/more/FeedbackActivity$6;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->list:Landroid/widget/ListView;
    invoke-static {v1}, Lcom/boohee/more/FeedbackActivity;->access$1400(Lcom/boohee/more/FeedbackActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/more/FeedbackActivity$6;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setSelection(I)V

    .line 354
    :cond_0
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 358
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 359
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$6;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-virtual {v0}, Lcom/boohee/more/FeedbackActivity;->dismissLoading()V

    .line 360
    return-void
.end method
