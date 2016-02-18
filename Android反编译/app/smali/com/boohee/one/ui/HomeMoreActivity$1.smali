.class Lcom/boohee/one/ui/HomeMoreActivity$1;
.super Ljava/lang/Object;
.source "HomeMoreActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/HomeMoreActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/HomeMoreActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/HomeMoreActivity;)V
    .locals 0

    .prologue
    .line 63
    iput-object p1, p0, Lcom/boohee/one/ui/HomeMoreActivity$1;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "arg2"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/boohee/one/ui/HomeMoreActivity$1;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->events:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/ui/HomeMoreActivity;->access$000(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/util/List;

    move-result-object v2

    add-int/lit8 v3, p3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Event;

    .line 68
    .local v0, "event":Lcom/boohee/model/Event;
    iget-object v2, p0, Lcom/boohee/one/ui/HomeMoreActivity$1;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/HomeMoreActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    iget-object v3, v0, Lcom/boohee/model/Event;->url:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/boohee/utility/BooheeScheme;->handleUrl(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/boohee/model/Event;->url:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 69
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/HomeMoreActivity$1;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/HomeMoreActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/one/ui/BrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "title"

    iget-object v3, v0, Lcom/boohee/model/Event;->title:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 71
    const-string v2, "url"

    iget-object v3, v0, Lcom/boohee/model/Event;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 72
    iget-object v2, p0, Lcom/boohee/one/ui/HomeMoreActivity$1;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    invoke-virtual {v2, v1}, Lcom/boohee/one/ui/HomeMoreActivity;->startActivity(Landroid/content/Intent;)V

    .line 74
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method
