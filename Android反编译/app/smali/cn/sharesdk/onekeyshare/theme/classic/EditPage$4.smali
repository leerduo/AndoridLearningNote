.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageListResultsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->showThumb()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)V
    .locals 0

    .prologue
    .line 349
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;>;"
    const/4 v2, 0x0

    .line 352
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 355
    :cond_1
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    invoke-static {v1, v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$502(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    .line 356
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$500(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    move-result-object v1

    iget-object v1, v1, Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$102(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 357
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 358
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$400(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 359
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$700(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 360
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$800(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$4;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method
