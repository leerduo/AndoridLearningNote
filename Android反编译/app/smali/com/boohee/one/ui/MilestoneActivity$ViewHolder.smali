.class Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;
.super Ljava/lang/Object;
.source "MilestoneActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/boohee/one/ui/MilestoneActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public lockText:Landroid/widget/TextView;

.field public subtitle:Landroid/widget/TextView;

.field public title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    const v0, 0x7f0e008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;->title:Landroid/widget/TextView;

    .line 158
    const v0, 0x7f0e0478

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;->subtitle:Landroid/widget/TextView;

    .line 159
    const v0, 0x7f0e0479

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/boohee/one/ui/MilestoneActivity$ViewHolder;->lockText:Landroid/widget/TextView;

    .line 160
    return-void
.end method
