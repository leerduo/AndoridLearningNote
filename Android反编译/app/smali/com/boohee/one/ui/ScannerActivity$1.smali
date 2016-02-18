.class Lcom/boohee/one/ui/ScannerActivity$1;
.super Lme/dm7/barcodescanner/zxing/ZXingScannerView;
.source "ScannerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ScannerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ScannerActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ScannerActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/boohee/one/ui/ScannerActivity$1;->this$0:Lcom/boohee/one/ui/ScannerActivity;

    invoke-direct {p0, p2}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected createViewFinderView(Landroid/content/Context;)Lme/dm7/barcodescanner/core/IViewFinder;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    new-instance v0, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;

    invoke-direct {v0, p1}, Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
