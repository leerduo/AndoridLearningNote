.class Lcom/boohee/one/ui/HomeMoreActivity$3;
.super Ljava/lang/Object;
.source "HomeMoreActivity.java"

# interfaces
.implements Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnLastItemVisibleListener;


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
    .line 85
    iput-object p1, p0, Lcom/boohee/one/ui/HomeMoreActivity$3;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLastItemVisible()V
    .locals 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/boohee/one/ui/HomeMoreActivity$3;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    iget-object v1, p0, Lcom/boohee/one/ui/HomeMoreActivity$3;->this$0:Lcom/boohee/one/ui/HomeMoreActivity;

    # getter for: Lcom/boohee/one/ui/HomeMoreActivity;->more_url:Ljava/lang/String;
    invoke-static {v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$200(Lcom/boohee/one/ui/HomeMoreActivity;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/boohee/one/ui/HomeMoreActivity;->getData(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/boohee/one/ui/HomeMoreActivity;->access$300(Lcom/boohee/one/ui/HomeMoreActivity;Ljava/lang/String;)V

    .line 90
    return-void
.end method
