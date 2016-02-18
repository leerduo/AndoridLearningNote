.class Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;
.super Ljava/lang/Object;
.source "EditPage.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->afterPlatformListGot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

.field final synthetic val$dp_24:I

.field final synthetic val$dp_9:I

.field final synthetic val$postSel:I


# direct methods
.method constructor <init>(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;III)V
    .locals 0

    .prologue
    .line 631
    iput-object p1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    iput p2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;->val$postSel:I

    iput p3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;->val$dp_24:I

    iput p4, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;->val$dp_9:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x0

    .line 633
    iget-object v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;->this$0:Lcn/sharesdk/onekeyshare/theme/classic/EditPage;

    invoke-static {v1}, Lcn/sharesdk/onekeyshare/theme/classic/EditPage;->access$1100(Lcn/sharesdk/onekeyshare/theme/classic/EditPage;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/HorizontalScrollView;

    .line 634
    .local v0, "hsv":Landroid/widget/HorizontalScrollView;
    iget v1, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;->val$postSel:I

    iget v2, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;->val$dp_24:I

    iget v3, p0, Lcn/sharesdk/onekeyshare/theme/classic/EditPage$6;->val$dp_9:I

    add-int/2addr v2, v3

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1, v4}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    .line 635
    return v4
.end method
