.class Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;
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
    name = "MCDeleteListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/ui/PeriodActivity;


# direct methods
.method private constructor <init>(Lcom/boohee/one/ui/PeriodActivity;)V
    .locals 0

    .prologue
    .line 190
    iput-object p1, p0, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/boohee/one/ui/PeriodActivity;Lcom/boohee/one/ui/PeriodActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/boohee/one/ui/PeriodActivity;
    .param p2, "x1"    # Lcom/boohee/one/ui/PeriodActivity$1;

    .prologue
    .line 190
    invoke-direct {p0, p1}, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;-><init>(Lcom/boohee/one/ui/PeriodActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 193
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    # getter for: Lcom/boohee/one/ui/PeriodActivity;->dialog:Lcom/boohee/myview/BooheePeroidDialog;
    invoke-static {v1}, Lcom/boohee/one/ui/PeriodActivity;->access$200(Lcom/boohee/one/ui/PeriodActivity;)Lcom/boohee/myview/BooheePeroidDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/boohee/myview/BooheePeroidDialog;->dismiss()V

    .line 194
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 206
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/prolificinteractive/materialcalendarview/CalendarDay;

    .line 196
    .local v0, "day":Lcom/prolificinteractive/materialcalendarview/CalendarDay;
    iget-object v1, p0, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    iget-object v1, v1, Lcom/boohee/one/ui/PeriodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getYear()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getMonth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/prolificinteractive/materialcalendarview/CalendarDay;->getDay()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener$1;

    iget-object v4, p0, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;->this$0:Lcom/boohee/one/ui/PeriodActivity;

    iget-object v4, v4, Lcom/boohee/one/ui/PeriodActivity;->activity:Lcom/boohee/one/ui/BaseActivity;

    invoke-direct {v3, p0, v4}, Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener$1;-><init>(Lcom/boohee/one/ui/PeriodActivity$MCDeleteListener;Landroid/content/Context;)V

    invoke-static {v1, v2, v3}, Lcom/boohee/api/RecordApi;->deleteMcRecords(Landroid/content/Context;Ljava/lang/String;Lcom/boohee/one/http/JsonCallback;)V

    goto :goto_0
.end method
