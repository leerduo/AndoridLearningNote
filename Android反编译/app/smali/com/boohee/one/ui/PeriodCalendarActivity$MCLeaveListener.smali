.class Lcom/boohee/one/ui/PeriodCalendarActivity$MCLeaveListener;
.super Ljava/lang/Object;
.source "PeriodCalendarActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/PeriodCalendarActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MCLeaveListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/PeriodCalendarActivity;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$MCLeaveListener;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/one/ui/PeriodCalendarActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/PeriodCalendarActivity$1;

    .prologue
    .line 217
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodCalendarActivity$MCLeaveListener;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$MCLeaveListener;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;
    invoke-static {v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$700(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/myview/NewPeroidDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/boohee/myview/NewPeroidDialog;->dismiss()V

    .line 222
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 224
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$MCLeaveListener;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    const-string v2, "end"

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    # invokes: Lcom/boohee/one/ui/PeriodCalendarActivity;->recordMc(Ljava/lang/String;Ljava/util/Date;)V
    invoke-static {v1, v2, v0}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$1200(Lcom/boohee/one/ui/PeriodCalendarActivity;Ljava/lang/String;Ljava/util/Date;)V

    goto :goto_0
.end method
