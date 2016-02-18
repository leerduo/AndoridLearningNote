.class Lcom/boohee/one/video/ui/SportSettingActivity$5;
.super Ljava/lang/Object;
.source "SportSettingActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SportSettingActivity;->sportQuestions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/SportSettingActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/SportSettingActivity;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/boohee/one/video/ui/SportSettingActivity$5;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    .line 171
    const-string v1, "/api/v1/questions/sports_v2.html"

    invoke-static {v1}, Lcom/boohee/one/http/client/BingoClient;->getAbsoluteUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "url":Ljava/lang/String;
    iget-object v1, p0, Lcom/boohee/one/video/ui/SportSettingActivity$5;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    # getter for: Lcom/boohee/one/video/ui/SportSettingActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/one/video/ui/SportSettingActivity;->access$200(Lcom/boohee/one/video/ui/SportSettingActivity;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "\u8bc4\u6d4b"

    invoke-static {v1, v2, v0}, Lcom/boohee/one/ui/BrowserActivity;->comeOnBaby(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/boohee/one/video/ui/SportSettingActivity$5;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    invoke-virtual {v1}, Lcom/boohee/one/video/ui/SportSettingActivity;->finish()V

    .line 174
    return-void
.end method
