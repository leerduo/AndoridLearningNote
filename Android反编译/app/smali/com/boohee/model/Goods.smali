.class public Lcom/boohee/model/Goods;
.super Lcom/boohee/model/ModelBase;
.source "Goods.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/boohee/model/Goods$goods_state;,
        Lcom/boohee/model/Goods$goods_type;
    }
.end annotation


# instance fields
.field public a_photo_url:Ljava/lang/String;

.field public all_big_photo_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public all_thumb_photo_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public b_photo_url:Ljava/lang/String;

.field public base_price:Ljava/lang/String;

.field public big_photo_url:Ljava/lang/String;

.field public c_photo_url:Ljava/lang/String;

.field public can_sale:Z

.field public cart_id:I

.field public category_id:I

.field public category_name:Ljava/lang/String;

.field public chosen_specs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/FormatModel;",
            ">;"
        }
    .end annotation
.end field

.field public created_at:Ljava/lang/String;

.field public description:Ljava/lang/String;

.field public flag_url:Ljava/lang/String;

.field public flash_sale:Lcom/boohee/model/Promotion;

.field public goods_id:I

.field public isChecked:Ljava/lang/Boolean;

.field public market_price:Ljava/lang/String;

.field public month_quantity:I

.field public msg:Ljava/lang/String;

.field public need_carriage:Z

.field public option_goods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/CartGoods;",
            ">;"
        }
    .end annotation
.end field

.field public quantity:I

.field public share:Lcom/boohee/model/Share;

.field public slug:Ljava/lang/String;

.field public specs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/boohee/model/GoodsFormat;",
            ">;"
        }
    .end annotation
.end field

.field public square_photo_urls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public state:Ljava/lang/String;

.field public state_text:Ljava/lang/String;

.field public thumb_photo_url:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public unit_name:Ljava/lang/String;

.field public user_key:Ljava/lang/String;

.field public weight:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 5
    invoke-direct {p0}, Lcom/boohee/model/ModelBase;-><init>()V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/boohee/model/Goods;->isChecked:Ljava/lang/Boolean;

    .line 40
    iput v1, p0, Lcom/boohee/model/Goods;->quantity:I

    .line 51
    iput-boolean v1, p0, Lcom/boohee/model/Goods;->can_sale:Z

    return-void
.end method
