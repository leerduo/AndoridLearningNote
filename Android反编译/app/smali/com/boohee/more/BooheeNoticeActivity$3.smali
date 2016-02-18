.class Lcom/boohee/more/BooheeNoticeActivity$3;
.super Ljava/lang/Object;
.source "BooheeNoticeActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/more/BooheeNoticeActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/more/BooheeNoticeActivity;


# direct methods
.method constructor <init>(Lcom/boohee/more/BooheeNoticeActivity;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/boohee/more/BooheeNoticeActivity$3;->this$0:Lcom/boohee/more/BooheeNoticeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 72
    iget-object v0, p0, Lcom/boohee/more/BooheeNoticeActivity$3;->this$0:Lcom/boohee/more/BooheeNoticeActivity;

    # setter for: Lcom/boohee/more/BooheeNoticeActivity;->isSportOpen:Z
    invoke-static {v0, p2}, Lcom/boohee/more/BooheeNoticeActivity;->access$202(Lcom/boohee/more/BooheeNoticeActivity;Z)Z

    .line 73
    return-void
.end method
