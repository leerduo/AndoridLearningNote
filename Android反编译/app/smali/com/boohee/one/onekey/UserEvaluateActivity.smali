.class public Lcom/boohee/one/onekey/UserEvaluateActivity;
.super Lcom/boohee/one/ui/BaseActivity;
.source "UserEvaluateActivity.java"


# instance fields
.field private consultor:Lcom/boohee/one/onekey/model/Consultor;

.field ivAvatar:Lde/hdodenhof/circleimageview/CircleImageView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01d8
    .end annotation
.end field

.field tvIntroduce:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e01d9
    .end annotation
.end field

.field tvName:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00d3
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/boohee/one/ui/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/onekey/UserEvaluateActivity;)Lcom/boohee/one/onekey/model/Consultor;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserEvaluateActivity;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/boohee/one/onekey/UserEvaluateActivity;->consultor:Lcom/boohee/one/onekey/model/Consultor;

    return-object v0
.end method

.method static synthetic access$002(Lcom/boohee/one/onekey/UserEvaluateActivity;Lcom/boohee/one/onekey/model/Consultor;)Lcom/boohee/one/onekey/model/Consultor;
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/onekey/UserEvaluateActivity;
    .param p1, "x1"    # Lcom/boohee/one/onekey/model/Consultor;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/boohee/one/onekey/UserEvaluateActivity;->consultor:Lcom/boohee/one/onekey/model/Consultor;

    return-object p1
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    if-nez p0, :cond_0

    .line 113
    :goto_0
    return-void

    .line 111
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/onekey/UserEvaluateActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private requestConsultorsInfo()V
    .locals 2

    .prologue
    .line 67
    invoke-virtual {p0}, Lcom/boohee/one/onekey/UserEvaluateActivity;->showLoading()V

    .line 68
    const-string v0, "/api/v1/consultors"

    new-instance v1, Lcom/boohee/one/onekey/UserEvaluateActivity$1;

    invoke-direct {v1, p0, p0}, Lcom/boohee/one/onekey/UserEvaluateActivity$1;-><init>(Lcom/boohee/one/onekey/UserEvaluateActivity;Landroid/content/Context;)V

    invoke-static {v0, v1, p0}, Lcom/boohee/one/http/client/BingoClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 100
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e01db
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 53
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const v0, 0x7f070550

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/UserEvaluateActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/api/v1/questions/init.html"

    invoke-static {v1}, Lcom/boohee/one/http/client/BingoClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/boohee/one/onekey/OneKeyBrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/boohee/one/onekey/UserEvaluateActivity;->finish()V

    goto :goto_0

    .line 43
    :pswitch_data_0
    .packed-switch 0x7f0e01db
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/boohee/one/ui/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const v0, 0x7f030065

    invoke-virtual {p0, v0}, Lcom/boohee/one/onekey/UserEvaluateActivity;->setContentView(I)V

    .line 61
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 63
    invoke-direct {p0}, Lcom/boohee/one/onekey/UserEvaluateActivity;->requestConsultorsInfo()V

    .line 64
    return-void
.end method
