.class Lcom/boohee/one/ui/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/ui/MainActivity;->showAlert()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/MainActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/ui/MainActivity;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/boohee/one/ui/MainActivity$3;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/boohee/one/ui/MainActivity$3;->this$0:Lcom/boohee/one/ui/MainActivity;

    invoke-static {v0}, Lcom/boohee/utils/BooheeAlert;->showAllDialog(Lcom/boohee/one/ui/MainActivity;)Z

    .line 209
    return-void
.end method
