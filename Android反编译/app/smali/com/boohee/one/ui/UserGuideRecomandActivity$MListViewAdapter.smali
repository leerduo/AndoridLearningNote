.class Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserGuideRecomandActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/UserGuideRecomandActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MListViewAdapter"
.end annotation


# instance fields
.field private imageloader:Lcom/nostra13/universalimageloader/core/ImageLoader;

.field final synthetic this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;


# direct methods
.method public constructor <init>(Lcom/boohee/one/ui/UserGuideRecomandActivity;)V
    .locals 1

    .prologue
    .line 197
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 198
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;->imageloader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    .line 199
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$200(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 208
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;
    invoke-static {v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$200(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 213
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "holder":Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;
    if-nez p2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->li:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$400(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v5, 0x7f030172

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 221
    new-instance v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;

    .end local v0    # "holder":Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;
    invoke-direct {v0}, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;-><init>()V

    .line 222
    .restart local v0    # "holder":Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;
    const v2, 0x7f0e047f

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->photoImage:Landroid/widget/ImageView;

    .line 224
    const v2, 0x7f0e0480

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->userName:Landroid/widget/TextView;

    .line 226
    const v2, 0x7f0e0481

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->userBMI:Landroid/widget/TextView;

    .line 228
    const v2, 0x7f0e0482

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    iput-object v2, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    .line 230
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 235
    :goto_0
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;->this$0:Lcom/boohee/one/ui/UserGuideRecomandActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideRecomandActivity;->mFriendsUsers:Ljava/util/List;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideRecomandActivity;->access$200(Lcom/boohee/one/ui/UserGuideRecomandActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/model/status/StatusUser;

    .line 236
    .local v1, "user":Lcom/boohee/model/status/StatusUser;
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideRecomandActivity$MListViewAdapter;->imageloader:Lcom/nostra13/universalimageloader/core/ImageLoader;

    iget-object v5, v1, Lcom/boohee/model/status/StatusUser;->avatar_url:Ljava/lang/String;

    iget-object v6, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->photoImage:Landroid/widget/ImageView;

    invoke-static {}, Lcom/boohee/utility/ImageLoaderOptions;->avatar()Lcom/nostra13/universalimageloader/core/DisplayImageOptions;

    move-result-object v7

    invoke-virtual {v2, v5, v6, v7}, Lcom/nostra13/universalimageloader/core/ImageLoader;->displayImage(Ljava/lang/String;Landroid/widget/ImageView;Lcom/nostra13/universalimageloader/core/DisplayImageOptions;)V

    .line 238
    iget-object v2, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->userName:Landroid/widget/TextView;

    iget-object v5, v1, Lcom/boohee/model/status/StatusUser;->nickname:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v2, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->userBMI:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "BMI "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%.1f"

    new-array v7, v3, [Ljava/lang/Object;

    iget v8, v1, Lcom/boohee/model/status/StatusUser;->bmi:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v5, v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;->radioButton:Landroid/widget/RadioButton;

    iget-boolean v2, v1, Lcom/boohee/model/status/StatusUser;->following:Z

    if-nez v2, :cond_1

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 241
    return-object p2

    .line 232
    .end local v1    # "user":Lcom/boohee/model/status/StatusUser;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "holder":Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;
    check-cast v0, Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;

    .restart local v0    # "holder":Lcom/boohee/one/ui/UserGuideRecomandActivity$ViewHolder;
    goto :goto_0

    .restart local v1    # "user":Lcom/boohee/model/status/StatusUser;
    :cond_1
    move v2, v4

    .line 240
    goto :goto_1
.end method
