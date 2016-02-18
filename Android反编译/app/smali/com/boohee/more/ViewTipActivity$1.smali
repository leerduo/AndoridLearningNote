.class Lcom/boohee/more/ViewTipActivity$1;
.super Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;
.source "ViewTipActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/ViewTipActivity;->findViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/ViewTipActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/ViewTipActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    invoke-direct {p0}, Lcom/nostra13/universalimageloader/core/listener/SimpleImageLoadingListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadingComplete(Ljava/lang/String;Landroid/view/View;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "loadedImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->saveText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/more/ViewTipActivity;->access$000(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->contentText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/more/ViewTipActivity;->access$100(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 73
    iget-object v0, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->saveText:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/boohee/more/ViewTipActivity;->access$000(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Lcom/boohee/more/ViewTipActivity$1$1;

    invoke-direct {v1, p0, p3}, Lcom/boohee/more/ViewTipActivity$1$1;-><init>(Lcom/boohee/more/ViewTipActivity$1;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    return-void
.end method

.method public onLoadingFailed(Ljava/lang/String;Landroid/view/View;Lcom/nostra13/universalimageloader/core/assist/FailReason;)V
    .locals 5
    .param p1, "imageUri"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "reason"    # Lcom/nostra13/universalimageloader/core/assist/FailReason;

    .prologue
    .line 83
    iget-object v1, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->saveText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/more/ViewTipActivity;->access$000(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 84
    iget-object v1, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->contentText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/more/ViewTipActivity;->access$100(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 85
    iget-object v1, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->contentImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/boohee/more/ViewTipActivity;->access$300(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/ImageView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 86
    iget-object v1, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->contentText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/more/ViewTipActivity;->access$100(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->message:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/more/ViewTipActivity;->access$400(Lcom/boohee/more/ViewTipActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 88
    .local v0, "rand":Ljava/util/Random;
    iget-object v1, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    # getter for: Lcom/boohee/more/ViewTipActivity;->contentText:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/boohee/more/ViewTipActivity;->access$100(Lcom/boohee/more/ViewTipActivity;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/more/ViewTipActivity$1;->this$0:Lcom/boohee/more/ViewTipActivity;

    invoke-virtual {v2}, Lcom/boohee/more/ViewTipActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    # getter for: Lcom/boohee/more/ViewTipActivity;->COLORS:[I
    invoke-static {}, Lcom/boohee/more/ViewTipActivity;->access$500()[I

    move-result-object v3

    # getter for: Lcom/boohee/more/ViewTipActivity;->COLORS:[I
    invoke-static {}, Lcom/boohee/more/ViewTipActivity;->access$500()[I

    move-result-object v4

    array-length v4, v4

    invoke-virtual {v0, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 89
    return-void
.end method
