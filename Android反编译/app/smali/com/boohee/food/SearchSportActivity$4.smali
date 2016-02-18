.class Lcom/boohee/food/SearchSportActivity$4;
.super Ljava/lang/Object;
.source "SearchSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/SearchSportActivity;->initHistory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchSportActivity;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/boohee/food/SearchSportActivity;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 292
    iput-object p1, p0, Lcom/boohee/food/SearchSportActivity$4;->this$0:Lcom/boohee/food/SearchSportActivity;

    iput-object p2, p0, Lcom/boohee/food/SearchSportActivity$4;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$4;->this$0:Lcom/boohee/food/SearchSportActivity;

    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity$4;->val$title:Ljava/lang/String;

    # setter for: Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/food/SearchSportActivity;->access$702(Lcom/boohee/food/SearchSportActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 297
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$4;->this$0:Lcom/boohee/food/SearchSportActivity;

    iget-object v1, p0, Lcom/boohee/food/SearchSportActivity$4;->this$0:Lcom/boohee/food/SearchSportActivity;

    # getter for: Lcom/boohee/food/SearchSportActivity;->mQueryString:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/food/SearchSportActivity;->access$700(Lcom/boohee/food/SearchSportActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boohee/food/SearchSportActivity;->doFastSearch(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boohee/food/SearchSportActivity;->access$800(Lcom/boohee/food/SearchSportActivity;Ljava/lang/String;)V

    .line 298
    return-void
.end method
