.class Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;
.super Landroid/widget/BaseAdapter;
.source "OneKeyContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/onekey/OneKeyContactActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FeedbackAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private TYPE_PICTURE:I

.field private TYPE_TEXT:I

.field private context:Landroid/content/Context;

.field final synthetic this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/onekey/OneKeyContactActivity;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 373
    iput-object p1, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 370
    const/4 v0, 0x1

    iput v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->TYPE_TEXT:I

    .line 371
    const/4 v0, 0x2

    iput v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->TYPE_PICTURE:I

    .line 374
    iput-object p2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->context:Landroid/content/Context;

    .line 375
    return-void
.end method

.method static synthetic access$1800(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;

    .prologue
    .line 368
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->context:Landroid/content/Context;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    .line 380
    const/4 v0, 0x0

    .line 382
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Lcom/boohee/one/onekey/model/ContactMessage;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 387
    iget-object v0, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->contactMessages:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$000(Lcom/boohee/one/onekey/OneKeyContactActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/one/onekey/model/ContactMessage;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 368
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->getItem(I)Lcom/boohee/one/onekey/model/ContactMessage;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 392
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 396
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->getItem(I)Lcom/boohee/one/onekey/model/ContactMessage;

    move-result-object v0

    .line 397
    .local v0, "message":Lcom/boohee/one/onekey/model/ContactMessage;
    invoke-virtual {v0}, Lcom/boohee/one/onekey/model/ContactMessage;->isUser()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const/4 v1, 0x0

    .line 400
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 410
    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->getItem(I)Lcom/boohee/one/onekey/model/ContactMessage;

    move-result-object v1

    .line 411
    .local v1, "message":Lcom/boohee/one/onekey/model/ContactMessage;
    const/4 v0, 0x0

    .line 412
    .local v0, "chatHolder":Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;
    if-nez p2, :cond_2

    .line 413
    new-instance v0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;

    .end local v0    # "chatHolder":Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;
    invoke-direct {v0, p0, v6}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;Lcom/boohee/one/onekey/OneKeyContactActivity$1;)V

    .line 414
    .restart local v0    # "chatHolder":Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/boohee/one/onekey/model/ContactMessage;->sender:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->getItem(I)Lcom/boohee/one/onekey/model/ContactMessage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/boohee/one/onekey/model/ContactMessage;->isUser()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 415
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301a7

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 421
    :goto_0
    const v2, 0x7f0e017a

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1302(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 422
    const v2, 0x7f0e02e6

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-static {v0, v2}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1402(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 423
    const v2, 0x7f0e02e7

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1502(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 424
    const v2, 0x7f0e01d8

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-static {v0, v2}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1602(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;Lde/hdodenhof/circleimageview/CircleImageView;)Lde/hdodenhof/circleimageview/CircleImageView;

    .line 425
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 430
    :goto_1
    iget-object v2, v1, Lcom/boohee/one/onekey/model/ContactMessage;->created_at:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 431
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1300(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/boohee/one/onekey/model/ContactMessage;->created_at:Ljava/lang/String;

    const-string v4, "yyyy-MM-dd HH:mm"

    invoke-static {v3, v4}, Lcom/boohee/utils/DateHelper;->timezoneFormat(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 433
    :cond_0
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$1700(Lcom/boohee/one/onekey/OneKeyContactActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v1, Lcom/boohee/one/onekey/model/ContactMessage;->avatar_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1600(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v4

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 435
    invoke-virtual {v1}, Lcom/boohee/one/onekey/model/ContactMessage;->isUser()Z

    move-result v2

    if-nez v2, :cond_3

    .line 436
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1600(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$1;

    invoke-direct {v3, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$1;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;)V

    invoke-virtual {v2, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 451
    :goto_2
    iget-object v2, v1, Lcom/boohee/one/onekey/model/ContactMessage;->type:Ljava/lang/String;

    const-string v3, "text"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 452
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1400(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 453
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1400(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, v1, Lcom/boohee/one/onekey/model/ContactMessage;->content:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1400(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$3;

    invoke-direct {v3, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$3;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;)V

    const-string v4, "((https?|ftp|boohee)(:\\/\\/[-_.!~*\\\'()a-zA-Z0-9;\\/?:\\@&=+\\$,%#]+))"

    invoke-static {v2, v3, v4}, Lcom/boohee/utils/LinkUtils;->autoLink(Landroid/widget/TextView;Lcom/boohee/utils/LinkUtils$OnClickListener;Ljava/lang/String;)V

    .line 473
    :goto_3
    iget-object v2, v1, Lcom/boohee/one/onekey/model/ContactMessage;->type:Ljava/lang/String;

    const-string v3, "picture"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 474
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1500(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 475
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->this$0:Lcom/boohee/one/onekey/OneKeyContactActivity;

    # getter for: Lcom/boohee/one/onekey/OneKeyContactActivity;->loader:Lcom/nostra13/universalimageloader/core/ImageLoader;
    invoke-static {v2}, Lcom/boohee/one/onekey/OneKeyContactActivity;->access$1700(Lcom/boohee/one/onekey/OneKeyContactActivity;)Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v2

    iget-object v3, v1, Lcom/boohee/one/onekey/model/ContactMessage;->small_photo_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1500(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v4

    invoke-static {v7}, Lcom/boohee/utility/ImageLoaderOptions;->custom(I)Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;Lcom/nostra13/universalimageloader/core/listener/ImageLoadingListener;)V

    .line 478
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1500(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$4;

    invoke-direct {v3, p0, v1}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$4;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;Lcom/boohee/one/onekey/model/ContactMessage;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    :goto_4
    return-object p2

    .line 418
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0301a6

    invoke-virtual {v2, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto/16 :goto_0

    .line 427
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "chatHolder":Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;
    check-cast v0, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;

    .restart local v0    # "chatHolder":Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;
    goto/16 :goto_1

    .line 443
    :cond_3
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1600(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Lde/hdodenhof/circleimageview/CircleImageView;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$2;

    invoke-direct {v3, p0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$2;-><init>(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter;)V

    invoke-virtual {v2, v3}, Lde/hdodenhof/circleimageview/CircleImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 470
    :cond_4
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1400(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 488
    :cond_5
    invoke-static {v0}, Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;->access$1500(Lcom/boohee/one/onekey/OneKeyContactActivity$FeedbackAdapter$ViewHolder;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_4
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x2

    return v0
.end method
