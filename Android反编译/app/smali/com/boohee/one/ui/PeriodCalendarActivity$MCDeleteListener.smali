.class Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;
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
    name = "MCDeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/PeriodCalendarActivity;)V
    .locals 0

    .prologue
    .line 251
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/PeriodCalendarActivity;Lcom/boohee/one/ui/PeriodCalendarActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/PeriodCalendarActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/PeriodCalendarActivity$1;

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 254
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    # getter for: Lcom/boohee/one/ui/PeriodCalendarActivity;->dialog:Lcom/boohee/myview/NewPeroidDialog;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodCalendarActivity;->access$700(Lcom/boohee/one/ui/PeriodCalendarActivity;)Lcom/boohee/myview/NewPeroidDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/myview/NewPeroidDialog;->dismiss()V

    .line 255
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 266
    :goto_0
    return-void

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 257
    .local v0, "day":Ljava/util/Date;
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/PeriodCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-static {v0}, Lcom/boohee/utils/DateHelper;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener$1;

    iget-object v4, p0, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;->this$0:Lcom/boohee/one/ui/PeriodCalendarActivity;

    iget-object v4, v4, Lcom/boohee/one/ui/PeriodCalendarActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener$1;-><init>(Lcom/boohee/one/ui/PeriodCalendarActivity$MCDeleteListener;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, Lcom/boohee/api/RecordApi;->deleteMcRecords(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method
