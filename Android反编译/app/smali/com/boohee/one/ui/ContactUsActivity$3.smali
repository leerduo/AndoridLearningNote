.class Lcom/boohee/one/ui/ContactUsActivity$3;
.super Ljava/lang/Object;
.source "ContactUsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/ContactUsActivity;->sendEmail(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/ContactUsActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/ContactUsActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/boohee/one/ui/ContactUsActivity$3;->this$0:Lcom/boohee/one/ui/ContactUsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 124
    return-void
.end method
