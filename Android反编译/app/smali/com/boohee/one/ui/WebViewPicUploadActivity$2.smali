.class Lcom/boohee/one/ui/WebViewPicUploadActivity$2;
.super Ljava/lang/Object;
.source "WebViewPicUploadActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/WebViewPicUploadActivity;->OnClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/WebViewPicUploadActivity;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$2;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 123
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$2;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWholeDelete:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$2;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    const/4 v1, 0x0

    # setter for: Lcom/boohee/one/ui/WebViewPicUploadActivity;->mWholePath:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->access$102(Lcom/boohee/one/ui/WebViewPicUploadActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    iget-object v0, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$2;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    iget-object v0, v0, Lcom/boohee/one/ui/WebViewPicUploadActivity;->mIvWhole:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/boohee/one/ui/WebViewPicUploadActivity$2;->this$0:Lcom/boohee/one/ui/WebViewPicUploadActivity;

    invoke-virtual {v1}, Lcom/boohee/one/ui/WebViewPicUploadActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 126
    return-void
.end method
