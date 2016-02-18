.class Lcom/boohee/account/UserProfileActivity$2;
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
    .line 119
    iput-object p1, p0, Lcom/boohee/account/UserProfileActivity$2;->this$0:Lcom/boohee/account/UserProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/boohee/account/UserProfileActivity$2;->this$0:Lcom/boohee/account/UserProfileActivity;

    # getter for: Lcom/boohee/account/UserProfileActivity;->menu:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/boohee/account/UserProfileActivity;->access$100(Lcom/boohee/account/UserProfileActivity;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 123
    return-void
.end method
