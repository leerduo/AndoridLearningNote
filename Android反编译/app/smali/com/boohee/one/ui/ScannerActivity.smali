.class public Lcom/boohee/one/ui/ScannerActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "ScannerActivity.java"

# interfaces
.implements Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/ScannerActivity$CustomViewFinderView;
    }
.end annotation


# static fields
.field public static final CODE_DATA:Ljava/lang/String; = "CODE_DATA"

.field public static final REQUEST_CODE:I = 0xaf


# instance fields
.field flScanner:Landroid/widget/FrameLayout;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01fd
    .end annotation
.end field

.field private mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    .line 81
    return-void
.end method

.method public static startScannerForResult(Landroid/content/Context;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "requestCode"    # I

    .prologue
    .line 133
    if-nez p0, :cond_1

    .line 138
    .end local p0    # "context":Landroid/content/Context;
    :cond_0
    :goto_0
    return-void

    .line 134
    .restart local p0    # "context":Landroid/content/Context;
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 135
    check-cast v0, Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/boohee/one/ui/ScannerActivity;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 136
    check-cast p0, Landroid/app/Activity;

    .end local p0    # "context":Landroid/content/Context;
    const v0, 0x7f04000e

    const v1, 0x7f040011

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    goto :goto_0
.end method


# virtual methods
.method public handleResult(Lcom/google/zxing/Result;)V
    .locals 3
    .param p1, "rawResult"    # Lcom/google/zxing/Result;

    .prologue
    .line 75
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 76
    .local v0, "data":Landroid/content/Intent;
    const-string v1, "CODE_DATA"

    invoke-virtual {p1}, Lcom/google/zxing/Result;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    const/16 v1, 0xaf

    invoke-virtual {p0, v1, v0}, Lcom/boohee/one/ui/ScannerActivity;->setResult(ILandroid/content/Intent;)V

    .line 78
    invoke-virtual {p0}, Lcom/boohee/one/ui/ScannerActivity;->finish()V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, -0x1

    .line 46
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    iget-object v1, p0, Lcom/boohee/one/ui/ScannerActivity;->ctx:Landroid/content/Context;

    const-string v2, "tool_searchfood_scan"

    invoke-static {v1, v2}, Lcom/umeng/analytics/MobclickAgent;->onEvent(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    const v1, 0x7f030071

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ScannerActivity;->setContentView(I)V

    .line 49
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 50
    new-instance v1, Lcom/boohee/one/ui/ScannerActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/ui/ScannerActivity$1;-><init>(Lcom/boohee/one/ui/ScannerActivity;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/boohee/one/ui/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    .line 56
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 57
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget-object v1, p0, Lcom/boohee/one/ui/ScannerActivity;->flScanner:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/boohee/one/ui/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 58
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onPause()V

    .line 70
    iget-object v0, p0, Lcom/boohee/one/ui/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->stopCamera()V

    .line 71
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0}, Lcom/boohee/one/ui/BaseActivity;->onResume()V

    .line 63
    iget-object v0, p0, Lcom/boohee/one/ui/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0, p0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->setResultHandler(Lme/dm7/barcodescanner/zxing/ZXingScannerView$ResultHandler;)V

    .line 64
    iget-object v0, p0, Lcom/boohee/one/ui/ScannerActivity;->mScannerView:Lme/dm7/barcodescanner/zxing/ZXingScannerView;

    invoke-virtual {v0}, Lme/dm7/barcodescanner/zxing/ZXingScannerView;->startCamera()V

    .line 65
    return-void
.end method
