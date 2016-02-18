.class Lcom/boohee/one/ui/PeriodActivity$MCComingListener;
.super Ljava/lang/Object;
.source "PeriodActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/PeriodActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MCComingListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/PeriodActivity;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodActivity$MCComingListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/PeriodActivity$1;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodActivity$MCComingListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodActivity$MCComingListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodActivity;->access$200(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/myview/BooheePeroidDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/myview/BooheePeroidDialog;->dismiss()V

    .line 127
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 129
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity$MCComingListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    const-string v2, "start"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    # invokes: Lcom/boohee/one/ui/PeriodActivity;->recordMc(Ljava/lang/String;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V
    invoke-static {v1, v2, v0}, Lcom/boohee/one/ui/PeriodActivity;->access$300(Lcom/boohee/one/ui/PeriodActivity;Ljava/lang/String;Lcom/prolificinteractive/materialcalendarview/CalendarDay;)V

    goto :goto_0
.end method
