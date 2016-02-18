.class Lcom/boohee/one/ui/AppRecommendActivity$2;
.super Ljava/lang/Object;
.source "AppRecommendActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/AppRecommendActivity;->initAppRecommendView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/AppRecommendActivity;

.field final synthetic val$adapter:Lcom/boohee/one/ui/AppRecommendListAdapter;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/AppRecommendActivity;Lcom/boohee/one/ui/AppRecommendListAdapter;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/boohee/one/ui/AppRecommendActivity$2;->this$0:Lcom/boohee/one/ui/AppRecommendActivity;

    iput-object p2, p0, Lcom/boohee/one/ui/AppRecommendActivity$2;->val$adapter:Lcom/boohee/one/ui/AppRecommendListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
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
    .line 74
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/boohee/one/ui/AppRecommendActivity$2;->val$adapter:Lcom/boohee/one/ui/AppRecommendListAdapter;

    invoke-virtual {v1, p3}, Lcom/boohee/one/ui/AppRecommendListAdapter;->getItem(I)Lcom/boohee/model/AppRecommend;

    move-result-object v1

    iget-object v1, v1, Lcom/boohee/model/AppRecommend;->url:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 76
    iget-object v1, p0, Lcom/boohee/one/ui/AppRecommendActivity$2;->this$0:Lcom/boohee/one/ui/AppRecommendActivity;

    invoke-virtual {v1, v0}, Lcom/boohee/one/ui/AppRecommendActivity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
