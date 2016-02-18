.class Lcom/boohee/food/SearchSportActivity$SearchOnEditorActionListener;
.super Ljava/lang/Object;
.source "SearchSportActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/food/SearchSportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchOnEditorActionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/SearchSportActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/food/SearchSportActivity;)V
    .locals 0

    .prologue
    .line 403
    iput-object p1, p0, Lcom/boohee/food/SearchSportActivity$SearchOnEditorActionListener;->this$0:Lcom/boohee/food/SearchSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/food/SearchSportActivity;Lcom/boohee/food/SearchSportActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/food/SearchSportActivity;
    .param p2, "x1"    # Lcom/boohee/food/SearchSportActivity$1;

    .prologue
    .line 403
    invoke-direct {p0, p1}, Lcom/boohee/food/SearchSportActivity$SearchOnEditorActionListener;-><init>(Lcom/boohee/food/SearchSportActivity;)V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 406
    iget-object v0, p0, Lcom/boohee/food/SearchSportActivity$SearchOnEditorActionListener;->this$0:Lcom/boohee/food/SearchSportActivity;

    # invokes: Lcom/boohee/food/SearchSportActivity;->doSearch()V
    invoke-static {v0}, Lcom/boohee/food/SearchSportActivity;->access$200(Lcom/boohee/food/SearchSportActivity;)V

    .line 407
    const/4 v0, 0x1

    return v0
.end method
