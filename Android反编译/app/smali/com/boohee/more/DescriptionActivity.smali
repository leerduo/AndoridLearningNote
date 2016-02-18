.class public Lcom/boohee/more/DescriptionActivity;
.super Lcom/boohee/main/GestureActivity;
.source "DescriptionActivity.java"


# static fields
.field public static final ABOUT_INDEX:I = 0x1

.field public static final CLAUSE_INDEX:I = 0x2

.field public static final LEVEL_INDEX:I


# instance fields
.field private content:Landroid/widget/TextView;

.field private index:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method private initUI()V
    .locals 2

    .prologue
    .line 29
    iget v0, p0, Lcom/boohee/more/DescriptionActivity;->index:I

    packed-switch v0, :pswitch_data_0

    .line 43
    :goto_0
    return-void

    .line 32
    :pswitch_0
    iget-object v0, p0, Lcom/boohee/more/DescriptionActivity;->content:Landroid/widget/TextView;

    const v1, 0x7f070247

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 35
    :pswitch_1
    const v0, 0x7f0700a7

    invoke-virtual {p0, v0}, Lcom/boohee/more/DescriptionActivity;->setTitle(I)V

    .line 36
    iget-object v0, p0, Lcom/boohee/more/DescriptionActivity;->content:Landroid/widget/TextView;

    const v1, 0x7f0700a8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 39
    :pswitch_2
    const v0, 0x7f07052c

    invoke-virtual {p0, v0}, Lcom/boohee/more/DescriptionActivity;->setTitle(I)V

    .line 40
    iget-object v0, p0, Lcom/boohee/more/DescriptionActivity;->content:Landroid/widget/TextView;

    const v1, 0x7f07052d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 29
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const v0, 0x7f0300b1

    invoke-virtual {p0, v0}, Lcom/boohee/more/DescriptionActivity;->setContentView(I)V

    .line 23
    invoke-virtual {p0}, Lcom/boohee/more/DescriptionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "index"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/boohee/more/DescriptionActivity;->index:I

    .line 24
    const v0, 0x7f0e02ce

    invoke-virtual {p0, v0}, Lcom/boohee/more/DescriptionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/more/DescriptionActivity;->content:Landroid/widget/TextView;

    .line 25
    invoke-direct {p0}, Lcom/boohee/more/DescriptionActivity;->initUI()V

    .line 26
    return-void
.end method
