.class Lcom/boohee/one/video/ui/SportSettingActivity$1;
.super Ljava/lang/Object;
.source "SportSettingActivity.java"

# interfaces
.implements Lcom/boohee/widgets/AnimCheckBox$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SportSettingActivity;->initView()V
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
    .line 67
    iput-object p1, p0, Lcom/boohee/one/video/ui/SportSettingActivity$1;->this$0:Lcom/boohee/one/video/ui/SportSettingActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0
    .param p1, "checked"    # Z

    .prologue
    .line 70
    invoke-static {p1}, Lcom/boohee/database/OnePreference;->setPrefSoprtRemind(Z)V

    .line 71
    return-void
.end method
