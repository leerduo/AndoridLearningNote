.class public Lcom/boohee/one/ui/PreferenceActivity;
.super Lcom/boohee/main/GestureActivity;
.source "PreferenceActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/boohee/main/GestureActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 16
    invoke-super {p0, p1}, Lcom/boohee/main/GestureActivity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    const v0, 0x7f0700ae

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/PreferenceActivity;->setTitle(I)V

    .line 18
    const v0, 0x7f03006c

    invoke-virtual {p0, v0}, Lcom/boohee/one/ui/PreferenceActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcom/boohee/one/ui/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0e0161

    new-instance v2, Lcom/boohee/one/ui/fragment/PreferenceFragment;

    invoke-direct {v2}, Lcom/boohee/one/ui/fragment/PreferenceFragment;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 21
    return-void
.end method
