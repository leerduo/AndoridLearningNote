.class Lcom/boohee/one/onekey/CityListActivity$1;
.super Ljava/lang/Object;
.source "CityListActivity.java"

# interfaces
.implements Lcom/boohee/one/onekey/widget/sortlistview/SideBar$OnTouchingLetterChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/boohee/one/onekey/CityListActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/boohee/one/onekey/CityListActivity;


# direct methods
.method constructor <init>(Lcom/boohee/one/onekey/CityListActivity;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/boohee/one/onekey/CityListActivity$1;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouchingLetterChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 116
    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity$1;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;
    invoke-static {v1}, Lcom/boohee/one/onekey/CityListActivity;->access$000(Lcom/boohee/one/onekey/CityListActivity;)Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    move-result-object v1

    if-nez v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity$1;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    # getter for: Lcom/boohee/one/onekey/CityListActivity;->mSortAdapter:Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;
    invoke-static {v1}, Lcom/boohee/one/onekey/CityListActivity;->access$000(Lcom/boohee/one/onekey/CityListActivity;)Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Lcom/boohee/one/onekey/widget/sortlistview/SortAdapter;->getPositionForSection(I)I

    move-result v0

    .line 118
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 119
    iget-object v1, p0, Lcom/boohee/one/onekey/CityListActivity$1;->this$0:Lcom/boohee/one/onekey/CityListActivity;

    iget-object v1, v1, Lcom/boohee/one/onekey/CityListActivity;->lv_city:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_0
.end method
