.class Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;
.super Lcom/boohee/one/http/JsonCallback;
.source "WagerWeightPicUploadActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->loadUpdatedData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    invoke-direct {p0, p2}, Lcom/boohee/one/http/JsonCallback;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public ok(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "object"    # Lorg/json/JSONObject;

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/boohee/one/http/JsonCallback;->ok(Lorg/json/JSONObject;)V

    .line 146
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    # invokes: Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->handlePhotos(Lorg/json/JSONObject;)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->access$100(Lcom/boohee/one/ui/WagerWeightPicUploadActivity;Lorg/json/JSONObject;)V

    .line 147
    return-void
.end method

.method public onFinish()V
    .locals 1

    .prologue
    .line 151
    invoke-super {p0}, Lcom/boohee/one/http/JsonCallback;->onFinish()V

    .line 152
    iget-object v0, p0, Lcom/boohee/one/ui/WagerWeightPicUploadActivity$1;->this$0:Lcom/boohee/one/ui/WagerWeightPicUploadActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/WagerWeightPicUploadActivity;->dismissLoading()V

    .line 153
    return-void
.end method
