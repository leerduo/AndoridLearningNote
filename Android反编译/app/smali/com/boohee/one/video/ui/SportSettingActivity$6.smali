.class Lcom/boohee/one/video/ui/SportSettingActivity$6;
.super Ljava/lang/Object;
.source "SportSettingActivity.java"

# interfaces
.implements Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/video/ui/SportSettingActivity;
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
    .line 191
    iput-object p1, p0, Lcom/boohee/one/video/ui/SportSettingActivity$6;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;II)V
    .locals 5
    .param p1, "view"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 194
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity$6;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    iget-object v0, v0, Lcom/boohee/one/video/ui/SportSettingActivity;->tvTime:Landroid/widget/TextView;

    const-string v1, "\u6bcf\u5929%d\u70b9 %d\u5206"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity$6;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    # setter for: Lcom/boohee/one/video/ui/SportSettingActivity;->remindHour:I
    invoke-static {v0, p2}, Lcom/boohee/one/video/ui/SportSettingActivity;->access$302(Lcom/boohee/one/video/ui/SportSettingActivity;I)I

    .line 196
    iget-object v0, p0, Lcom/boohee/one/video/ui/SportSettingActivity$6;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    # setter for: Lcom/boohee/one/video/ui/SportSettingActivity;->remindMinute:I
    invoke-static {v0, p3}, Lcom/boohee/one/video/ui/SportSettingActivity;->access$402(Lcom/boohee/one/video/ui/SportSettingActivity;I)I

    .line 197
    return-void
.end method
