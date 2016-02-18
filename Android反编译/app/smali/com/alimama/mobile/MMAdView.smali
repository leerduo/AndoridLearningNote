.class public Lcom/alimama/mobile/MMAdView;
.super Landroid/widget/FrameLayout;
.source "MMAdView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/alimama/mobile/a$a;


# instance fields
.field a:Lcom/alimama/mobile/a;

.field b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

.field c:Landroid/view/View;

.field d:Landroid/view/View;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/LinearLayout;

.field g:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alimama/mobile/MMAdView;->g:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alimama/mobile/MMAdView;->g:Z

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alimama/mobile/MMAdView;->g:Z

    .line 44
    return-void
.end method


# virtual methods
.method public dataReceived(ILjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/alimama/mobile/csdk/umupdate/models/Promoter;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v9, 0x4

    const/4 v8, -0x2

    const/4 v3, 0x0

    .line 76
    iget-boolean v0, p0, Lcom/alimama/mobile/MMAdView;->g:Z

    if-eqz v0, :cond_0

    .line 77
    const-string v0, "reviced mm promoters,but the activity is finish."

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/alimama/mobile/csdk/umupdate/a/g;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 105
    :goto_0
    return-void

    .line 79
    :cond_0
    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v3

    .line 81
    :goto_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    if-ge v2, v9, :cond_1

    .line 82
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    .line 83
    invoke-virtual {p0}, Lcom/alimama/mobile/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    invoke-virtual {v5}, Lcom/alimama/mobile/a;->d()Lcom/alimama/mobile/csdk/umupdate/a/h;

    move-result-object v5

    invoke-virtual {v5}, Lcom/alimama/mobile/csdk/umupdate/a/h;->b()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v1, v5, v6}, Lcom/alimama/mobile/MMAdView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 84
    invoke-virtual {v5, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    iget-object v1, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    invoke-virtual {v1}, Lcom/alimama/mobile/a;->d()Lcom/alimama/mobile/csdk/umupdate/a/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alimama/mobile/csdk/umupdate/a/h;->h()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 86
    invoke-virtual {p0}, Lcom/alimama/mobile/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;->icon:Ljava/lang/String;

    invoke-static {v6, v1, v7, v3}, Lcom/umeng/update/net/j;->a(Landroid/content/Context;Landroid/widget/ImageView;Ljava/lang/String;Z)V

    .line 88
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 89
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 90
    iget-object v6, p0, Lcom/alimama/mobile/MMAdView;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 97
    :cond_1
    iget-object v1, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    iget-object v2, p0, Lcom/alimama/mobile/MMAdView;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    invoke-interface {v4, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    invoke-virtual {v1, v2, v0}, Lcom/alimama/mobile/a;->a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;[Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)V

    .line 98
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 100
    :cond_2
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->d:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->e:Landroid/widget/TextView;

    const-string v1, "\u52a0\u8f7d\u5931\u8d25..."

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alimama/mobile/MMAdView;->g:Z

    .line 109
    return-void
.end method

.method public init(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-static {}, Lcom/alimama/mobile/a;->a()Lcom/alimama/mobile/a;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    .line 48
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    invoke-virtual {v0}, Lcom/alimama/mobile/a;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    invoke-virtual {p0}, Lcom/alimama/mobile/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/alimama/mobile/a;->a(Landroid/content/Context;)V

    .line 53
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/alimama/mobile/MMAdView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/alimama/mobile/a;->a()Lcom/alimama/mobile/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/mobile/a;->d()Lcom/alimama/mobile/csdk/umupdate/a/h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alimama/mobile/csdk/umupdate/a/h;->a()I

    move-result v2

    invoke-static {v0, v2, p0}, Lcom/alimama/mobile/MMAdView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    invoke-virtual {v0}, Lcom/alimama/mobile/a;->d()Lcom/alimama/mobile/csdk/umupdate/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/a/h;->d()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alimama/mobile/MMAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/MMAdView;->c:Landroid/view/View;

    .line 55
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    invoke-virtual {v0}, Lcom/alimama/mobile/a;->d()Lcom/alimama/mobile/csdk/umupdate/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/a/h;->e()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alimama/mobile/MMAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/alimama/mobile/MMAdView;->f:Landroid/widget/LinearLayout;

    .line 57
    new-instance v0, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    invoke-direct {v0, p1}, Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alimama/mobile/MMAdView;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    .line 58
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alimama/mobile/MMAdView;->setVisibility(I)V

    .line 59
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->c:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    invoke-virtual {v0}, Lcom/alimama/mobile/a;->d()Lcom/alimama/mobile/csdk/umupdate/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/a/h;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alimama/mobile/MMAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/alimama/mobile/MMAdView;->e:Landroid/widget/TextView;

    .line 62
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->e:Landroid/widget/TextView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 63
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    invoke-virtual {v0}, Lcom/alimama/mobile/a;->d()Lcom/alimama/mobile/csdk/umupdate/a/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alimama/mobile/csdk/umupdate/a/h;->g()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/alimama/mobile/MMAdView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alimama/mobile/MMAdView;->d:Landroid/view/View;

    .line 64
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 66
    iget-object v0, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    iget-object v2, p0, Lcom/alimama/mobile/MMAdView;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    invoke-virtual {v0, v2, p0}, Lcom/alimama/mobile/a;->a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/a$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const/4 v0, 0x1

    .line 70
    :goto_0
    return v0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    const-string v2, "mmsdk"

    const-string v3, "An error occurred while initializing MMAdView."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 70
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 113
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alimama/mobile/csdk/umupdate/models/Promoter;

    .line 115
    iget-object v1, p0, Lcom/alimama/mobile/MMAdView;->a:Lcom/alimama/mobile/a;

    iget-object v2, p0, Lcom/alimama/mobile/MMAdView;->b:Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;

    invoke-virtual {v1, v2, v0}, Lcom/alimama/mobile/a;->a(Lcom/alimama/mobile/csdk/umupdate/models/MMEntity;Lcom/alimama/mobile/csdk/umupdate/models/Promoter;)V

    .line 117
    :cond_0
    return-void
.end method
