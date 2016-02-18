.class Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "FeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/more/FeedbackActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/boohee/more/FeedbackActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/more/FeedbackActivity;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->this$0:Lcom/boohee/more/FeedbackActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 125
    iput-object p2, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->context:Landroid/content/Context;

    .line 126
    return-void
.end method

.method static synthetic access$600(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;

    .prologue
    .line 121
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/boohee/model/Feedback;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Feedback;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 121
    invoke-virtual {p0, p1}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->getItem(I)Lcom/boohee/model/Feedback;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 143
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 147
    invoke-virtual {p0, p1}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->getItem(I)Lcom/boohee/model/Feedback;

    move-result-object v0

    .line 148
    .local v0, "feedback":Lcom/boohee/model/Feedback;
    invoke-virtual {v0}, Lcom/boohee/model/Feedback;->isUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 149
    const/4 v1, 0x0

    .line 151
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 161
    const/4 v2, 0x0

    .line 162
    .local v2, "chatHolder":Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 163
    new-instance v2, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;

    .end local v2    # "chatHolder":Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;
    invoke-direct {v2, p0, v7}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;-><init>(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;Lcom/boohee/more/FeedbackActivity$1;)V

    .line 164
    .restart local v2    # "chatHolder":Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;
    invoke-virtual {p0, p1}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->getItem(I)Lcom/boohee/model/Feedback;

    move-result-object v3

    invoke-virtual {v3}, Lcom/boohee/model/Feedback;->isUser()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 165
    iget-object v3, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c3

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 171
    :goto_0
    const v3, 0x7f0e017a

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$202(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 172
    const v3, 0x7f0e02e6

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {v2, v3}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$302(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 173
    const v3, 0x7f0e02e7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-static {v2, v3}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$402(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 174
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 178
    :goto_1
    iget-object v3, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->feedbacks:Ljava/util/ArrayList;
    invoke-static {v3}, Lcom/boohee/more/FeedbackActivity;->access$000(Lcom/boohee/more/FeedbackActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Feedback;

    .line 180
    .local v0, "bean":Lcom/boohee/model/Feedback;
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$200(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lcom/boohee/model/Feedback;->d:Ljava/lang/String;

    const-string v5, "T"

    const-string v6, " "

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "+08:00"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 181
    iget-object v3, v0, Lcom/boohee/model/Feedback;->m:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 182
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$300(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$300(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v4, v0, Lcom/boohee/model/Feedback;->m:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 188
    :goto_2
    invoke-virtual {v0}, Lcom/boohee/model/Feedback;->getSmall_photo_url()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 189
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$400(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 190
    iget-object v3, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->this$0:Lcom/boohee/more/FeedbackActivity;

    # getter for: Lcom/boohee/more/FeedbackActivity;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v3}, Lcom/boohee/more/FeedbackActivity;->access$500(Lcom/boohee/more/FeedbackActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v3

    invoke-virtual {v0}, Lcom/boohee/model/Feedback;->getSmall_photo_url()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$400(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-static {v8}, Lcom/boohee/utility/ImageLoaderOptions;->custom(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 196
    :goto_3
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$300(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    new-instance v4, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$1;

    invoke-direct {v4, p0}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$1;-><init>(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;)V

    invoke-static {v3, v4}, Lcom/boohee/utils/LinkUtils;->autoLink(Landroid/widget/TextView;Lcom/boohee/utils/LinkUtils$OnClickListener;)V

    .line 213
    invoke-virtual {v0}, Lcom/boohee/model/Feedback;->getBig_photo_url()Ljava/lang/String;

    move-result-object v1

    .line 214
    .local v1, "bigPhoto":Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$400(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 215
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$400(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    new-instance v4, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$2;

    invoke-direct {v4, p0, v1}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$2;-><init>(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    :cond_0
    return-object p2

    .line 168
    .end local v0    # "bean":Lcom/boohee/model/Feedback;
    .end local v1    # "bigPhoto":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter;->context:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0300c1

    invoke-virtual {v3, v4, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 176
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "chatHolder":Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;
    check-cast v2, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;

    .restart local v2    # "chatHolder":Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;
    goto/16 :goto_1

    .line 185
    .restart local v0    # "bean":Lcom/boohee/model/Feedback;
    :cond_3
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$300(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 193
    :cond_4
    invoke-static {v2}, Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;->access$400(Lcom/boohee/more/FeedbackActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x2

    return v0
.end method
