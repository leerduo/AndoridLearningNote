.class Lcom/boohee/food/SearchSportActivity$2;
.super Ljava/lang/Object;
.source "SearchSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchSportActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchSportActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/SearchSportActivity;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/boohee/food/SearchSportActivity$2;->this$0:Lcom/boohee/food/SearchSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$2;->this$0:Lcom/boohee/food/SearchSportActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchSportActivity;->et_search:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$2;->this$0:Lcom/boohee/food/SearchSportActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchSportActivity;->ll_result:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$2;->this$0:Lcom/boohee/food/SearchSportActivity;

    iget-object v0, v0, Lcom/boohee/food/SearchSportActivity;->sv_search:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$2;->this$0:Lcom/boohee/food/SearchSportActivity;

    # invokes: Lcom/boohee/food/SearchSportActivity;->loadHistoryData()V
    invoke-static {v0}, Lcom/boohee/food/SearchSportActivity;->access$300(Lcom/boohee/food/SearchSportActivity;)V

    .line 164
    return-void
.end method
