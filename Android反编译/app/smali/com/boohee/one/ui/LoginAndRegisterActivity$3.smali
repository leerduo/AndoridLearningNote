.class Lcom/boohee/one/ui/LoginAndRegisterActivity$3;
.super Ljava/lang/Object;
.source "LoginAndRegisterActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/LoginAndRegisterActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/LoginAndRegisterActivity;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$3;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 168
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$3;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$200(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 169
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const v4, 0x7f0702f1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 170
    const v4, 0x7f07001c

    new-instance v5, Lcom/boohee/one/ui/LoginAndRegisterActivity$3$1;

    invoke-direct {v5, p0}, Lcom/boohee/one/ui/LoginAndRegisterActivity$3$1;-><init>(Lcom/boohee/one/ui/LoginAndRegisterActivity$3;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 176
    iget-object v4, p0, Lcom/boohee/one/ui/LoginAndRegisterActivity$3;->this$0:Lcom/boohee/one/ui/LoginAndRegisterActivity;

    # getter for: Lcom/boohee/one/ui/LoginAndRegisterActivity;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/boohee/one/ui/LoginAndRegisterActivity;->access$200(Lcom/boohee/one/ui/LoginAndRegisterActivity;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f03024d

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 177
    .local v2, "contentView":Landroid/view/View;
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 178
    const v4, 0x7f0e019b

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 179
    .local v0, "accountEdit":Landroid/widget/EditText;
    const v4, 0x7f0e0705

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 180
    .local v3, "passwordEdit":Landroid/widget/EditText;
    const v4, 0x7f070300

    new-instance v5, Lcom/boohee/one/ui/LoginAndRegisterActivity$3$2;

    invoke-direct {v5, p0, v0, v3}, Lcom/boohee/one/ui/LoginAndRegisterActivity$3$2;-><init>(Lcom/boohee/one/ui/LoginAndRegisterActivity$3;Landroid/widget/EditText;Landroid/widget/EditText;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 187
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 188
    return-void
.end method
