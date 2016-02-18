.class public Lcom/boohee/one/ui/InviteFriendsActivity;
.super Lcom/boohee/main/GestureActivity;
.source "InviteFriendsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private final shareDesc:Ljava/lang/String;

.field private final shareMsg:Ljava/lang/String;

.field private final shareUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 18
    const-string v0, "\u8584\u8377\u5df2\u7ecf\u5e2e\u52a9\u8fd1600\u4e07\u7528\u6237\u6210\u529f\u51cf\u53bb32,000,000\u65a4\uff01\u52a0\u5165\u8584\u8377\uff0c\u548c\u6211\u4e00\u8d77\u51cf\u80a5\u5427\uff01"

    iput-object v0, p0, Lcom/boohee/one/ui/InviteFriendsActivity;->shareDesc:Ljava/lang/String;

    .line 19
    const-string v0, "http://a.app.qq.com/o/simple.jsp?pkgname=com.boohee.one&g_f=991653"

    iput-object v0, p0, Lcom/boohee/one/ui/InviteFriendsActivity;->shareUrl:Ljava/lang/String;

    .line 20
    const-string v0, "\u8584\u8377\u5df2\u7ecf\u5e2e\u52a9\u8fd1600\u4e07\u7528\u6237\u6210\u529f\u51cf\u53bb32,000,000\u65a4\uff01\u52a0\u5165\u8584\u8377\uff0c\u548c\u6211\u4e00\u8d77\u51cf\u80a5\u5427\uff01http://a.app.qq.com/o/simple.jsp?pkgname=com.boohee.one&g_f=991653"

    iput-object v0, p0, Lcom/boohee/one/ui/InviteFriendsActivity;->shareMsg:Ljava/lang/String;

    return-void
.end method

.method private addListener()V
    .locals 1

    .prologue
    .line 32
    const v0, 0x7f0e03b8

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/InviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    const v0, 0x7f0e03b9

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/InviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    const v0, 0x7f0e03ba

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/InviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    const v0, 0x7f0e03bb

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/InviteFriendsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 36
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 43
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 47
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 64
    :goto_0
    return-void

    .line 50
    :pswitch_0
    const-string v2, "smsto:"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 51
    .local v1, "smsToUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SENDTO"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 52
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "sms_body"

    const-string v3, "\u8584\u8377\u5df2\u7ecf\u5e2e\u52a9\u8fd1600\u4e07\u7528\u6237\u6210\u529f\u51cf\u53bb32,000,000\u65a4\uff01\u52a0\u5165\u8584\u8377\uff0c\u548c\u6211\u4e00\u8d77\u51cf\u80a5\u5427\uff01http://a.app.qq.com/o/simple.jsp?pkgname=com.boohee.one&g_f=991653"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/InviteFriendsActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 58
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "smsToUri":Landroid/net/Uri;
    :pswitch_1
    const-string v2, "\u9080\u8bf7\u4f19\u4f34"

    const-string v3, "\u8584\u8377\u5df2\u7ecf\u5e2e\u52a9\u8fd1600\u4e07\u7528\u6237\u6210\u529f\u51cf\u53bb32,000,000\u65a4\uff01\u52a0\u5165\u8584\u8377\uff0c\u548c\u6211\u4e00\u8d77\u51cf\u80a5\u5427\uff01http://a.app.qq.com/o/simple.jsp?pkgname=com.boohee.one&g_f=991653"

    invoke-static {p0, v2, v3}, Lboohee/lib/share/ShareManager;->share(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :pswitch_data_0
    .packed-switch 0x7f0e03b8
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 24
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f03011c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/InviteFriendsActivity;->setContentView(I)V

    .line 26
    const-string v0, "\u9080\u8bf7\u4f19\u4f34"

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/InviteFriendsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 27
    invoke-direct {p0}, Lcom/boohee/one/ui/InviteFriendsActivity;->addListener()V

    .line 28
    invoke-direct {p0}, Lcom/boohee/one/ui/InviteFriendsActivity;->init()V

    .line 29
    return-void
.end method

.method public shareMsg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "activityTitle"    # Ljava/lang/String;
    .param p2, "msgTitle"    # Ljava/lang/String;
    .param p3, "msgText"    # Ljava/lang/String;
    .param p4, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .local v1, "intent":Landroid/content/Intent;
    if-eqz p4, :cond_0

    const-string v3, ""

    invoke-virtual {p4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    :cond_0
    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    :cond_1
    :goto_0
    const-string v3, "android.intent.extra.SUBJECT"

    invoke-virtual {v1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {v1, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    const/high16 v3, 0x10000000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 93
    invoke-static {v1, p1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/boohee/one/ui/InviteFriendsActivity;->startActivity(Landroid/content/Intent;)V

    .line 94
    return-void

    .line 83
    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "f":Ljava/io/File;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 85
    const-string v3, "image/jpg"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 87
    .local v2, "u":Landroid/net/Uri;
    const-string v3, "android.intent.extra.STREAM"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0
.end method
