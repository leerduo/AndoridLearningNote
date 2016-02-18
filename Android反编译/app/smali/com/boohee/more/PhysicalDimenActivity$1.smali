.class Lcom/boohee/more/PhysicalDimenActivity$1;
.super Ljava/lang/Object;
.source "PhysicalDimenActivity.java"

# interfaces
.implements Luk/co/senab/photoview/PhotoViewAttacher$OnPhotoTapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/PhysicalDimenActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/PhysicalDimenActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/PhysicalDimenActivity;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/boohee/more/PhysicalDimenActivity$1;->this$0:Lcom/boohee/more/PhysicalDimenActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhotoTap(Landroid/view/View;FF)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 34
    iget-object v0, p0, Lcom/boohee/more/PhysicalDimenActivity$1;->this$0:Lcom/boohee/more/PhysicalDimenActivity;

    invoke-virtual {v0}, Lcom/boohee/more/PhysicalDimenActivity;->finish()V

    .line 35
    return-void
.end method
