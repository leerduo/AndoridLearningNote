.class public Lcom/boohee/food/LightIntroduceActivity;
.super Lcom/boohee/main/GestureActivity;
.source "LightIntroduceActivity.java"


# static fields
.field public static final COLOR_GREEN:Ljava/lang/String; = "#59B700"

.field public static final COLOR_RED:Ljava/lang/String; = "#FF3300"

.field public static final COLOR_YELLOW:Ljava/lang/String; = "#FFB700"


# instance fields
.field tvGreen:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0193
    .end annotation
.end field

.field tvRed:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0199
    .end annotation
.end field

.field tvYellow:Landroid/widget/TextView;
    .annotation build Lbutterknife/InjectView;
        value = 0x7f0e0196
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method public static comeOnBaby(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/food/LightIntroduceActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 66
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 67
    return-void
.end method

.method private setItemText(ILjava/lang/String;ILandroid/widget/TextView;)V
    .locals 3
    .param p1, "title"    # I
    .param p2, "color"    # Ljava/lang/String;
    .param p3, "content"    # I
    .param p4, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    const-string v1, "<big><big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {p0}, Lcom/boohee/food/LightIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, "</big></big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v1, "</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "<big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {p0}, Lcom/boohee/food/LightIntroduceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v1, "</big>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/boohee/food/LightIntroduceActivity;->setContentView(I)V

    .line 39
    invoke-static {p0}, Lbutterknife/ButterKnife;->inject(Landroid/app/Activity;)V

    .line 41
    const v0, 0x7f0702f3

    const-string v1, "#59B700"

    const v2, 0x7f0702f2

    iget-object v3, p0, Lcom/boohee/food/LightIntroduceActivity;->tvGreen:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/LightIntroduceActivity;->setItemText(ILjava/lang/String;ILandroid/widget/TextView;)V

    .line 42
    const v0, 0x7f0702f8

    const-string v1, "#FFB700"

    const v2, 0x7f0702f7

    iget-object v3, p0, Lcom/boohee/food/LightIntroduceActivity;->tvYellow:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/LightIntroduceActivity;->setItemText(ILjava/lang/String;ILandroid/widget/TextView;)V

    .line 43
    const v0, 0x7f0702f5

    const-string v1, "#FF3300"

    const v2, 0x7f0702f4

    iget-object v3, p0, Lcom/boohee/food/LightIntroduceActivity;->tvRed:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/boohee/food/LightIntroduceActivity;->setItemText(ILjava/lang/String;ILandroid/widget/TextView;)V

    .line 44
    return-void
.end method
