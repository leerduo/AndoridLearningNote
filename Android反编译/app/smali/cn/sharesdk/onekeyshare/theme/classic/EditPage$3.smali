.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->getThumbView()Landroid/widget/RelativeLayout;
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
    .line 322
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    .line 325
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$300(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 326
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v0}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$400(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 327
    iget-object v0, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$3;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$500(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$600(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;Lcn/sharesdk/onekeyshare/EditPageFakeActivity$ImageInfo;)V

    .line 328
    return-void
.end method
