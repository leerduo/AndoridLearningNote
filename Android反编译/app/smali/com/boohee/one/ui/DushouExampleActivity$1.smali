.class Lcom/boohee/one/ui/DushouExampleActivity$1;
.super Ljava/lang/Object;
.source "DushouExampleActivity.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/DushouExampleActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/DushouExampleActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/DushouExampleActivity;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/boohee/one/ui/DushouExampleActivity$1;->this$0:Lcom/boohee/one/ui/DushouExampleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "v"    # F
    .param p3, "v2"    # F

    .prologue
    .line 38
    iget-object v0, p0, Lcom/boohee/one/ui/DushouExampleActivity$1;->this$0:Lcom/boohee/one/ui/DushouExampleActivity;

    invoke-virtual {v0}, Lcom/boohee/one/ui/DushouExampleActivity;->finish()V

    .line 39
    return-void
.end method
