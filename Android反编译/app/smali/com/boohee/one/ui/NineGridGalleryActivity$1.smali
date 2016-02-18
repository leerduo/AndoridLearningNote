.class Lcom/boohee/one/ui/NineGridGalleryActivity$1;
.super Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;
.source "NineGridGalleryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/NineGridGalleryActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/NineGridGalleryActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/NineGridGalleryActivity;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/boohee/one/ui/NineGridGalleryActivity$1;->this$0:Lcom/boohee/one/ui/NineGridGalleryActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 74
    invoke-super {p0, p1}, Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 75
    iget-object v0, p0, Lcom/boohee/one/ui/NineGridGalleryActivity$1;->this$0:Lcom/boohee/one/ui/NineGridGalleryActivity;

    # invokes: Lcom/boohee/one/ui/NineGridGalleryActivity;->setCurrentIndex(I)V
    invoke-static {v0, p1}, Lcom/boohee/one/ui/NineGridGalleryActivity;->access$000(Lcom/boohee/one/ui/NineGridGalleryActivity;I)V

    .line 76
    return-void
.end method
