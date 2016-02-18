.class Lcom/boohee/food/ListUploadActivity$1;
.super Ljava/lang/Object;
.source "ListUploadActivity.java"

# interfaces
.implements Lcom/boohee/widgets/BooheeListView$OnLoadMoreListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/ListUploadActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/ListUploadActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/ListUploadActivity;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/food/ListUploadActivity$1;->this$0:Lcom/boohee/food/ListUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/boohee/food/ListUploadActivity$1;->this$0:Lcom/boohee/food/ListUploadActivity;

    # invokes: Lcom/boohee/food/ListUploadActivity;->sendRequestUpload()V
    invoke-static {v0}, Lcom/boohee/food/ListUploadActivity;->access$000(Lcom/boohee/food/ListUploadActivity;)V

    .line 54
    return-void
.end method
