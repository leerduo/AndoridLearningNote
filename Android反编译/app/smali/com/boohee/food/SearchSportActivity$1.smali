.class Lcom/boohee/food/SearchSportActivity$1;
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
    .line 151
    iput-object p1, p0, Lcom/boohee/food/SearchSportActivity$1;->this$0:Lcom/boohee/food/SearchSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 154
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$1;->this$0:Lcom/boohee/food/SearchSportActivity;

    # invokes: Lcom/boohee/food/SearchSportActivity;->doSearch()V
    invoke-static {v0}, Lcom/boohee/food/SearchSportActivity;->access$200(Lcom/boohee/food/SearchSportActivity;)V

    .line 155
    return-void
.end method
