.class Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;
.super Ljava/lang/Object;
.source "UserGuideChooseInterestActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 52
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$000(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/boohee/one/ui/UserGuideRecomandActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 54
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 55
    .local v2, "jsonArray":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$100(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ge v0, v3, :cond_1

    .line 56
    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$100(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 57
    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;
    invoke-static {v3}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$100(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 55
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const-string v4, "tags"

    instance-of v3, v2, Lorg/json/JSONArray;

    if-nez v3, :cond_2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    :goto_1
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 60
    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    invoke-virtual {v3, v1}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->startActivity(Landroid/content/Intent;)V

    .line 61
    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    invoke-virtual {v3}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->finish()V

    .line 62
    return-void

    .line 59
    .restart local v2    # "jsonArray":Lorg/json/JSONArray;
    :cond_2
    check-cast v2, Lorg/json/JSONArray;

    .end local v2    # "jsonArray":Lorg/json/JSONArray;
    invoke-static {v2}, Lcom/newrelic/agent/android/instrumentation/JSONArrayInstrumentation;->toString(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method
