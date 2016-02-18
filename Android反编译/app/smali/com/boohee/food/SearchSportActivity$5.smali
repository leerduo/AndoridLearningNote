.class Lcom/boohee/food/SearchSportActivity$5;
.super Ljava/lang/Object;
.source "SearchSportActivity.java"

# interfaces
.implements Lcom/boohee/one/ui/fragment/BaseDialogFragment$onChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchSportActivity;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 374
    iput-object p1, p0, Lcom/boohee/food/SearchSportActivity$5;->this$0:Lcom/boohee/food/SearchSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$5;->this$0:Lcom/boohee/food/SearchSportActivity;

    invoke-virtual {v0}, Lcom/boohee/food/SearchSportActivity;->finish()V

    .line 378
    return-void
.end method
