.class public Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;
.super Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;
.source "HomeTimelineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;,
        Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$AvatarClickListener;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String;


# instance fields
.field private mIsGroup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 38
    .local p2, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Post;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->mIsGroup:Z

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/util/ArrayList;Z)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p3, "isGroup"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/boohee/model/status/Post;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 42
    .local p2, "posts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/boohee/model/status/Post;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/BaseTimelineAdapter;-><init>(Landroid/app/Activity;Ljava/util/ArrayList;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->mIsGroup:Z

    .line 43
    iput-boolean p3, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->mIsGroup:Z

    .line 44
    return-void
.end method

.method private initAvatar(Landroid/widget/ImageView;Lcom/boohee/model/status/Post;)V
    .locals 3
    .param p1, "avatar"    # Landroid/widget/ImageView;
    .param p2, "post"    # Lcom/boohee/model/status/Post;

    .prologue
    .line 121
    iget-object v0, p2, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v0, v0, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->imageLoader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v1, p2, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 126
    :goto_0
    new-instance v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$AvatarClickListener;

    invoke-direct {v0, p0, p2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$AvatarClickListener;-><init>(Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;Lcom/boohee/model/status/Post;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void

    .line 124
    :cond_0
    const v0, 0x7f02011a

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private initAvatarTag(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lcom/boohee/model/status/Post;)V
    .locals 3
    .param p1, "lightProgress"    # Landroid/widget/ProgressBar;
    .param p2, "officialImage"    # Landroid/widget/ImageView;
    .param p3, "post"    # Lcom/boohee/model/status/Post;

    .prologue
    const/4 v2, 0x0

    .line 91
    iget-object v1, p3, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    iget-boolean v1, v1, Lcom/boohee/model/status/StatusUser;->light:Z

    if-eqz v1, :cond_0

    .line 92
    invoke-virtual {p1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    :goto_0
    iget-object v1, p3, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    invoke-virtual {v1}, Lcom/boohee/model/status/StatusUser;->getAvatarTagResource()I

    move-result v0

    .line 98
    .local v0, "drawableRes":I
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-virtual {p2, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 104
    :goto_1
    return-void

    .line 94
    .end local v0    # "drawableRes":I
    :cond_0
    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 102
    .restart local v0    # "drawableRes":I
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method private initMarkImage(Landroid/widget/ImageView;Lcom/boohee/model/status/Post;)V
    .locals 2
    .param p1, "markImage"    # Landroid/widget/ImageView;
    .param p2, "post"    # Lcom/boohee/model/status/Post;

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p2, Lcom/boohee/model/status/Post;->current_reposted_user:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    const v0, 0x7f02047d

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    :goto_0
    return-void

    .line 111
    :cond_0
    iget-boolean v0, p2, Lcom/boohee/model/status/Post;->isPrivate:Z

    if-eqz v0, :cond_1

    .line 112
    const v0, 0x7f020453

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 115
    :cond_1
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private initMenu(Landroid/view/View;I)V
    .locals 1
    .param p1, "menuBtn"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->mIsGroup:Z

    if-eqz v0, :cond_0

    .line 154
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 164
    :goto_0
    return-void

    .line 156
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 157
    new-instance v0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$1;-><init>(Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method private initRepostUser(Landroid/widget/TextView;Lcom/boohee/model/status/Post;)V
    .locals 2
    .param p1, "repostUser"    # Landroid/widget/TextView;
    .param p2, "post"    # Lcom/boohee/model/status/Post;

    .prologue
    .line 168
    iget-object v0, p2, Lcom/boohee/model/status/Post;->current_reposted_user:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7531 @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p2, Lcom/boohee/model/status/Post;->current_reposted_user:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u63a8\u8350"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 170
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 174
    :goto_0
    return-void

    .line 172
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 48
    const/4 v6, 0x0

    .line 49
    .local v6, "holder":Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;
    if-nez p2, :cond_0

    .line 50
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->activity:Landroid/app/Activity;

    const v1, 0x7f0301d9

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    new-instance v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;

    .end local v6    # "holder":Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;
    invoke-direct {v6, p0, p2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;-><init>(Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;Landroid/view/View;)V

    .line 52
    .restart local v6    # "holder":Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;
    invoke-virtual {p2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 57
    :goto_0
    invoke-virtual {p0, p1}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->getItem(I)Lcom/boohee/model/status/Post;

    move-result-object v2

    .line 59
    .local v2, "post":Lcom/boohee/model/status/Post;
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->avatarImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->initAvatar(Landroid/widget/ImageView;Lcom/boohee/model/status/Post;)V

    .line 60
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->lightProgress:Landroid/widget/ProgressBar;

    iget-object v1, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->officialImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v1, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->initAvatarTag(Landroid/widget/ProgressBar;Landroid/widget/ImageView;Lcom/boohee/model/status/Post;)V

    .line 61
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->nickName:Landroid/widget/TextView;

    iget-object v1, v2, Lcom/boohee/model/status/Post;->user:Lcom/boohee/model/status/StatusUser;

    iget-object v1, v1, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->nickName:Landroid/widget/TextView;

    new-instance v1, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$AvatarClickListener;

    invoke-direct {v1, p0, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$AvatarClickListener;-><init>(Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;Lcom/boohee/model/status/Post;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->postTime:Landroid/widget/TextView;

    iget-object v1, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->body:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->initTimeAndBody(Landroid/widget/TextView;Landroid/widget/TextView;Lcom/boohee/model/status/Post;)V

    .line 64
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->resource:Landroid/content/res/Resources;

    iget-object v3, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->PREVIEW_COLORS:[I

    iget-object v4, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->PREVIEW_COLORS:[I

    array-length v4, v4

    rem-int v4, p1, v4

    aget v3, v3, v4

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->mDefaultImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->nineGridLayout:Lcom/boohee/myview/NineGridLayout;

    iget-object v1, v2, Lcom/boohee/model/status/Post;->photos:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->initPostImage(Lcom/boohee/myview/NineGridLayout;Ljava/util/ArrayList;)V

    .line 67
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->markImage:Landroid/widget/ImageView;

    invoke-direct {p0, v0, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->initMarkImage(Landroid/widget/ImageView;Lcom/boohee/model/status/Post;)V

    .line 68
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->attachmentLayout:Landroid/widget/LinearLayout;

    iget-object v1, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->tvAttachment:Landroid/widget/TextView;

    iget-object v3, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->ivAttachment:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/boohee/model/status/Post;->attachments:Lcom/boohee/model/status/AttachMent;

    invoke-virtual {p0, v0, v1, v3, v4}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->initAttachment(Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/boohee/model/status/AttachMent;)V

    .line 71
    iget-boolean v0, v2, Lcom/boohee/model/status/Post;->disabled:Z

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->ll_bottom:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->repostUser:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    :goto_1
    return-object p2

    .line 54
    .end local v2    # "post":Lcom/boohee/model/status/Post;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "holder":Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;
    check-cast v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;

    .restart local v6    # "holder":Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;
    goto :goto_0

    .line 75
    .restart local v2    # "post":Lcom/boohee/model/status/Post;
    :cond_1
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->ll_bottom:Landroid/view/View;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 76
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->repostUser:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 77
    iget-object v8, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->rl_praise:Landroid/view/View;

    new-instance v0, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;

    iget-object v1, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->activity:Landroid/app/Activity;

    iget-object v3, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->rl_praise:Landroid/view/View;

    iget-object v4, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->cb_praise:Landroid/widget/CheckBox;

    iget-object v5, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->tv_praise_plus:Landroid/widget/TextView;

    invoke-direct/range {v0 .. v5}, Lcom/boohee/utility/TimeLineUtility$PraiseClickListener;-><init>(Landroid/app/Activity;Lcom/boohee/model/status/Post;Landroid/view/View;Landroid/widget/CheckBox;Landroid/widget/TextView;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->tv_comment:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v2, Lcom/boohee/model/status/Post;->comment_count:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->cb_praise:Landroid/widget/CheckBox;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v2, Lcom/boohee/model/status/Post;->envious_count:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 80
    iget-object v1, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->cb_praise:Landroid/widget/CheckBox;

    iget-object v0, v2, Lcom/boohee/model/status/Post;->feedback:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 81
    iget-object v0, p0, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->activity:Landroid/app/Activity;

    iget-object v1, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->ll_comment:Landroid/view/View;

    iget-object v3, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->tv_comment:Landroid/widget/TextView;

    invoke-static {v0, v1, v3, v2, p1}, Lcom/boohee/utility/TimeLineUtility;->initCommentButton(Landroid/app/Activity;Landroid/view/View;Landroid/widget/TextView;Lcom/boohee/model/status/Post;I)V

    .line 82
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->ll_menu:Landroid/view/View;

    invoke-direct {p0, v0, p1}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->initMenu(Landroid/view/View;I)V

    .line 83
    iget-object v0, v6, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter$Holder;->repostUser:Landroid/widget/TextView;

    invoke-direct {p0, v0, v2}, Lcom/boohee/one/ui/adapter/HomeTimelineAdapter;->initRepostUser(Landroid/widget/TextView;Lcom/boohee/model/status/Post;)V

    goto :goto_1

    :cond_2
    move v0, v7

    .line 80
    goto :goto_2
.end method
