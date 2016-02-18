.class public Lcom/boohee/one/pay/PayService;
.super Ljava/lang/Object;
.source "PayService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/pay/PayService$OnFinishPayListener;
    }
.end annotation


# static fields
.field private static final ALIMOBILE_SIGN_URL:Ljava/lang/String; = "/api/v1/payments/%d/pay/alimobile"

.field public static final ALI_PAY:I = 0x1

.field private static final SDK_PAY_FLAG:I = 0x1

.field public static final WEIXIN_PAY:I = 0x2

.field private static final WEIXIN_SIGN_URL:Ljava/lang/String; = "/api/v1/payments/%d/pay/weixinapp"


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/boohee/one/pay/PayService$OnFinishPayListener;

.field private mPayNum:I

.field private mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/pay/PayService;->mPayNum:I

    .line 145
    new-instance v0, Lcom/boohee/one/pay/PayService$5;

    invoke-direct {v0, p0}, Lcom/boohee/one/pay/PayService$5;-><init>(Lcom/boohee/one/pay/PayService;)V

    iput-object v0, p0, Lcom/boohee/one/pay/PayService;->mHandler:Landroid/os/Handler;

    .line 61
    iput-object p1, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    .line 62
    iget-object v0, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    const-string v1, "wxaddc5c19a31e9d39"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/pay/PayService;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    .line 63
    iget-object v0, p0, Lcom/boohee/one/pay/PayService;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    const-string v1, "wxaddc5c19a31e9d39"

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->registerApp(Ljava/lang/String;)Z

    .line 64
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/pay/PayService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/pay/PayService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/boohee/one/pay/PayService;->aliPay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$104(Lcom/boohee/one/pay/PayService;)I
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/pay/PayService;

    .prologue
    .line 37
    iget v0, p0, Lcom/boohee/one/pay/PayService;->mPayNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/boohee/one/pay/PayService;->mPayNum:I

    return v0
.end method

.method static synthetic access$200(Lcom/boohee/one/pay/PayService;)Lcom/boohee/one/pay/PayService$OnFinishPayListener;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/pay/PayService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/pay/PayService;->mListener:Lcom/boohee/one/pay/PayService$OnFinishPayListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/boohee/one/pay/PayService;)Lcom/tencent/mm/sdk/openapi/IWXAPI;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/pay/PayService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/pay/PayService;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    return-object v0
.end method

.method static synthetic access$400(Lcom/boohee/one/pay/PayService;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/pay/PayService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/boohee/one/pay/PayService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/pay/PayService;

    .prologue
    .line 37
    iget-object v0, p0, Lcom/boohee/one/pay/PayService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private aliPay(Ljava/lang/String;)V
    .locals 2
    .param p1, "sign"    # Ljava/lang/String;

    .prologue
    .line 248
    new-instance v0, Lcom/boohee/one/pay/PayService$8;

    invoke-direct {v0, p0, p1}, Lcom/boohee/one/pay/PayService$8;-><init>(Lcom/boohee/one/pay/PayService;Ljava/lang/String;)V

    .line 264
    .local v0, "payRunnable":Ljava/lang/Runnable;
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 265
    .local v1, "payThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 266
    return-void
.end method

.method private getAliSign(I)V
    .locals 4
    .param p1, "order_id"    # I

    .prologue
    .line 191
    const-string v0, "/api/v1/payments/%d/pay/alimobile"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/pay/PayService$6;

    iget-object v2, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/pay/PayService$6;-><init>(Lcom/boohee/one/pay/PayService;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 199
    return-void
.end method

.method private getWeixinSign(I)V
    .locals 4
    .param p1, "order_id"    # I

    .prologue
    .line 207
    const-string v0, "/api/v1/payments/%d/pay/weixinapp"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/pay/PayService$7;

    iget-object v2, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/pay/PayService$7;-><init>(Lcom/boohee/one/pay/PayService;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/OneClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 240
    return-void
.end method


# virtual methods
.method public setOnFinishPayLinstener(Lcom/boohee/one/pay/PayService$OnFinishPayListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/boohee/one/pay/PayService$OnFinishPayListener;

    .prologue
    .line 275
    iput-object p1, p0, Lcom/boohee/one/pay/PayService;->mListener:Lcom/boohee/one/pay/PayService$OnFinishPayListener;

    .line 276
    return-void
.end method

.method public startDushouPay(I)V
    .locals 4
    .param p1, "order_id"    # I

    .prologue
    .line 90
    const-string v0, "/api/v1/payments/%d/pay/alimobile"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/boohee/one/pay/PayService$1;

    iget-object v2, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/pay/PayService$1;-><init>(Lcom/boohee/one/pay/PayService;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    invoke-static {v0, v1, v2}, Lcom/boohee/one/http/client/StatusClient;->get(Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;Landroid/content/Context;)V

    .line 98
    return-void
.end method

.method public startPay(II)V
    .locals 3
    .param p1, "order_id"    # I
    .param p2, "pay_type"    # I

    .prologue
    const/4 v0, 0x1

    .line 73
    if-ne v0, p2, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lcom/boohee/one/pay/PayService;->getAliSign(I)V

    .line 83
    :cond_0
    :goto_0
    return-void

    .line 75
    :cond_1
    const/4 v1, 0x2

    if-ne v1, p2, :cond_0

    .line 76
    iget-object v1, p0, Lcom/boohee/one/pay/PayService;->mWXApi:Lcom/tencent/mm/sdk/openapi/IWXAPI;

    invoke-interface {v1}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->getWXAppSupportAPI()I

    move-result v1

    const v2, 0x22000001

    if-lt v1, v2, :cond_2

    .line 77
    .local v0, "isPaySupported":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 78
    invoke-direct {p0, p1}, Lcom/boohee/one/pay/PayService;->getWeixinSign(I)V

    goto :goto_0

    .line 76
    .end local v0    # "isPaySupported":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 80
    .restart local v0    # "isPaySupported":Z
    :cond_3
    const v1, 0x7f070412

    invoke-static {v1}, Lcom/boohee/utils/Helper;->showToast(I)V

    goto :goto_0
.end method

.method public startPayWithDialog(I)V
    .locals 9
    .param p1, "order_id"    # I

    .prologue
    .line 106
    new-instance v0, Landroid/app/Dialog;

    iget-object v6, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 108
    iget-object v6, p0, Lcom/boohee/one/pay/PayService;->mActivity:Landroid/app/Activity;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f030262

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 109
    .local v5, "view":Landroid/view/View;
    const v6, 0x7f0e0749

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    .line 110
    .local v3, "rl_alipay":Landroid/widget/RelativeLayout;
    const v6, 0x7f0e074c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    .line 111
    .local v4, "rl_wechat":Landroid/widget/RelativeLayout;
    const v6, 0x7f0e0748

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    .local v1, "iv_pay_more":Landroid/widget/ImageView;
    const v6, 0x7f0e0747

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 113
    .local v2, "ll_pay_more":Landroid/widget/LinearLayout;
    new-instance v6, Lcom/boohee/one/pay/PayService$2;

    invoke-direct {v6, p0, p1, v0}, Lcom/boohee/one/pay/PayService$2;-><init>(Lcom/boohee/one/pay/PayService;ILandroid/app/Dialog;)V

    invoke-virtual {v3, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    new-instance v6, Lcom/boohee/one/pay/PayService$3;

    invoke-direct {v6, p0, p1, v0}, Lcom/boohee/one/pay/PayService$3;-><init>(Lcom/boohee/one/pay/PayService;ILandroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    new-instance v6, Lcom/boohee/one/pay/PayService$4;

    invoke-direct {v6, p0, v1, v4}, Lcom/boohee/one/pay/PayService$4;-><init>(Lcom/boohee/one/pay/PayService;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;)V

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 142
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 143
    return-void
.end method
