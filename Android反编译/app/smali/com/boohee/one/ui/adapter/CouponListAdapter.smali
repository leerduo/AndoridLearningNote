.class public Lcom/boohee/one/ui/adapter/CouponListAdapter;
.super Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;
.source "CouponListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
        "<",
        "Lcom/boohee/model/Coupon;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/Coupon;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "data":Ljava/util/List;, "Ljava/util/List<Lcom/boohee/model/Coupon;>;"
    invoke-direct {p0, p1, p2}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 34
    return-void
.end method


# virtual methods
.method public getItemResource()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f030129

    return v0
.end method

.method public getItemView(ILandroid/view/View;Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter",
            "<",
            "Lcom/boohee/model/Coupon;",
            ">.ViewHolder;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "holder":Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;, "Lcom/boohee/one/ui/adapter/SimpleBaseAdapter<Lcom/boohee/model/Coupon;>.ViewHolder;"
    const v6, 0x7f0e03d2

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 44
    .local v1, "couponName":Landroid/widget/TextView;
    const v6, 0x7f0e03d5

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 45
    .local v4, "money":Landroid/widget/TextView;
    const v6, 0x7f0e03d4

    invoke-virtual {p3, v6}, Lcom/boohee/one/ui/adapter/SimpleBaseAdapter$ViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 46
    .local v2, "deadLine":Landroid/widget/TextView;
    iget-object v6, p0, Lcom/boohee/one/ui/adapter/CouponListAdapter;->data:Ljava/util/List;

    invoke-interface {v6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/boohee/model/Coupon;

    .line 47
    .local v0, "coupon":Lcom/boohee/model/Coupon;
    iget-object v6, v0, Lcom/boohee/model/Coupon;->title:Ljava/lang/String;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    iget-object v6, v0, Lcom/boohee/model/Coupon;->amount:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    iget-object v6, v0, Lcom/boohee/model/Coupon;->started_at:Ljava/lang/String;

    const-string v7, "yyyy-MM-dd"

    invoke-static {v6, v7}, Lcom/boohee/utils/DateHelper;->formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "startTime":Ljava/lang/String;
    iget-object v6, v0, Lcom/boohee/model/Coupon;->expired_at:Ljava/lang/String;

    const-string v7, "yyyy-MM-dd"

    invoke-static {v6, v7}, Lcom/boohee/utils/DateHelper;->formatString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 51
    .local v3, "endTime":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " \u81f3 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    return-object p2
.end method
