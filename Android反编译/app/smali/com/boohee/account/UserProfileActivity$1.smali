.class Lcom/boohee/account/UserProfileActivity$1;
.super Ljava/lang/Object;
.source "UserProfileActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/account/UserProfileActivity;->initPopupBtnListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/account/UserProfileActivity;


# direct methods
.method constructor <init>(Lcom/boohee/account/UserProfileActivity;)V
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/boohee/account/UserProfileActivity$1;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity$1;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v0}, Lcom/boohee/account/UserProfileActivity;->access$000(Lcom/boohee/account/UserProfileActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/boohee/utils/PhotoPickerHelper;->show(Landroid/app/Activity;I)V

    .line 117
    return-void
.end method
