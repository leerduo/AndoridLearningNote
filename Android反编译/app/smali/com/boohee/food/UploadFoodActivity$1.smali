.class Lcom/boohee/food/UploadFoodActivity$1;
.super Ljava/lang/Object;
.source "UploadFoodActivity.java"

# interfaces
.implements Lboohee/lib/uploader/OnUploadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/UploadFoodActivity;->uploadFood()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/UploadFoodActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/UploadFoodActivity;)V
    .locals 0

    .prologue
    .line 192
    iput-object p1, p0, Lcom/boohee/food/UploadFoodActivity$1;->this$0:Lcom/boohee/food/UploadFoodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity$1;->this$0:Lcom/boohee/food/UploadFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/UploadFoodActivity;->dismissLoading()V

    .line 211
    return-void
.end method

.method public onProgress(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 196
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity$1;->this$0:Lcom/boohee/food/UploadFoodActivity;

    invoke-virtual {v0}, Lcom/boohee/food/UploadFoodActivity;->showLoading()V

    .line 201
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lboohee/lib/uploader/model/Picture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lboohee/lib/uploader/model/Picture;>;"
    iget-object v0, p0, Lcom/boohee/food/UploadFoodActivity$1;->this$0:Lcom/boohee/food/UploadFoodActivity;

    # invokes: Lcom/boohee/food/UploadFoodActivity;->uploadToServer(Ljava/util/List;)V
    invoke-static {v0, p1}, Lcom/boohee/food/UploadFoodActivity;->access$000(Lcom/boohee/food/UploadFoodActivity;Ljava/util/List;)V

    .line 206
    return-void
.end method
