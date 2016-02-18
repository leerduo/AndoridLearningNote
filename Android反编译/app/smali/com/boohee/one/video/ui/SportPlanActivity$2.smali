.class Lcom/boohee/one/video/ui/SportPlanActivity$2;
.super Ljava/lang/Object;
.source "SportPlanActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/video/ui/SportPlanActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/video/ui/SportPlanActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/video/ui/SportPlanActivity;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lcom/boohee/one/video/ui/SportPlanActivity$2;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    :try_start_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/boohee/one/video/entity/Plan;

    .line 144
    .local v1, "section":Lcom/boohee/one/video/entity/Plan;
    iget-object v2, p0, Lcom/boohee/one/video/ui/SportPlanActivity$2;->this$0:Lcom/boohee/one/video/ui/SportPlanActivity;

    iget v3, v1, Lcom/boohee/one/video/entity/Plan;->id:I

    invoke-static {v2, v3}, Lcom/boohee/one/video/ui/LessonDetailActivity;->comeOn(Landroid/content/Context;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    .end local v1    # "section":Lcom/boohee/one/video/entity/Plan;
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
