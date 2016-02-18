.class public Lcom/boohee/one/ui/AboutBooheeActivity;
.super Lcom/boohee/main/GestureActivity;
.source "AboutBooheeActivity.java"


# instance fields
.field tvApp:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e00ae
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    if-nez p0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/AboutBooheeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 81
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private initView()V
    .locals 5

    .prologue
    .line 46
    :try_start_0
    iget-object v2, p0, Lcom/boohee/one/ui/AboutBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/BaseActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/AboutBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-virtual {v3}, Lcom/boohee/one/ui/BaseActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x4000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 48
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, p0, Lcom/boohee/one/ui/AboutBooheeActivity;->tvApp:Landroid/widget/TextView;

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .annotation build Lbutterknife/OnClick;
        value = {
            0x7f0e00af,
            0x7f0e00b0,
            0x7f0e00b2,
            0x7f0e00b1
        }
    .end annotation

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 58
    :pswitch_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/boohee/one/ui/AboutBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v3, Lcom/boohee/one/ui/ContactUsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/AboutBooheeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 61
    :pswitch_1
    iget-object v1, p0, Lcom/boohee/one/ui/AboutBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const v2, 0x7f070604

    invoke-virtual {p0, v2}, Lcom/boohee/one/ui/AboutBooheeActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/api/v1/articles/partner_rules.html"

    invoke-static {v3}, Lcom/boohee/one/http/client/OneClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/boohee/one/ui/AboutBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-class v2, Lcom/boohee/more/DescriptionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "aboutIntent":Landroid/content/Intent;
    const-string v1, "index"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AboutBooheeActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 70
    .end local v0    # "aboutIntent":Landroid/content/Intent;
    :pswitch_3
    iget-object v1, p0, Lcom/boohee/one/ui/AboutBooheeActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    const-string v2, "\u5173\u4e8e\u5546\u5e97"

    const-string v3, "http://shop.boohee.com/store/pages/about_shop"

    invoke-static {v1, v2, v3}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 56
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e00af
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f03001f

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/AboutBooheeActivity;->setContentView(I)V

    .line 39
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 40
    invoke-direct {p0}, Lcom/boohee/one/ui/AboutBooheeActivity;->initView()V

    .line 41
    return-void
.end method
