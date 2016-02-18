.class Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;
.super Landroid/widget/BaseAdapter;
.source "UserGuideChooseInterestActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/UserGuideChooseInterestActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MGridAdapter"
.end annotation


# instance fields
.field final drawables:[I

.field final synthetic this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)V
    .locals 1

    .prologue
    .line 103
    iput-object p1, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 104
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->drawables:[I

    return-void

    :array_0
    .array-data 4
        0x7f020380
        0x7f02037e
        0x7f02037c
        0x7f02037f
        0x7f020381
        0x7f02037d
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/UserGuideChooseInterestActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/UserGuideChooseInterestActivity$1;

    .prologue
    .line 103
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;-><init>(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->drawables:[I

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 120
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 125
    if-nez p2, :cond_0

    .line 126
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->li:Landroid/view/LayoutInflater;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$400(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f030107

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 127
    :cond_0
    const v2, 0x7f0e038b

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 129
    .local v1, "text":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    iget-object v2, v2, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->titles:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    if-nez p1, :cond_1

    .line 133
    const v2, 0x7f0e038c

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 136
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    # getter for: Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->tags:[Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->access$100(Lcom/boohee/one/ui/UserGuideChooseInterestActivity;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    iget-object v3, v3, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->titles:[Ljava/lang/String;

    aget-object v3, v3, p1

    aput-object v3, v2, p1

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->this$0:Lcom/boohee/one/ui/UserGuideChooseInterestActivity;

    invoke-virtual {v2}, Lcom/boohee/one/ui/UserGuideChooseInterestActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/boohee/one/ui/UserGuideChooseInterestActivity$MGridAdapter;->drawables:[I

    aget v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 140
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    invoke-virtual {v0, v5, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 141
    invoke-virtual {v1, v4, v0, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 142
    return-object p2
.end method
