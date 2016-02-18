.class Lcom/boohee/food/EditCameraRecordActivity$2;
.super Ljava/lang/Object;
.source "EditCameraRecordActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/EditCameraRecordActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/EditCameraRecordActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/EditCameraRecordActivity;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/boohee/food/EditCameraRecordActivity$2;->this$0:Lcom/boohee/food/EditCameraRecordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 168
    iget-object v0, p0, Lcom/boohee/food/EditCameraRecordActivity$2;->this$0:Lcom/boohee/food/EditCameraRecordActivity;

    # invokes: Lcom/boohee/food/EditCameraRecordActivity;->deletePhotoEating()V
    invoke-static {v0}, Lcom/boohee/food/EditCameraRecordActivity;->access$200(Lcom/boohee/food/EditCameraRecordActivity;)V

    .line 169
    return-void
.end method
