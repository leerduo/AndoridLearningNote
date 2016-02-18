.class public Lcom/boohee/more/SubjectActivity;
.super Lcom/boohee/main/GestureActivity;
.source "SubjectActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 20
    const v1, 0x7f0e0579

    invoke-virtual {p0, v1}, Lcom/boohee/more/SubjectActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 21
    .local v0, "content":Landroid/webkit/WebView;
    const-string v1, "file:///android_asset/home.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 22
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 14
    const v0, 0x7f0301c6

    invoke-virtual {p0, v0}, Lcom/boohee/more/SubjectActivity;->setContentView(I)V

    .line 15
    const v0, 0x7f07050c

    invoke-virtual {p0, v0}, Lcom/boohee/more/SubjectActivity;->setTitle(I)V

    .line 16
    invoke-direct {p0}, Lcom/boohee/more/SubjectActivity;->initUI()V

    .line 17
    return-void
.end method
