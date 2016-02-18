.class public Lcom/boohee/one/onekey/adapter/PostMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "PostMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;,
        Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;
    }
.end annotation


# instance fields
.field private final TYPE_GUIDE:I

.field private final TYPE_MESSAGE:I

.field private context:Landroid/content/Context;

.field private messages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/PostMessage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/one/onekey/model/PostMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p2, "dataList":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/one/onekey/model/PostMessage;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->messages:Ljava/util/List;

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->TYPE_MESSAGE:I

    .line 35
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->TYPE_GUIDE:I

    .line 38
    iput-object p1, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->context:Landroid/content/Context;

    .line 39
    iput-object p2, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->messages:Ljava/util/List;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/boohee/one/onekey/adapter/PostMessageAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/adapter/PostMessageAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 64
    iget-object v0, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->messages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 69
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/onekey/model/PostMessage;

    .line 45
    .local v0, "message":Lcom/boohee/one/onekey/model/PostMessage;
    iget-object v1, v0, Lcom/boohee/one/onekey/model/PostMessage;->user_status:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    const/4 v1, 0x0

    .line 48
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    .line 74
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/onekey/model/PostMessage;

    .line 75
    .local v0, "message":Lcom/boohee/one/onekey/model/PostMessage;
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->getItemViewType(I)I

    move-result v1

    .line 76
    .local v1, "type":I
    const/4 v3, 0x0

    .line 77
    .local v3, "viewHolderMessage":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;
    const/4 v2, 0x0

    .line 78
    .local v2, "viewHolderGuide":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;
    if-nez p2, :cond_2

    .line 79
    if-nez v1, :cond_1

    .line 80
    iget-object v4, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f030142

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 81
    new-instance v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;

    .end local v3    # "viewHolderMessage":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;
    invoke-direct {v3, p2}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;-><init>(Landroid/view/View;)V

    .line 82
    .restart local v3    # "viewHolderMessage":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 96
    :goto_0
    if-nez v1, :cond_9

    .line 97
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->tvContent:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/boohee/one/onekey/model/PostMessage;->title:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->tvCreateAt:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/boohee/one/onekey/model/PostMessage;->created_at:Ljava/lang/String;

    const-string v6, "yyyy-MM-dd HH:mm"

    invoke-static {v5, v6}, Lcom/boohee/utils/DateHelper;->timezoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    iget-object v4, v0, Lcom/boohee/one/onekey/model/PostMessage;->category:Ljava/lang/String;

    const-string v5, "food"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 100
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->ivPostType:Landroid/widget/ImageView;

    const v5, 0x7f020314

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 113
    :cond_0
    :goto_1
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->messageLayout:Landroid/view/View;

    new-instance v5, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$1;

    invoke-direct {v5, p0, v0}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$1;-><init>(Lcom/boohee/one/onekey/adapter/PostMessageAdapter;Lcom/boohee/one/onekey/model/PostMessage;)V

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :goto_2
    return-object p2

    .line 84
    :cond_1
    iget-object v4, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->context:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03025f

    invoke-virtual {v4, v5, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 85
    new-instance v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;

    .end local v2    # "viewHolderGuide":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;
    invoke-direct {v2, p2}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;-><init>(Landroid/view/View;)V

    .line 86
    .restart local v2    # "viewHolderGuide":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 89
    :cond_2
    if-nez v1, :cond_3

    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "viewHolderMessage":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;
    check-cast v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;

    .restart local v3    # "viewHolderMessage":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;
    goto :goto_0

    .line 92
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "viewHolderGuide":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;
    check-cast v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;

    .restart local v2    # "viewHolderGuide":Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;
    goto :goto_0

    .line 101
    :cond_4
    iget-object v4, v0, Lcom/boohee/one/onekey/model/PostMessage;->category:Ljava/lang/String;

    const-string v5, "sport"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 102
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->ivPostType:Landroid/widget/ImageView;

    const v5, 0x7f02031b

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 103
    :cond_5
    iget-object v4, v0, Lcom/boohee/one/onekey/model/PostMessage;->category:Ljava/lang/String;

    const-string v5, "video"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 104
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->ivPostType:Landroid/widget/ImageView;

    const v5, 0x7f020321

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 105
    :cond_6
    iget-object v4, v0, Lcom/boohee/one/onekey/model/PostMessage;->category:Ljava/lang/String;

    const-string v5, "product"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 106
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->ivPostType:Landroid/widget/ImageView;

    const v5, 0x7f020319

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 107
    :cond_7
    iget-object v4, v0, Lcom/boohee/one/onekey/model/PostMessage;->category:Ljava/lang/String;

    const-string v5, "test"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 108
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->ivPostType:Landroid/widget/ImageView;

    const v5, 0x7f02031c

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    .line 109
    :cond_8
    iget-object v4, v0, Lcom/boohee/one/onekey/model/PostMessage;->category:Ljava/lang/String;

    const-string v5, "tips"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, v3, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderMessage;->ivPostType:Landroid/widget/ImageView;

    const v5, 0x7f02031d

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 132
    :cond_9
    iget-object v4, v0, Lcom/boohee/one/onekey/model/PostMessage;->user_status:Ljava/lang/String;

    const-string v5, "to_profile"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 133
    iget-object v4, v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;->tvGuide:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703ee

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v4, v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;->tvGuideJump:Landroid/widget/TextView;

    const v5, 0x7f070555

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 135
    iget-object v4, v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;->ivGuide:Landroid/widget/ImageView;

    const v5, 0x7f020341

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v4, v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;->tvGuideJump:Landroid/widget/TextView;

    new-instance v5, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$2;

    invoke-direct {v5, p0}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$2;-><init>(Lcom/boohee/one/onekey/adapter/PostMessageAdapter;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2

    .line 147
    :cond_a
    iget-object v4, v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;->tvGuide:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/boohee/one/onekey/adapter/PostMessageAdapter;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0703ed

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    iget-object v4, v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;->tvGuideJump:Landroid/widget/TextView;

    const v5, 0x7f07023d

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 149
    iget-object v4, v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;->ivGuide:Landroid/widget/ImageView;

    const v5, 0x7f020340

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 150
    iget-object v4, v2, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$ViewHolderGuide;->tvGuideJump:Landroid/widget/TextView;

    new-instance v5, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$3;

    invoke-direct {v5, p0, v0}, Lcom/boohee/one/onekey/adapter/PostMessageAdapter$3;-><init>(Lcom/boohee/one/onekey/adapter/PostMessageAdapter;Lcom/boohee/one/onekey/model/PostMessage;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x2

    return v0
.end method
