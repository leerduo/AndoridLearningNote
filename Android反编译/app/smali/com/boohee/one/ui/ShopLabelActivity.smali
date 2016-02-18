.class public Lcom/boohee/one/ui/ShopLabelActivity;
.super Lcom/boohee/main/GestureActivity;
.source "ShopLabelActivity.java"


# static fields
.field public static final EXTRA_LABEL_ID:Ljava/lang/String; = "extra_label_id"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method

.method public static start(Landroid/content/Context;I)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "label_id"    # I

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/boohee/one/ui/ShopLabelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 22
    .local v0, "starter":Landroid/content/Intent;
    const-string v1, "extra_label_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    const v1, 0x7f03006c

    invoke-virtual {p0, v1}, Lcom/boohee/one/ui/ShopLabelActivity;->setContentView(I)V

    .line 30
    invoke-virtual {p0}, Lcom/boohee/one/ui/ShopLabelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_label_id"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 31
    .local v0, "label_id":I
    invoke-virtual {p0}, Lcom/boohee/one/ui/ShopLabelActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    const v2, 0x7f0e0161

    invoke-static {v0}, Lcom/boohee/one/ui/fragment/ShopLabelFragment;->newInstance(I)Lcom/boohee/one/ui/fragment/ShopLabelFragment;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 35
    return-void
.end method
