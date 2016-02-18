.class Lcom/boohee/food/AddCustomSportActivity$2;
.super Ljava/lang/Object;
.source "AddCustomSportActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/food/AddCustomSportActivity;->addListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/food/AddCustomSportActivity;


# direct methods
.method constructor <init>(Lcom/boohee/food/AddCustomSportActivity;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/boohee/food/AddCustomSportActivity$2;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 130
    iget-object v1, p0, Lcom/boohee/food/AddCustomSportActivity$2;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    # getter for: Lcom/boohee/food/AddCustomSportActivity;->activity:Lcom/boohee/one/ui/BaseActivity;
    invoke-static {v1}, Lcom/boohee/food/AddCustomSportActivity;->access$000(Lcom/boohee/food/AddCustomSportActivity;)Lcom/boohee/one/ui/BaseActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/boohee/utils/KeyBoardUtils;->closeAll(Landroid/content/Context;)V

    .line 131
    invoke-static {}, Lcom/boohee/widgets/CustomUnitPopupWindow;->getInstance()Lcom/boohee/widgets/CustomUnitPopupWindow;

    move-result-object v0

    .line 132
    .local v0, "popwindow":Lcom/boohee/widgets/CustomUnitPopupWindow;
    new-instance v1, Lcom/boohee/food/AddCustomSportActivity$2$1;

    invoke-direct {v1, p0}, Lcom/boohee/food/AddCustomSportActivity$2$1;-><init>(Lcom/boohee/food/AddCustomSportActivity$2;)V

    invoke-virtual {v0, v1}, Lcom/boohee/widgets/CustomUnitPopupWindow;->setOnChangeListener(Lcom/boohee/widgets/CustomUnitPopupWindow$OnChangeListener;)V

    .line 139
    iget-object v1, p0, Lcom/boohee/food/AddCustomSportActivity$2;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    # getter for: Lcom/boohee/food/AddCustomSportActivity;->ctx:Landroid/content/Context;
    invoke-static {v1}, Lcom/boohee/food/AddCustomSportActivity;->access$200(Lcom/boohee/food/AddCustomSportActivity;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/boohee/food/AddCustomSportActivity$2;->this$0:Lcom/boohee/food/AddCustomSportActivity;

    # getter for: Lcom/boohee/food/AddCustomSportActivity;->mUnitName:Ljava/lang/String;
    invoke-static {v2}, Lcom/boohee/food/AddCustomSportActivity;->access$100(Lcom/boohee/food/AddCustomSportActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/boohee/widgets/CustomUnitPopupWindow;->showPopWindow(Landroid/content/Context;Ljava/lang/String;)V

    .line 140
    return-void
.end method
