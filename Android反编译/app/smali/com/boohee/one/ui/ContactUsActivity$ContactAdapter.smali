.class Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;
.super Landroid/widget/BaseAdapter;
.source "ContactUsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/ContactUsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ContactUsActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 46
    iput-object p1, p0, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;->this$0:Lcom/boohee/one/ui/ContactUsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 47
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;->this$0:Lcom/boohee/one/ui/ContactUsActivity;

    # getter for: Lcom/boohee/one/ui/ContactUsActivity;->mContacts:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/ContactUsActivity;->access$000(Lcom/boohee/one/ui/ContactUsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/boohee/model/Contact;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 56
    iget-object v0, p0, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;->this$0:Lcom/boohee/one/ui/ContactUsActivity;

    # getter for: Lcom/boohee/one/ui/ContactUsActivity;->mContacts:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/ContactUsActivity;->access$000(Lcom/boohee/one/ui/ContactUsActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Contact;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;->getItem(I)Lcom/boohee/model/Contact;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 61
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 66
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;->getItem(I)Lcom/boohee/model/Contact;

    move-result-object v1

    .line 67
    .local v1, "contact":Lcom/boohee/model/Contact;
    if-nez p2, :cond_0

    .line 68
    iget-object v5, p0, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;->this$0:Lcom/boohee/one/ui/ContactUsActivity;

    const v6, 0x7f03016e

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 70
    :cond_0
    const v5, 0x7f0e0475

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 71
    .local v3, "section":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/boohee/model/Contact;->section:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    const v5, 0x7f0e0398

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 73
    .local v4, "user_name":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/boohee/model/Contact;->user_name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    const v5, 0x7f0e0476

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 75
    .local v0, "cellphone":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/boohee/model/Contact;->cellphone:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    new-instance v5, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter$1;

    invoke-direct {v5, p0, v1}, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter$1;-><init>(Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;Lcom/boohee/model/Contact;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    const v5, 0x7f0e0477

    invoke-virtual {p2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 83
    .local v2, "email":Landroid/widget/TextView;
    iget-object v5, v1, Lcom/boohee/model/Contact;->email:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    new-instance v5, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter$2;

    invoke-direct {v5, p0, v1}, Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter$2;-><init>(Lcom/boohee/one/ui/ContactUsActivity$ContactAdapter;Lcom/boohee/model/Contact;)V

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    return-object p2
.end method
