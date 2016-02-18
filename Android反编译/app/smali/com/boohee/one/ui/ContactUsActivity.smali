.class public Lcom/boohee/one/ui/ContactUsActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ContactUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;

.field private mContacts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    .line 26
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/boohee/model/Contact;

    const/4 v1, 0x0

    new-instance v2, Lcom/boohee/model/Contact;

    const-string v3, "APP\u5408\u4f5c"

    const-string v4, "\u5f20\u5c0f\u59d0"

    const-string v5, "021-61093795"

    const-string v6, "zhangshengdan@boohee.com"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/boohee/model/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-instance v2, Lcom/boohee/model/Contact;

    const-string v3, "\u5546\u52a1\u5408\u4f5c"

    const-string v4, "\u848b\u5148\u751f"

    const-string v5, "021-61093795"

    const-string v6, "jianghuiyu@boohee.com"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/boohee/model/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-instance v2, Lcom/boohee/model/Contact;

    const-string v3, "\u4ea7\u54c1\u9500\u552e\u5408\u4f5c"

    const-string v4, "\u534e\u5c0f\u59d0"

    const-string v5, "021-61091586"

    const-string v6, "huaying@boohee.com"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/boohee/model/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/boohee/model/Contact;

    const-string v3, "\u4f19\u4f34\u62db\u8058"

    const-string v4, "\u6768\u5c0f\u59d0"

    const-string v5, "021-61091573"

    const-string v6, "zhaopin@boohee.com"

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/boohee/model/Contact;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/ContactUsActivity;->mContacts:Ljava/util/List;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/ui/ContactUsActivity;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/ui/ContactUsActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/boohee/one/ui/ContactUsActivity;->mContacts:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/boohee/one/ui/ContactUsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ContactUsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ContactUsActivity;->cellPhoneCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/boohee/one/ui/ContactUsActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/boohee/one/ui/ContactUsActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/ContactUsActivity;->sendEmail(Ljava/lang/String;)V

    return-void
.end method

.method private cellPhoneCall(Ljava/lang/String;)V
    .locals 3
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 95
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8981\u6253\u7535\u8bdd\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070082

    new-instance v2, Lcom/boohee/one/ui/ContactUsActivity$2;

    invoke-direct {v2, p0, p1}, Lcom/boohee/one/ui/ContactUsActivity$2;-><init>(Lcom/boohee/one/ui/ContactUsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001c

    new-instance v2, Lcom/boohee/one/ui/ContactUsActivity$1;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/ContactUsActivity$1;-><init>(Lcom/boohee/one/ui/ContactUsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 107
    return-void
.end method

.method private sendEmail(Ljava/lang/String;)V
    .locals 3
    .param p1, "email"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u8981\u53d1\u90ae\u4ef6\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f070082

    new-instance v2, Lcom/boohee/one/ui/ContactUsActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/boohee/one/ui/ContactUsActivity$4;-><init>(Lcom/boohee/one/ui/ContactUsActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f07001c

    new-instance v2, Lcom/boohee/one/ui/ContactUsActivity$3;

    invoke-direct {v2, p0}, Lcom/boohee/one/ui/ContactUsActivity$3;-><init>(Lcom/boohee/one/ui/ContactUsActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 126
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f0300ad

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ContactUsActivity;->setContentView(I)V

    .line 39
    const v0, 0x7f07018d

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ContactUsActivity;->setTitle(I)V

    .line 40
    const v0, 0x7f0e00f8

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/ContactUsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/boohee/one/ui/ContactUsActivity;->mListView:Landroid/widget/ListView;

    .line 41
    new-instance v0, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;

    invoke-direct {v0, p0}, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;-><init>(Lcom/boohee/one/ui/ContactUsActivity;)V

    iput-object v0, p0, Lcom/boohee/one/ui/ContactUsActivity;->mAdapter:Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;

    .line 42
    iget-object v0, p0, Lcom/boohee/one/ui/ContactUsActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/boohee/one/ui/ContactUsActivity;->mAdapter:Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 43
    return-void
.end method
